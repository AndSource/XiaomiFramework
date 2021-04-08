package android.telephony.mbms;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.ParcelFileDescriptor;
import android.telephony.MbmsDownloadSession;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Objects;

public class MbmsTempFileProvider extends ContentProvider {
    public static final String TEMP_FILE_ROOT_PREF_FILE_NAME = "MbmsTempFileRootPrefs";
    public static final String TEMP_FILE_ROOT_PREF_NAME = "mbms_temp_file_root";
    private String mAuthority;
    private Context mContext;

    public boolean onCreate() {
        return true;
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        throw new UnsupportedOperationException("No querying supported");
    }

    public String getType(Uri uri) {
        return ContentResolver.MIME_TYPE_DEFAULT;
    }

    public Uri insert(Uri uri, ContentValues values) {
        throw new UnsupportedOperationException("No inserting supported");
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        throw new UnsupportedOperationException("No deleting supported");
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        throw new UnsupportedOperationException("No updating supported");
    }

    public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        return ParcelFileDescriptor.open(getFileForUri(this.mContext, this.mAuthority, uri), ParcelFileDescriptor.parseMode(mode));
    }

    public void attachInfo(Context context, ProviderInfo info) {
        super.attachInfo(context, info);
        if (info.exported) {
            throw new SecurityException("Provider must not be exported");
        } else if (info.grantUriPermissions) {
            this.mAuthority = info.authority;
            this.mContext = context;
        } else {
            throw new SecurityException("Provider must grant uri permissions");
        }
    }

    public static Uri getUriForFile(Context context, String authority, File file) {
        try {
            String filePath = file.getCanonicalPath();
            File tempFileDir = getEmbmsTempFileDir(context);
            if (MbmsUtils.isContainedIn(tempFileDir, file)) {
                try {
                    String pathFragment;
                    String tempFileDirPath = tempFileDir.getCanonicalPath();
                    if (tempFileDirPath.endsWith("/")) {
                        pathFragment = filePath.substring(tempFileDirPath.length());
                    } else {
                        pathFragment = filePath.substring(tempFileDirPath.length() + 1);
                    }
                    return new Builder().scheme("content").authority(authority).encodedPath(Uri.encode(pathFragment)).build();
                } catch (IOException e) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Could not get canonical path for temp file root dir ");
                    stringBuilder.append(tempFileDir);
                    throw new RuntimeException(stringBuilder.toString());
                }
            }
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("File ");
            stringBuilder2.append(file);
            stringBuilder2.append(" is not contained in the temp file directory, which is ");
            stringBuilder2.append(tempFileDir);
            throw new IllegalArgumentException(stringBuilder2.toString());
        } catch (IOException e2) {
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append("Could not get canonical path for file ");
            stringBuilder3.append(file);
            throw new IllegalArgumentException(stringBuilder3.toString());
        }
    }

    public static File getFileForUri(Context context, String authority, Uri uri) throws FileNotFoundException {
        if (!"content".equals(uri.getScheme())) {
            throw new IllegalArgumentException("Uri must have scheme content");
        } else if (Objects.equals(authority, uri.getAuthority())) {
            String relPath = Uri.decode(uri.getEncodedPath());
            try {
                File tempFileDir = getEmbmsTempFileDir(context).getCanonicalFile();
                File file = new File(tempFileDir, relPath).getCanonicalFile();
                if (file.getPath().startsWith(tempFileDir.getPath())) {
                    return file;
                }
                throw new SecurityException("Resolved path jumped beyond configured root");
            } catch (IOException e) {
                throw new FileNotFoundException("Could not resolve paths");
            }
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Uri does not have a matching authority: ");
            stringBuilder.append(authority);
            stringBuilder.append(", ");
            stringBuilder.append(uri.getAuthority());
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public static File getEmbmsTempFileDir(Context context) {
        String storedTempFileRoot = context.getSharedPreferences(TEMP_FILE_ROOT_PREF_FILE_NAME, 0).getString(TEMP_FILE_ROOT_PREF_NAME, null);
        if (storedTempFileRoot == null) {
            return new File(context.getFilesDir(), MbmsDownloadSession.DEFAULT_TOP_LEVEL_TEMP_DIRECTORY).getCanonicalFile();
        }
        try {
            return new File(storedTempFileRoot).getCanonicalFile();
        } catch (IOException e) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Unable to canonicalize temp file root path ");
            stringBuilder.append(e);
            throw new RuntimeException(stringBuilder.toString());
        }
    }
}
