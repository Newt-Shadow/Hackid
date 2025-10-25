package b3;

import android.content.Context;
import android.os.Looper;
import b3.b0;
import b3.t;
import d4.t;
/* loaded from: classes.dex */
public interface b0 extends m3 {

    /* loaded from: classes.dex */
    public interface a {
        default void A(boolean z10) {
        }

        void v(boolean z10);
    }

    /* loaded from: classes.dex */
    public static final class b {
        Looper A;
        boolean B;

        /* renamed from: a  reason: collision with root package name */
        final Context f3788a;

        /* renamed from: b  reason: collision with root package name */
        y4.d f3789b;

        /* renamed from: c  reason: collision with root package name */
        long f3790c;

        /* renamed from: d  reason: collision with root package name */
        n6.s f3791d;

        /* renamed from: e  reason: collision with root package name */
        n6.s f3792e;

        /* renamed from: f  reason: collision with root package name */
        n6.s f3793f;

        /* renamed from: g  reason: collision with root package name */
        n6.s f3794g;

        /* renamed from: h  reason: collision with root package name */
        n6.s f3795h;

        /* renamed from: i  reason: collision with root package name */
        n6.g f3796i;

        /* renamed from: j  reason: collision with root package name */
        Looper f3797j;

        /* renamed from: k  reason: collision with root package name */
        d3.e f3798k;

        /* renamed from: l  reason: collision with root package name */
        boolean f3799l;

        /* renamed from: m  reason: collision with root package name */
        int f3800m;

        /* renamed from: n  reason: collision with root package name */
        boolean f3801n;

        /* renamed from: o  reason: collision with root package name */
        boolean f3802o;

        /* renamed from: p  reason: collision with root package name */
        int f3803p;

        /* renamed from: q  reason: collision with root package name */
        int f3804q;

        /* renamed from: r  reason: collision with root package name */
        boolean f3805r;

        /* renamed from: s  reason: collision with root package name */
        x3 f3806s;

        /* renamed from: t  reason: collision with root package name */
        long f3807t;

        /* renamed from: u  reason: collision with root package name */
        long f3808u;

        /* renamed from: v  reason: collision with root package name */
        c2 f3809v;

        /* renamed from: w  reason: collision with root package name */
        long f3810w;

        /* renamed from: x  reason: collision with root package name */
        long f3811x;

        /* renamed from: y  reason: collision with root package name */
        boolean f3812y;

        /* renamed from: z  reason: collision with root package name */
        boolean f3813z;

        public b(final Context context) {
            this(context, new n6.s() { // from class: b3.c0
                @Override // n6.s
                public final Object get() {
                    w3 f10;
                    f10 = b0.b.f(context);
                    return f10;
                }
            }, new n6.s() { // from class: b3.d0
                @Override // n6.s
                public final Object get() {
                    t.a g10;
                    g10 = b0.b.g(context);
                    return g10;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ w3 f(Context context) {
            return new w(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ t.a g(Context context) {
            return new d4.j(context, new g3.h());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ w4.h0 h(Context context) {
            return new w4.m(context);
        }

        public b0 e() {
            y4.a.f(!this.B);
            this.B = true;
            return new g1(this, null);
        }

        private b(final Context context, n6.s sVar, n6.s sVar2) {
            this(context, sVar, sVar2, new n6.s() { // from class: b3.e0
                @Override // n6.s
                public final Object get() {
                    w4.h0 h10;
                    h10 = b0.b.h(context);
                    return h10;
                }
            }, new n6.s() { // from class: b3.f0
                @Override // n6.s
                public final Object get() {
                    return new u();
                }
            }, new n6.s() { // from class: b3.g0
                @Override // n6.s
                public final Object get() {
                    x4.e n10;
                    n10 = x4.q.n(context);
                    return n10;
                }
            }, new n6.g() { // from class: b3.h0
                @Override // n6.g
                public final Object apply(Object obj) {
                    return new c3.n1((y4.d) obj);
                }
            });
        }

        private b(Context context, n6.s sVar, n6.s sVar2, n6.s sVar3, n6.s sVar4, n6.s sVar5, n6.g gVar) {
            this.f3788a = (Context) y4.a.e(context);
            this.f3791d = sVar;
            this.f3792e = sVar2;
            this.f3793f = sVar3;
            this.f3794g = sVar4;
            this.f3795h = sVar5;
            this.f3796i = gVar;
            this.f3797j = y4.q0.Q();
            this.f3798k = d3.e.f14447g;
            this.f3800m = 0;
            this.f3803p = 1;
            this.f3804q = 0;
            this.f3805r = true;
            this.f3806s = x3.f4562g;
            this.f3807t = 5000L;
            this.f3808u = 15000L;
            this.f3809v = new t.b().a();
            this.f3789b = y4.d.f32861a;
            this.f3810w = 500L;
            this.f3811x = 2000L;
            this.f3813z = true;
        }
    }

    void B(d4.t tVar);

    x1 a();

    void d(d3.e eVar, boolean z10);
}
