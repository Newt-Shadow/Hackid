package f3;

import android.os.Looper;
import b3.x1;
import c3.t3;
import f3.n;
import f3.u;
import f3.v;
/* loaded from: classes.dex */
public interface v {

    /* renamed from: a  reason: collision with root package name */
    public static final v f15748a;

    /* renamed from: b  reason: collision with root package name */
    public static final v f15749b;

    /* loaded from: classes.dex */
    class a implements v {
        a() {
        }

        @Override // f3.v
        public int c(x1 x1Var) {
            if (x1Var.f4517o != null) {
                return 1;
            }
            return 0;
        }

        @Override // f3.v
        public void d(Looper looper, t3 t3Var) {
        }

        @Override // f3.v
        public n e(u.a aVar, x1 x1Var) {
            if (x1Var.f4517o == null) {
                return null;
            }
            return new a0(new n.a(new o0(1), 6001));
        }
    }

    /* loaded from: classes.dex */
    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f15750a = new b() { // from class: f3.w
            @Override // f3.v.b
            public final void release() {
                v.b.a();
            }
        };

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void a() {
        }

        void release();
    }

    static {
        a aVar = new a();
        f15748a = aVar;
        f15749b = aVar;
    }

    default b a(u.a aVar, x1 x1Var) {
        return b.f15750a;
    }

    default void b() {
    }

    int c(x1 x1Var);

    void d(Looper looper, t3 t3Var);

    n e(u.a aVar, x1 x1Var);

    default void release() {
    }
}
