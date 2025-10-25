package n5;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f26322a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static int f26323b = 9;

    /* renamed from: c  reason: collision with root package name */
    private static r1 f26324c = null;

    /* renamed from: d  reason: collision with root package name */
    static HandlerThread f26325d = null;

    /* renamed from: e  reason: collision with root package name */
    private static Executor f26326e = null;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f26327f = false;

    public static i b(Context context) {
        Looper mainLooper;
        synchronized (f26322a) {
            if (f26324c == null) {
                Context applicationContext = context.getApplicationContext();
                if (f26327f) {
                    mainLooper = c().getLooper();
                } else {
                    mainLooper = context.getMainLooper();
                }
                f26324c = new r1(applicationContext, mainLooper, f26326e);
            }
        }
        return f26324c;
    }

    public static HandlerThread c() {
        synchronized (f26322a) {
            HandlerThread handlerThread = f26325d;
            if (handlerThread != null) {
                return handlerThread;
            }
            HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", f26323b);
            f26325d = handlerThread2;
            handlerThread2.start();
            return f26325d;
        }
    }

    public boolean a(ComponentName componentName, ServiceConnection serviceConnection, String str, Executor executor) {
        return e(new n1(componentName, 4225), serviceConnection, str, executor).n();
    }

    public void d(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        f(new n1(componentName, 4225), serviceConnection, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract l5.b e(n1 n1Var, ServiceConnection serviceConnection, String str, Executor executor);

    protected abstract void f(n1 n1Var, ServiceConnection serviceConnection, String str);

    public final void g(String str, String str2, int i10, ServiceConnection serviceConnection, String str3, boolean z10) {
        f(new n1(str, str2, 4225, z10), serviceConnection, str3);
    }
}
