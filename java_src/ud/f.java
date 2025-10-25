package ud;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import xc.l;
import xc.m;
/* loaded from: classes2.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    public static final e f31096a;
    private static volatile Choreographer choreographer;

    static {
        Object b10;
        e eVar = null;
        try {
            l.a aVar = l.f32718b;
            b10 = l.b(new d(a(Looper.getMainLooper(), true), null, 2, null));
        } catch (Throwable th) {
            l.a aVar2 = l.f32718b;
            b10 = l.b(m.a(th));
        }
        if (!l.f(b10)) {
            eVar = b10;
        }
        f31096a = eVar;
    }

    public static final Handler a(Looper looper, boolean z10) {
        if (z10) {
            if (Build.VERSION.SDK_INT >= 28) {
                Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
                kotlin.jvm.internal.m.c(invoke, "null cannot be cast to non-null type android.os.Handler");
                return (Handler) invoke;
            }
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
                return new Handler(looper);
            }
        }
        return new Handler(looper);
    }
}
