package androidx.webkit;

import android.content.Context;
import androidx.webkit.internal.c0;
import androidx.webkit.internal.l1;
import java.io.File;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;
import o1.c;
import org.chromium.support_lib_boundary.ProcessGlobalConfigConstants;
/* loaded from: classes.dex */
public class ProcessGlobalConfig {

    /* renamed from: a  reason: collision with root package name */
    String f3539a;

    /* renamed from: b  reason: collision with root package name */
    String f3540b;

    /* renamed from: c  reason: collision with root package name */
    String f3541c;
    private static final AtomicReference<HashMap<String, Object>> sProcessGlobalConfig = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private static final Object f3537d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f3538e = false;

    public static void a(ProcessGlobalConfig processGlobalConfig) {
        synchronized (f3537d) {
            if (!f3538e) {
                f3538e = true;
            } else {
                throw new IllegalStateException("ProcessGlobalConfig#apply was called more than once, which is an illegal operation. The configuration settings provided by ProcessGlobalConfig take effect only once, when WebView is first loaded into the current process. Every process should only ever create a single instance of ProcessGlobalConfig and apply it once, before any calls to android.webkit APIs, such as during early app startup.");
            }
        }
        HashMap hashMap = new HashMap();
        if (!d()) {
            if (processGlobalConfig.f3539a != null) {
                if (l1.M.e()) {
                    c0.e(processGlobalConfig.f3539a);
                } else {
                    hashMap.put(ProcessGlobalConfigConstants.DATA_DIRECTORY_SUFFIX, processGlobalConfig.f3539a);
                }
            }
            String str = processGlobalConfig.f3540b;
            if (str != null) {
                hashMap.put(ProcessGlobalConfigConstants.DATA_DIRECTORY_BASE_PATH, str);
            }
            String str2 = processGlobalConfig.f3541c;
            if (str2 != null) {
                hashMap.put(ProcessGlobalConfigConstants.CACHE_DIRECTORY_BASE_PATH, str2);
            }
            if (c.a(sProcessGlobalConfig, null, hashMap)) {
                return;
            }
            throw new RuntimeException("Attempting to set ProcessGlobalConfig#sProcessGlobalConfig when it was already set");
        }
        throw new IllegalStateException("WebView has already been loaded in the current process, so any attempt to apply the settings in ProcessGlobalConfig will have no effect. ProcessGlobalConfig#apply needs to be called before any calls to android.webkit APIs, such as during early app startup.");
    }

    private static boolean d() {
        try {
            Field declaredField = Class.forName("android.webkit.WebViewFactory").getDeclaredField("sProviderInstance");
            declaredField.setAccessible(true);
            if (declaredField.get(null) == null) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public ProcessGlobalConfig b(Context context, String str) {
        if (l1.M.d(context)) {
            if (!str.equals("")) {
                if (str.indexOf(File.separatorChar) < 0) {
                    this.f3539a = str;
                    return this;
                }
                throw new IllegalArgumentException("Suffix " + str + " contains a path separator");
            }
            throw new IllegalArgumentException("Suffix cannot be an empty string");
        }
        throw l1.a();
    }

    public ProcessGlobalConfig c(Context context, File file, File file2) {
        if (l1.N.d(context)) {
            if (file.isAbsolute()) {
                if (file2.isAbsolute()) {
                    this.f3540b = file.getAbsolutePath();
                    this.f3541c = file2.getAbsolutePath();
                    return this;
                }
                throw new IllegalArgumentException("cacheDirectoryBasePath must be a non-empty absolute path");
            }
            throw new IllegalArgumentException("dataDirectoryBasePath must be a non-empty absolute path");
        }
        throw l1.a();
    }
}
