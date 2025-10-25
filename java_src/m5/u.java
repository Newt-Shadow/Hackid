package m5;

import com.google.android.gms.common.api.a;
/* loaded from: classes.dex */
public abstract class u {

    /* renamed from: a  reason: collision with root package name */
    private final l5.d[] f25884a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f25885b;

    /* renamed from: c  reason: collision with root package name */
    private final int f25886c;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private q f25887a;

        /* renamed from: c  reason: collision with root package name */
        private l5.d[] f25889c;

        /* renamed from: b  reason: collision with root package name */
        private boolean f25888b = true;

        /* renamed from: d  reason: collision with root package name */
        private int f25890d = 0;

        /* synthetic */ a(g1 g1Var) {
        }

        public u a() {
            boolean z10;
            if (this.f25887a != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            n5.q.b(z10, "execute parameter required");
            return new f1(this, this.f25889c, this.f25888b, this.f25890d);
        }

        public a b(q qVar) {
            this.f25887a = qVar;
            return this;
        }

        public a c(boolean z10) {
            this.f25888b = z10;
            return this;
        }

        public a d(l5.d... dVarArr) {
            this.f25889c = dVarArr;
            return this;
        }

        public a e(int i10) {
            this.f25890d = i10;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public u(l5.d[] dVarArr, boolean z10, int i10) {
        this.f25884a = dVarArr;
        boolean z11 = false;
        if (dVarArr != null && z10) {
            z11 = true;
        }
        this.f25885b = z11;
        this.f25886c = i10;
    }

    public static a a() {
        return new a(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void b(a.b bVar, m6.l lVar);

    public boolean c() {
        return this.f25885b;
    }

    public final int d() {
        return this.f25886c;
    }

    public final l5.d[] e() {
        return this.f25884a;
    }
}
