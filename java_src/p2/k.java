package p2;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class k implements r2.b {

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final k f27771a = new k();
    }

    public static k a() {
        return a.f27771a;
    }

    public static Executor b() {
        return (Executor) r2.d.d(j.a());
    }

    @Override // wc.a
    /* renamed from: c */
    public Executor get() {
        return b();
    }
}
