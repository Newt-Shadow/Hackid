package f;

import g.f;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: c  reason: collision with root package name */
    private boolean f15577c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f15579e;

    /* renamed from: f  reason: collision with root package name */
    private long f15580f;

    /* renamed from: a  reason: collision with root package name */
    private f.InterfaceC0171f f15575a = f.c.f16077a;

    /* renamed from: b  reason: collision with root package name */
    private int f15576b = g.d.f16072b.a();

    /* renamed from: d  reason: collision with root package name */
    private f.b f15578d = f.b.a.f16075a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        private boolean f15583c;

        /* renamed from: e  reason: collision with root package name */
        private boolean f15585e;

        /* renamed from: f  reason: collision with root package name */
        private long f15586f;

        /* renamed from: a  reason: collision with root package name */
        private f.InterfaceC0171f f15581a = f.c.f16077a;

        /* renamed from: b  reason: collision with root package name */
        private int f15582b = g.d.f16072b.a();

        /* renamed from: d  reason: collision with root package name */
        private f.b f15584d = f.b.a.f16075a;

        public final h a() {
            h hVar = new h();
            hVar.k(this.f15581a);
            hVar.j(this.f15582b);
            hVar.l(this.f15583c);
            hVar.i(this.f15584d);
            hVar.h(this.f15585e);
            hVar.g(this.f15586f);
            return hVar;
        }

        public final a b(f.InterfaceC0171f mediaType) {
            m.e(mediaType, "mediaType");
            this.f15581a = mediaType;
            return this;
        }
    }

    public final long a() {
        return this.f15580f;
    }

    public final f.b b() {
        return this.f15578d;
    }

    public final int c() {
        return this.f15576b;
    }

    public final f.InterfaceC0171f d() {
        return this.f15575a;
    }

    public final boolean e() {
        return this.f15579e;
    }

    public final boolean f() {
        return this.f15577c;
    }

    public final void g(long j10) {
        this.f15580f = j10;
    }

    public final void h(boolean z10) {
        this.f15579e = z10;
    }

    public final void i(f.b bVar) {
        m.e(bVar, "<set-?>");
        this.f15578d = bVar;
    }

    public final void j(int i10) {
        this.f15576b = i10;
    }

    public final void k(f.InterfaceC0171f interfaceC0171f) {
        m.e(interfaceC0171f, "<set-?>");
        this.f15575a = interfaceC0171f;
    }

    public final void l(boolean z10) {
        this.f15577c = z10;
    }
}
