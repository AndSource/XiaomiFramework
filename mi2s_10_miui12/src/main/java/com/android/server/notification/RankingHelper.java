package com.android.server.notification;

import android.content.Context;
import android.util.ArrayMap;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.server.notification.NotificationManagerService;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;

public class RankingHelper {
    private static final String TAG = "RankingHelper";
    private final Context mContext;
    private final GlobalSortKeyComparator mFinalComparator = new GlobalSortKeyComparator();
    private final NotificationComparator mPreliminaryComparator;
    private final ArrayMap<String, NotificationRecord> mProxyByGroupTmp = new ArrayMap<>();
    private final RankingHandler mRankingHandler;
    private final NotificationSignalExtractor[] mSignalExtractors;

    public RankingHelper(Context context, RankingHandler rankingHandler, RankingConfig config, ZenModeHelper zenHelper, NotificationUsageStats usageStats, String[] extractorNames) {
        this.mContext = context;
        this.mRankingHandler = rankingHandler;
        this.mPreliminaryComparator = new NotificationComparator(this.mContext);
        int N = extractorNames.length;
        this.mSignalExtractors = new NotificationSignalExtractor[N];
        for (int i = 0; i < N; i++) {
            try {
                NotificationSignalExtractor extractor = (NotificationSignalExtractor) this.mContext.getClassLoader().loadClass(extractorNames[i]).newInstance();
                extractor.initialize(this.mContext, usageStats);
                extractor.setConfig(config);
                extractor.setZenHelper(zenHelper);
                this.mSignalExtractors[i] = extractor;
            } catch (ClassNotFoundException e) {
                Slog.w(TAG, "Couldn't find extractor " + extractorNames[i] + ".", e);
            } catch (InstantiationException e2) {
                Slog.w(TAG, "Couldn't instantiate extractor " + extractorNames[i] + ".", e2);
            } catch (IllegalAccessException e3) {
                Slog.w(TAG, "Problem accessing extractor " + extractorNames[i] + ".", e3);
            }
        }
    }

    public <T extends NotificationSignalExtractor> T findExtractor(Class<T> extractorClass) {
        for (NotificationSignalExtractor extractor : this.mSignalExtractors) {
            if (extractorClass.equals(extractor.getClass())) {
                return extractor;
            }
        }
        return null;
    }

    public void extractSignals(NotificationRecord r) {
        for (NotificationSignalExtractor extractor : this.mSignalExtractors) {
            try {
                RankingReconsideration recon = extractor.process(r);
                if (recon != null) {
                    this.mRankingHandler.requestReconsideration(recon);
                }
            } catch (Throwable t) {
                Slog.w(TAG, "NotificationSignalExtractor failed.", t);
            }
        }
    }

    public void sort(ArrayList<NotificationRecord> notificationList) {
        String groupSortKeyPortion;
        int N = notificationList.size();
        for (int i = N - 1; i >= 0; i--) {
            notificationList.get(i).setGlobalSortKey((String) null);
        }
        Collections.sort(notificationList, this.mPreliminaryComparator);
        synchronized (this.mProxyByGroupTmp) {
            int i2 = 0;
            while (i2 < N) {
                try {
                    NotificationRecord record = notificationList.get(i2);
                    record.setAuthoritativeRank(i2);
                    String groupKey = record.getGroupKey();
                    if (this.mProxyByGroupTmp.get(groupKey) == null) {
                        this.mProxyByGroupTmp.put(groupKey, record);
                    }
                    i2++;
                } catch (Throwable th) {
                    while (true) {
                        throw th;
                    }
                }
            }
            for (int i3 = 0; i3 < N; i3++) {
                NotificationRecord record2 = notificationList.get(i3);
                NotificationRecord groupProxy = this.mProxyByGroupTmp.get(record2.getGroupKey());
                String groupSortKey = record2.getNotification().getSortKey();
                if (groupSortKey == null) {
                    groupSortKeyPortion = "nsk";
                } else if (groupSortKey.equals("")) {
                    groupSortKeyPortion = "esk";
                } else {
                    groupSortKeyPortion = "gsk=" + groupSortKey;
                }
                boolean isGroupSummary = record2.getNotification().isGroupSummary();
                Object[] objArr = new Object[6];
                objArr[0] = Integer.valueOf(record2.getCriticality());
                char c = '0';
                objArr[1] = Character.valueOf((!record2.isRecentlyIntrusive() || record2.getImportance() <= 1) ? '1' : '0');
                objArr[2] = Integer.valueOf(groupProxy.getAuthoritativeRank());
                if (!isGroupSummary) {
                    c = '1';
                }
                objArr[3] = Character.valueOf(c);
                objArr[4] = groupSortKeyPortion;
                objArr[5] = Integer.valueOf(record2.getAuthoritativeRank());
                record2.setGlobalSortKey(String.format("crtcl=0x%04x:intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x", objArr));
            }
            this.mProxyByGroupTmp.clear();
        }
        Collections.sort(notificationList, this.mFinalComparator);
    }

    public int indexOf(ArrayList<NotificationRecord> notificationList, NotificationRecord target) {
        return Collections.binarySearch(notificationList, target, this.mFinalComparator);
    }

    public void dump(PrintWriter pw, String prefix, NotificationManagerService.DumpFilter filter) {
        pw.print(prefix);
        pw.print("mSignalExtractors.length = ");
        pw.println(N);
        for (NotificationSignalExtractor notificationSignalExtractor : this.mSignalExtractors) {
            pw.print(prefix);
            pw.print("  ");
            pw.println(notificationSignalExtractor.getClass().getSimpleName());
        }
    }

    public void dump(ProtoOutputStream proto, NotificationManagerService.DumpFilter filter) {
        for (NotificationSignalExtractor notificationSignalExtractor : this.mSignalExtractors) {
            proto.write(2237677961217L, notificationSignalExtractor.getClass().getSimpleName());
        }
    }
}
