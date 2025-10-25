package p2;

import android.content.Context;
import p2.v;
import x2.n0;
import x2.w0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class e {

    /* loaded from: classes.dex */
    private static final class b implements v.a {

        /* renamed from: a  reason: collision with root package name */
        private Context f27754a;

        private b() {
        }

        @Override // p2.v.a
        /* renamed from: b */
        public b a(Context context) {
            this.f27754a = (Context) r2.d.b(context);
            return this;
        }

        @Override // p2.v.a
        public v build() {
            r2.d.a(this.f27754a, Context.class);
            return new c(this.f27754a);
        }
    }

    /* loaded from: classes.dex */
    private static final class c extends v {

        /* renamed from: a  reason: collision with root package name */
        private final c f27755a;

        /* renamed from: b  reason: collision with root package name */
        private wc.a f27756b;

        /* renamed from: c  reason: collision with root package name */
        private wc.a f27757c;

        /* renamed from: d  reason: collision with root package name */
        private wc.a f27758d;

        /* renamed from: e  reason: collision with root package name */
        private wc.a f27759e;

        /* renamed from: f  reason: collision with root package name */
        private wc.a f27760f;

        /* renamed from: g  reason: collision with root package name */
        private wc.a f27761g;

        /* renamed from: h  reason: collision with root package name */
        private wc.a f27762h;

        /* renamed from: i  reason: collision with root package name */
        private wc.a f27763i;

        /* renamed from: j  reason: collision with root package name */
        private wc.a f27764j;

        /* renamed from: k  reason: collision with root package name */
        private wc.a f27765k;

        /* renamed from: l  reason: collision with root package name */
        private wc.a f27766l;

        /* renamed from: m  reason: collision with root package name */
        private wc.a f27767m;

        /* renamed from: n  reason: collision with root package name */
        private wc.a f27768n;

        private void c(Context context) {
            this.f27756b = r2.a.a(k.a());
            r2.b a10 = r2.c.a(context);
            this.f27757c = a10;
            q2.j a11 = q2.j.a(a10, z2.c.a(), z2.d.a());
            this.f27758d = a11;
            this.f27759e = r2.a.a(q2.l.a(this.f27757c, a11));
            this.f27760f = w0.a(this.f27757c, x2.g.a(), x2.i.a());
            this.f27761g = r2.a.a(x2.h.a(this.f27757c));
            this.f27762h = r2.a.a(n0.a(z2.c.a(), z2.d.a(), x2.j.a(), this.f27760f, this.f27761g));
            v2.g b10 = v2.g.b(z2.c.a());
            this.f27763i = b10;
            v2.i a12 = v2.i.a(this.f27757c, this.f27762h, b10, z2.d.a());
            this.f27764j = a12;
            wc.a aVar = this.f27756b;
            wc.a aVar2 = this.f27759e;
            wc.a aVar3 = this.f27762h;
            this.f27765k = v2.d.a(aVar, aVar2, a12, aVar3, aVar3);
            wc.a aVar4 = this.f27757c;
            wc.a aVar5 = this.f27759e;
            wc.a aVar6 = this.f27762h;
            this.f27766l = w2.s.a(aVar4, aVar5, aVar6, this.f27764j, this.f27756b, aVar6, z2.c.a(), z2.d.a(), this.f27762h);
            wc.a aVar7 = this.f27756b;
            wc.a aVar8 = this.f27762h;
            this.f27767m = w2.w.a(aVar7, aVar8, this.f27764j, aVar8);
            this.f27768n = r2.a.a(w.a(z2.c.a(), z2.d.a(), this.f27765k, this.f27766l, this.f27767m));
        }

        @Override // p2.v
        x2.d a() {
            return (x2.d) this.f27762h.get();
        }

        @Override // p2.v
        u b() {
            return (u) this.f27768n.get();
        }

        private c(Context context) {
            this.f27755a = this;
            c(context);
        }
    }

    public static v.a a() {
        return new b();
    }
}
