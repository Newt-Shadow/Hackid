package io.appmetrica.analytics.coreutils.internal.io;

import android.annotation.SuppressLint;
import android.content.Context;
import gd.k;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import java.io.File;
import xc.t;
/* loaded from: classes2.dex */
public final class FileUtils {
    public static final FileUtils INSTANCE = new FileUtils();
    public static final String SDK_FILES_PREFIX = "appmetrica_analytics";
    public static final String SDK_STORAGE_RELATIVE_PATH = "/appmetrica/analytics";

    /* renamed from: a  reason: collision with root package name */
    private static volatile File f17729a;

    private FileUtils() {
    }

    public static final boolean copyToNullable(File file, File file2) {
        if (file != null && file2 != null && file.exists()) {
            try {
                k.l(file, file2, false, 0, 6, null);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @SuppressLint({"NewApi"})
    public static final File getAppDataDir(Context context) {
        if (AndroidUtils.isApiAchieved(24)) {
            return AppDataDirProviderForN.INSTANCE.dataDir(context);
        }
        File filesDir = context.getFilesDir();
        if (filesDir != null) {
            return filesDir.getParentFile();
        }
        return null;
    }

    public static final File getAppStorageDirectory(Context context) {
        return context.getNoBackupFilesDir();
    }

    public static final File getCrashesDirectory(Context context) {
        return getFileFromSdkStorage(context, "crashes");
    }

    public static final File getFileFromAppStorage(Context context, String str) {
        File appStorageDirectory = getAppStorageDirectory(context);
        if (appStorageDirectory != null) {
            return new File(appStorageDirectory, str);
        }
        return null;
    }

    public static final File getFileFromPath(String str) {
        return new File(str);
    }

    public static final File getFileFromSdkStorage(Context context, String str) {
        File sdkStorage = sdkStorage(context);
        if (sdkStorage != null) {
            return new File(sdkStorage, str);
        }
        return null;
    }

    public static final File getNativeCrashDirectory(Context context) {
        return getFileFromSdkStorage(context, "native_crashes");
    }

    public static final boolean move(File file, File file2) {
        FileUtils fileUtils = INSTANCE;
        if (!fileUtils.moveByRename(file, file2) && !fileUtils.moveByCopy(file, file2)) {
            return false;
        }
        return true;
    }

    public static final void resetSdkStorage() {
        synchronized (INSTANCE) {
            f17729a = null;
            t tVar = t.f32733a;
        }
    }

    public static final File sdkStorage(Context context) {
        File file;
        if (f17729a == null) {
            synchronized (INSTANCE) {
                File appStorageDirectory = getAppStorageDirectory(context);
                if (appStorageDirectory == null) {
                    file = null;
                } else {
                    File file2 = new File(appStorageDirectory, SDK_STORAGE_RELATIVE_PATH);
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    file = file2;
                }
                f17729a = file;
                t tVar = t.f32733a;
            }
        }
        return f17729a;
    }

    public final boolean moveByCopy(File file, File file2) {
        if (file != null && file2 != null && file.exists()) {
            try {
                k.l(file, file2, false, 0, 6, null);
                file.delete();
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public final boolean moveByRename(File file, File file2) {
        Boolean bool;
        if (file2 != null) {
            if (file != null) {
                bool = Boolean.valueOf(file.renameTo(file2));
            } else {
                bool = null;
            }
            if (bool != null) {
                return bool.booleanValue();
            }
        }
        return false;
    }
}
