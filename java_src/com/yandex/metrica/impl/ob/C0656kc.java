package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.kc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0656kc extends Pb {

    /* renamed from: com.yandex.metrica.impl.ob.kc$a */
    /* loaded from: classes2.dex */
    class a implements InterfaceC0557gc {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0557gc
        public void a(long j10) {
            C0656kc.this.f11060a.j(j10);
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0557gc
        public long getLastAttemptTimeSeconds() {
            return C0656kc.this.f11060a.e(0L);
        }
    }

    public C0656kc(Cc cc2, C0504e9 c0504e9) {
        this(cc2, c0504e9, new G1());
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    public InterfaceC0557gc a() {
        return new a();
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    protected String b() {
        return "network";
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    protected String c() {
        return "lbs";
    }

    C0656kc(Cc cc2, C0504e9 c0504e9, G1 g12) {
        super(cc2, c0504e9, g12);
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    protected InterfaceC1021zd a(C0997yd c0997yd) {
        return this.f11062c.a(c0997yd);
    }
}
