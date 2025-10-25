package f3;

import f3.u;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public interface n {

    /* loaded from: classes.dex */
    public static class a extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f15723a;

        public a(Throwable th, int i10) {
            super(th);
            this.f15723a = i10;
        }
    }

    static void d(n nVar, n nVar2) {
        if (nVar == nVar2) {
            return;
        }
        if (nVar2 != null) {
            nVar2.a(null);
        }
        if (nVar != null) {
            nVar.f(null);
        }
    }

    void a(u.a aVar);

    UUID b();

    boolean c();

    Map e();

    void f(u.a aVar);

    boolean g(String str);

    int getState();

    a h();

    e3.b i();
}
