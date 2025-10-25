package t5;

import android.content.Context;
import com.google.android.gms.common.util.k;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static Context f29932a;

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f29933b;

    public static synchronized boolean a(Context context) {
        boolean isInstantApp;
        Boolean bool;
        synchronized (b.class) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = f29932a;
            if (context2 != null && (bool = f29933b) != null && context2 == applicationContext) {
                return bool.booleanValue();
            }
            f29933b = null;
            if (k.e()) {
                isInstantApp = applicationContext.getPackageManager().isInstantApp();
                f29933b = Boolean.valueOf(isInstantApp);
            } else {
                try {
                    context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                    f29933b = Boolean.TRUE;
                } catch (ClassNotFoundException unused) {
                    f29933b = Boolean.FALSE;
                }
            }
            f29932a = applicationContext;
            return f29933b.booleanValue();
        }
    }
}
