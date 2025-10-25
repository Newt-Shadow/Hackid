package com.google.firebase.sessions;

import ad.i;
import android.content.Context;
import com.google.firebase.sessions.b;
import u8.b0;
import u8.g0;
import u8.l;
import u8.m0;
import u8.o0;
import u8.r0;
import u8.s;
import u8.s0;
import u8.u0;
import x8.k;
import x8.n;
/* loaded from: classes.dex */
public abstract class a {

    /* loaded from: classes.dex */
    private static final class b implements b.a {

        /* renamed from: a  reason: collision with root package name */
        private Context f9025a;

        /* renamed from: b  reason: collision with root package name */
        private i f9026b;

        /* renamed from: c  reason: collision with root package name */
        private i f9027c;

        /* renamed from: d  reason: collision with root package name */
        private h7.f f9028d;

        /* renamed from: e  reason: collision with root package name */
        private l8.e f9029e;

        /* renamed from: f  reason: collision with root package name */
        private k8.b f9030f;

        private b() {
        }

        @Override // com.google.firebase.sessions.b.a
        public com.google.firebase.sessions.b build() {
            w8.d.a(this.f9025a, Context.class);
            w8.d.a(this.f9026b, i.class);
            w8.d.a(this.f9027c, i.class);
            w8.d.a(this.f9028d, h7.f.class);
            w8.d.a(this.f9029e, l8.e.class);
            w8.d.a(this.f9030f, k8.b.class);
            return new c(this.f9025a, this.f9026b, this.f9027c, this.f9028d, this.f9029e, this.f9030f);
        }

        @Override // com.google.firebase.sessions.b.a
        /* renamed from: g */
        public b e(Context context) {
            this.f9025a = (Context) w8.d.b(context);
            return this;
        }

        @Override // com.google.firebase.sessions.b.a
        /* renamed from: h */
        public b c(i iVar) {
            this.f9026b = (i) w8.d.b(iVar);
            return this;
        }

        @Override // com.google.firebase.sessions.b.a
        /* renamed from: i */
        public b d(i iVar) {
            this.f9027c = (i) w8.d.b(iVar);
            return this;
        }

        @Override // com.google.firebase.sessions.b.a
        /* renamed from: j */
        public b f(h7.f fVar) {
            this.f9028d = (h7.f) w8.d.b(fVar);
            return this;
        }

        @Override // com.google.firebase.sessions.b.a
        /* renamed from: k */
        public b a(l8.e eVar) {
            this.f9029e = (l8.e) w8.d.b(eVar);
            return this;
        }

        @Override // com.google.firebase.sessions.b.a
        /* renamed from: l */
        public b b(k8.b bVar) {
            this.f9030f = (k8.b) w8.d.b(bVar);
            return this;
        }
    }

    /* loaded from: classes.dex */
    private static final class c implements com.google.firebase.sessions.b {

        /* renamed from: a  reason: collision with root package name */
        private final c f9031a;

        /* renamed from: b  reason: collision with root package name */
        private w8.e f9032b;

        /* renamed from: c  reason: collision with root package name */
        private w8.e f9033c;

        /* renamed from: d  reason: collision with root package name */
        private w8.e f9034d;

        /* renamed from: e  reason: collision with root package name */
        private w8.e f9035e;

        /* renamed from: f  reason: collision with root package name */
        private w8.e f9036f;

        /* renamed from: g  reason: collision with root package name */
        private w8.e f9037g;

        /* renamed from: h  reason: collision with root package name */
        private w8.e f9038h;

        /* renamed from: i  reason: collision with root package name */
        private w8.e f9039i;

        /* renamed from: j  reason: collision with root package name */
        private w8.e f9040j;

        /* renamed from: k  reason: collision with root package name */
        private w8.e f9041k;

        /* renamed from: l  reason: collision with root package name */
        private w8.e f9042l;

        /* renamed from: m  reason: collision with root package name */
        private w8.e f9043m;

        /* renamed from: n  reason: collision with root package name */
        private w8.e f9044n;

        /* renamed from: o  reason: collision with root package name */
        private w8.e f9045o;

        /* renamed from: p  reason: collision with root package name */
        private w8.e f9046p;

        /* renamed from: q  reason: collision with root package name */
        private w8.e f9047q;

        /* renamed from: r  reason: collision with root package name */
        private w8.e f9048r;

        /* renamed from: s  reason: collision with root package name */
        private w8.e f9049s;

        /* renamed from: t  reason: collision with root package name */
        private w8.e f9050t;

        /* renamed from: u  reason: collision with root package name */
        private w8.e f9051u;

        /* renamed from: v  reason: collision with root package name */
        private w8.e f9052v;

        /* renamed from: w  reason: collision with root package name */
        private w8.e f9053w;

        /* renamed from: x  reason: collision with root package name */
        private w8.e f9054x;

        /* renamed from: y  reason: collision with root package name */
        private w8.e f9055y;

        private void c(Context context, i iVar, i iVar2, h7.f fVar, l8.e eVar, k8.b bVar) {
            this.f9032b = w8.c.a(fVar);
            w8.b a10 = w8.c.a(context);
            this.f9033c = a10;
            this.f9034d = w8.a.a(x8.c.a(a10));
            this.f9035e = w8.a.a(f.a());
            this.f9036f = w8.c.a(eVar);
            this.f9037g = w8.a.a(com.google.firebase.sessions.c.b(this.f9032b));
            w8.b a11 = w8.c.a(iVar2);
            this.f9038h = a11;
            this.f9039i = w8.a.a(x8.f.a(this.f9037g, a11));
            this.f9040j = w8.c.a(iVar);
            w8.e a12 = w8.a.a(d.a(this.f9033c, this.f9038h));
            this.f9041k = a12;
            w8.e a13 = w8.a.a(n.a(this.f9040j, this.f9035e, a12));
            this.f9042l = a13;
            w8.e a14 = w8.a.a(x8.g.a(this.f9035e, this.f9036f, this.f9037g, this.f9039i, a13));
            this.f9043m = a14;
            this.f9044n = w8.a.a(k.a(this.f9034d, a14));
            w8.e a15 = w8.a.a(g.a());
            this.f9045o = a15;
            this.f9046p = w8.a.a(o0.a(this.f9035e, a15));
            w8.b a16 = w8.c.a(bVar);
            this.f9047q = a16;
            w8.e a17 = w8.a.a(u8.i.a(a16));
            this.f9048r = a17;
            this.f9049s = w8.a.a(m0.a(this.f9032b, this.f9036f, this.f9044n, a17, this.f9040j));
            w8.e a18 = w8.a.a(g0.a(this.f9046p));
            this.f9050t = a18;
            this.f9051u = w8.a.a(e.a(this.f9033c, this.f9038h, a18));
            w8.e a19 = w8.a.a(b0.a(this.f9033c, this.f9045o));
            this.f9052v = a19;
            w8.e a20 = w8.a.a(u0.a(this.f9044n, this.f9046p, this.f9049s, this.f9035e, this.f9051u, a19, this.f9040j));
            this.f9053w = a20;
            w8.e a21 = w8.a.a(r0.a(a20));
            this.f9054x = a21;
            this.f9055y = w8.a.a(s.a(this.f9032b, this.f9044n, this.f9040j, a21));
        }

        @Override // com.google.firebase.sessions.b
        public l a() {
            return (l) this.f9055y.get();
        }

        @Override // com.google.firebase.sessions.b
        public s0 b() {
            return (s0) this.f9053w.get();
        }

        private c(Context context, i iVar, i iVar2, h7.f fVar, l8.e eVar, k8.b bVar) {
            this.f9031a = this;
            c(context, iVar, iVar2, fVar, eVar, bVar);
        }
    }

    public static b.a a() {
        return new b();
    }
}
