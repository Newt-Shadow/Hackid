package w4;

import b3.g4;
import b3.x1;
import d4.s0;
import d4.t;
import java.util.List;
/* loaded from: classes.dex */
public interface y extends b0 {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final s0 f31928a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f31929b;

        /* renamed from: c  reason: collision with root package name */
        public final int f31930c;

        public a(s0 s0Var, int... iArr) {
            this(s0Var, iArr, 0);
        }

        public a(s0 s0Var, int[] iArr, int i10) {
            if (iArr.length == 0) {
                y4.r.d("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
            }
            this.f31928a = s0Var;
            this.f31929b = iArr;
            this.f31930c = i10;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        y[] a(a[] aVarArr, x4.e eVar, t.b bVar, g4 g4Var);
    }

    int b();

    boolean c(int i10, long j10);

    boolean d(int i10, long j10);

    void e();

    default void f(boolean z10) {
    }

    void g(long j10, long j11, long j12, List list, f4.o[] oVarArr);

    void i();

    int k(long j10, List list);

    int l();

    x1 n();

    int o();

    void p(float f10);

    Object q();

    default void r() {
    }

    default boolean s(long j10, f4.f fVar, List list) {
        return false;
    }

    default void t() {
    }
}
