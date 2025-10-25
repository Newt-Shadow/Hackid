package m5;

import m5.j;
/* loaded from: classes.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    public final o f25848a;

    /* renamed from: b  reason: collision with root package name */
    public final w f25849b;

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f25850c;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private q f25851a;

        /* renamed from: b  reason: collision with root package name */
        private q f25852b;

        /* renamed from: d  reason: collision with root package name */
        private j f25854d;

        /* renamed from: e  reason: collision with root package name */
        private l5.d[] f25855e;

        /* renamed from: g  reason: collision with root package name */
        private int f25857g;

        /* renamed from: c  reason: collision with root package name */
        private Runnable f25853c = new Runnable() { // from class: m5.w0
            @Override // java.lang.Runnable
            public final void run() {
            }
        };

        /* renamed from: f  reason: collision with root package name */
        private boolean f25856f = true;

        /* synthetic */ a(z0 z0Var) {
        }

        public p a() {
            boolean z10;
            boolean z11;
            boolean z12 = true;
            if (this.f25851a != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            n5.q.b(z10, "Must set register function");
            if (this.f25852b != null) {
                z11 = true;
            } else {
                z11 = false;
            }
            n5.q.b(z11, "Must set unregister function");
            if (this.f25854d == null) {
                z12 = false;
            }
            n5.q.b(z12, "Must set holder");
            return new p(new x0(this, this.f25854d, this.f25855e, this.f25856f, this.f25857g), new y0(this, (j.a) n5.q.l(this.f25854d.b(), "Key must not be null")), this.f25853c, null);
        }

        public a b(q qVar) {
            this.f25851a = qVar;
            return this;
        }

        public a c(int i10) {
            this.f25857g = i10;
            return this;
        }

        public a d(q qVar) {
            this.f25852b = qVar;
            return this;
        }

        public a e(j jVar) {
            this.f25854d = jVar;
            return this;
        }
    }

    /* synthetic */ p(o oVar, w wVar, Runnable runnable, a1 a1Var) {
        this.f25848a = oVar;
        this.f25849b = wVar;
        this.f25850c = runnable;
    }

    public static a a() {
        return new a(null);
    }
}
