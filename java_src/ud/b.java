package ud;

import ad.i;
import android.os.Build;
import java.lang.Thread;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import td.j0;
/* loaded from: classes2.dex */
public final class b extends ad.a implements j0 {
    private volatile Object _preHandler;

    public b() {
        super(j0.f30656s0);
        this._preHandler = this;
    }

    private final Method q0() {
        Object obj = this._preHandler;
        if (obj != this) {
            return (Method) obj;
        }
        Method method = null;
        try {
            boolean z10 = false;
            Method declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", new Class[0]);
            if (Modifier.isPublic(declaredMethod.getModifiers())) {
                if (Modifier.isStatic(declaredMethod.getModifiers())) {
                    z10 = true;
                }
            }
            if (z10) {
                method = declaredMethod;
            }
        } catch (Throwable unused) {
        }
        this._preHandler = method;
        return method;
    }

    @Override // td.j0
    public void k0(i iVar, Throwable th) {
        boolean z10;
        Object obj;
        int i10 = Build.VERSION.SDK_INT;
        if (26 <= i10 && i10 < 28) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            Method q02 = q0();
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = null;
            if (q02 != null) {
                obj = q02.invoke(null, new Object[0]);
            } else {
                obj = null;
            }
            if (obj instanceof Thread.UncaughtExceptionHandler) {
                uncaughtExceptionHandler = (Thread.UncaughtExceptionHandler) obj;
            }
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
            }
        }
    }
}
