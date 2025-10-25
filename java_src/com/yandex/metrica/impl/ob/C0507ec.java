package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.ec  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0507ec {

    /* renamed from: a  reason: collision with root package name */
    private final C0504e9 f12312a;

    /* renamed from: b  reason: collision with root package name */
    private final Cc f12313b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0557gc f12314c;

    /* renamed from: d  reason: collision with root package name */
    private final C0432bc f12315d;

    /* renamed from: e  reason: collision with root package name */
    private final Zb f12316e;

    /* renamed from: f  reason: collision with root package name */
    private final C0482dc f12317f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ec$a */
    /* loaded from: classes2.dex */
    public class a implements InterfaceC0557gc {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0557gc
        public void a(long j10) {
            C0507ec.this.f12312a.g(j10);
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0557gc
        public long getLastAttemptTimeSeconds() {
            return C0507ec.this.f12312a.b(0L);
        }
    }

    public C0507ec(Cc cc2, C0504e9 c0504e9, Pc pc2) {
        this.f12313b = cc2;
        this.f12312a = c0504e9;
        InterfaceC0557gc b10 = b();
        this.f12314c = b10;
        this.f12316e = a(b10);
        this.f12315d = a();
        this.f12317f = a(pc2);
    }

    private InterfaceC0557gc b() {
        return new a();
    }

    private C0432bc a() {
        return new C0432bc(this.f12313b.f9841a.f11259b);
    }

    private Zb a(InterfaceC0557gc interfaceC0557gc) {
        return new Zb(interfaceC0557gc, new C0962x2());
    }

    private C0482dc a(Pc pc2) {
        Sb sb2 = this.f12313b.f9841a;
        return new C0482dc(sb2.f11258a, pc2, sb2.f11259b, sb2.f11260c);
    }

    public Ec<C0457cc> a(C0457cc c0457cc) {
        return new Ec<>(this.f12317f, this.f12316e, new Ob(this.f12314c, new dc.c()), this.f12315d, c0457cc);
    }
}
