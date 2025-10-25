package yd;

import java.util.Collection;
import java.util.List;
import java.util.ServiceLoader;
/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private static final Collection f33252a;

    static {
        qd.e b10;
        List l10;
        b10 = qd.j.b(ServiceLoader.load(td.j0.class, td.j0.class.getClassLoader()).iterator());
        l10 = qd.l.l(b10);
        f33252a = l10;
    }

    public static final Collection a() {
        return f33252a;
    }

    public static final void b(Throwable th) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
    }
}
