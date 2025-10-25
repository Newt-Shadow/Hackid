package o1;

import androidx.webkit.internal.v0;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public abstract class e {

    /* loaded from: classes.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        static final e f26929a = new v0();
    }

    public static e b() {
        if (t.a("PROXY_OVERRIDE")) {
            return a.f26929a;
        }
        throw new UnsupportedOperationException("Proxy override not supported");
    }

    public abstract void a(Executor executor, Runnable runnable);

    public abstract void c(d dVar, Executor executor, Runnable runnable);
}
