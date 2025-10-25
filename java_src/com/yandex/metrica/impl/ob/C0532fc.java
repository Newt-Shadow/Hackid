package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.fc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0532fc extends Pb {

    /* renamed from: com.yandex.metrica.impl.ob.fc$a */
    /* loaded from: classes2.dex */
    class a implements InterfaceC0557gc {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0557gc
        public void a(long j10) {
            C0532fc.this.f11060a.h(j10);
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0557gc
        public long getLastAttemptTimeSeconds() {
            return C0532fc.this.f11060a.c(0L);
        }
    }

    public C0532fc(Cc cc2, C0504e9 c0504e9) {
        this(cc2, c0504e9, new G1());
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    public InterfaceC0557gc a() {
        return new a();
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    protected String b() {
        return "gps";
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    protected String c() {
        return "gps";
    }

    C0532fc(Cc cc2, C0504e9 c0504e9, G1 g12) {
        super(cc2, c0504e9, g12);
    }

    @Override // com.yandex.metrica.impl.ob.Pb
    protected InterfaceC1021zd a(C0997yd c0997yd) {
        return this.f11062c.c(c0997yd);
    }
}
