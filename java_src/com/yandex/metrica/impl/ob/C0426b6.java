package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.b6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0426b6 {

    /* renamed from: a  reason: collision with root package name */
    private final L3 f12001a;

    /* renamed from: b  reason: collision with root package name */
    private final C0401a6 f12002b;

    /* renamed from: c  reason: collision with root package name */
    private final a f12003c;

    /* renamed from: d  reason: collision with root package name */
    private final A0 f12004d;

    /* renamed from: e  reason: collision with root package name */
    private final U5<W5> f12005e;

    /* renamed from: f  reason: collision with root package name */
    private final U5<W5> f12006f;

    /* renamed from: g  reason: collision with root package name */
    private V5 f12007g;

    /* renamed from: h  reason: collision with root package name */
    private b f12008h;

    /* renamed from: com.yandex.metrica.impl.ob.b6$a */
    /* loaded from: classes2.dex */
    public interface a {
        void a(C0445c0 c0445c0, C0451c6 c0451c6);
    }

    /* renamed from: com.yandex.metrica.impl.ob.b6$b */
    /* loaded from: classes2.dex */
    public enum b {
        EMPTY,
        BACKGROUND,
        FOREGROUND
    }

    public C0426b6(L3 l32, C0401a6 c0401a6, a aVar) {
        this(l32, c0401a6, aVar, new T5(l32, c0401a6), new S5(l32, c0401a6), new A0(l32.g()));
    }

    private void e(C0445c0 c0445c0) {
        if (this.f12008h == null) {
            V5 b10 = ((R5) this.f12005e).b();
            if (a(b10, c0445c0)) {
                this.f12007g = b10;
                this.f12008h = b.FOREGROUND;
                return;
            }
            V5 b11 = ((R5) this.f12006f).b();
            if (a(b11, c0445c0)) {
                this.f12007g = b11;
                this.f12008h = b.BACKGROUND;
                return;
            }
            this.f12007g = null;
            this.f12008h = b.EMPTY;
        }
    }

    public synchronized long a() {
        V5 v52;
        v52 = this.f12007g;
        return v52 == null ? 10000000000L : v52.c() - 1;
    }

    public C0451c6 b(C0445c0 c0445c0) {
        return a(c(c0445c0), c0445c0.e());
    }

    public synchronized V5 c(C0445c0 c0445c0) {
        e(c0445c0);
        b bVar = this.f12008h;
        b bVar2 = b.EMPTY;
        if (bVar != bVar2 && !a(this.f12007g, c0445c0)) {
            this.f12008h = bVar2;
            this.f12007g = null;
        }
        int ordinal = this.f12008h.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                this.f12008h = b.BACKGROUND;
                long e10 = c0445c0.e();
                V5 a10 = ((R5) this.f12006f).a(new W5(e10, c0445c0.f()));
                if (this.f12001a.x().k()) {
                    this.f12003c.a(C0445c0.a(c0445c0, this.f12004d), a(a10, c0445c0.e()));
                } else if (c0445c0.o() == EnumC0396a1.EVENT_TYPE_FIRST_ACTIVATION.b()) {
                    this.f12003c.a(c0445c0, a(a10, e10));
                    this.f12003c.a(C0445c0.a(c0445c0, this.f12004d), a(a10, e10));
                }
                this.f12007g = a10;
                return a10;
            }
            return this.f12007g;
        }
        this.f12007g.c(c0445c0.e());
        return this.f12007g;
    }

    public synchronized void d(C0445c0 c0445c0) {
        e(c0445c0);
        int ordinal = this.f12008h.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    if (a(this.f12007g, c0445c0)) {
                        this.f12007g.c(c0445c0.e());
                    } else {
                        this.f12007g = a(c0445c0);
                    }
                }
            } else {
                b(this.f12007g, c0445c0);
                this.f12007g = a(c0445c0);
            }
        } else {
            this.f12007g = a(c0445c0);
        }
    }

    public C0451c6 f(C0445c0 c0445c0) {
        V5 v52;
        boolean b10;
        if (this.f12008h == null) {
            v52 = ((R5) this.f12005e).b();
            boolean z10 = false;
            if (v52 == null) {
                b10 = false;
            } else {
                b10 = v52.b(c0445c0.e());
            }
            if (b10) {
                v52 = ((R5) this.f12006f).b();
                if (v52 != null) {
                    z10 = v52.b(c0445c0.e());
                }
                if (z10) {
                    v52 = null;
                }
            }
        } else {
            v52 = this.f12007g;
        }
        if (v52 != null) {
            return new C0451c6().c(v52.c()).a(v52.e()).b(v52.d()).a(v52.f());
        }
        long f10 = c0445c0.f();
        long a10 = this.f12002b.a();
        L7 i10 = this.f12001a.i();
        EnumC0526f6 enumC0526f6 = EnumC0526f6.BACKGROUND;
        i10.a(a10, enumC0526f6, f10);
        return new C0451c6().c(a10).a(enumC0526f6).a(0L).b(0L);
    }

    public synchronized void g(C0445c0 c0445c0) {
        c(c0445c0).a(false);
        b bVar = this.f12008h;
        b bVar2 = b.EMPTY;
        if (bVar != bVar2) {
            b(this.f12007g, c0445c0);
        }
        this.f12008h = bVar2;
    }

    private V5 a(C0445c0 c0445c0) {
        long e10 = c0445c0.e();
        V5 a10 = ((R5) this.f12005e).a(new W5(e10, c0445c0.f()));
        this.f12008h = b.FOREGROUND;
        this.f12001a.l().c();
        this.f12003c.a(C0445c0.a(c0445c0, this.f12004d), a(a10, e10));
        return a10;
    }

    private void b(V5 v52, C0445c0 c0445c0) {
        if (v52.h()) {
            this.f12003c.a(C0445c0.a(c0445c0), new C0451c6().c(v52.c()).a(v52.f()).a(v52.e()).b(v52.b()));
            v52.a(false);
        }
        v52.i();
    }

    public C0426b6(L3 l32, C0401a6 c0401a6, a aVar, U5<W5> u52, U5<W5> u53, A0 a02) {
        this.f12008h = null;
        this.f12001a = l32;
        this.f12003c = aVar;
        this.f12005e = u52;
        this.f12006f = u53;
        this.f12002b = c0401a6;
        this.f12004d = a02;
    }

    private boolean a(V5 v52, C0445c0 c0445c0) {
        if (v52 == null) {
            return false;
        }
        if (v52.b(c0445c0.e())) {
            return true;
        }
        b(v52, c0445c0);
        return false;
    }

    private C0451c6 a(V5 v52, long j10) {
        return new C0451c6().c(v52.c()).a(v52.e()).b(v52.a(j10)).a(v52.f());
    }
}
