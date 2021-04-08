package com.android.internal.os;

import android.os.Process;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;

public class ChildZygoteInit {
    private static final String TAG = "ChildZygoteInit";

    static String parseSocketNameFromArgs(String[] argv) {
        for (String arg : argv) {
            String str = Zygote.CHILD_ZYGOTE_SOCKET_NAME_ARG;
            if (arg.startsWith(str)) {
                return arg.substring(str.length());
            }
        }
        return null;
    }

    static String parseAbiListFromArgs(String[] argv) {
        for (String arg : argv) {
            String str = Zygote.CHILD_ZYGOTE_ABI_LIST_ARG;
            if (arg.startsWith(str)) {
                return arg.substring(str.length());
            }
        }
        return null;
    }

    static int parseIntFromArg(String[] argv, String desiredArg) {
        int value = -1;
        for (String arg : argv) {
            if (arg.startsWith(desiredArg)) {
                String valueStr = arg.substring(arg.indexOf(61) + 1);
                try {
                    value = Integer.parseInt(valueStr);
                } catch (NumberFormatException e) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Invalid int argument: ");
                    stringBuilder.append(valueStr);
                    throw new IllegalArgumentException(stringBuilder.toString(), e);
                }
            }
        }
        return value;
    }

    static void runZygoteServer(ZygoteServer server, String[] args) {
        String socketName = parseSocketNameFromArgs(args);
        if (socketName != null) {
            String abiList = parseAbiListFromArgs(args);
            if (abiList != null) {
                try {
                    Os.prctl(OsConstants.PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0);
                    int uidGidMin = parseIntFromArg(args, Zygote.CHILD_ZYGOTE_UID_RANGE_START);
                    int uidGidMax = parseIntFromArg(args, Zygote.CHILD_ZYGOTE_UID_RANGE_END);
                    if (uidGidMin == -1 || uidGidMax == -1) {
                        throw new RuntimeException("Couldn't parse UID range start/end");
                    } else if (uidGidMin > uidGidMax) {
                        throw new RuntimeException("Passed in UID range is invalid, min > max.");
                    } else if (uidGidMin >= Process.FIRST_APP_ZYGOTE_ISOLATED_UID) {
                        Zygote.nativeInstallSeccompUidGidFilter(uidGidMin, uidGidMax);
                        try {
                            server.registerServerSocketAtAbstractName(socketName);
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append("ABSTRACT/");
                            stringBuilder.append(socketName);
                            Zygote.nativeAllowFileAcrossFork(stringBuilder.toString());
                            Runnable caller = server.runSelectLoop(abiList);
                            server.closeServerSocket();
                            if (caller != null) {
                                caller.run();
                                return;
                            }
                            return;
                        } catch (RuntimeException e) {
                            Log.e(TAG, "Fatal exception:", e);
                            throw e;
                        } catch (Throwable th) {
                            server.closeServerSocket();
                        }
                    } else {
                        throw new RuntimeException("Passed in UID range does not map to isolated processes.");
                    }
                } catch (ErrnoException ex) {
                    throw new RuntimeException("Failed to set PR_SET_NO_NEW_PRIVS", ex);
                }
            }
            throw new NullPointerException("No abiList specified");
        }
        throw new NullPointerException("No socketName specified");
    }
}
