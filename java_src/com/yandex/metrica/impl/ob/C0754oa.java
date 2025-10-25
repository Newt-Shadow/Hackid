package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.oa  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0754oa implements InterfaceC0946wa {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0442bm f13060a;

    public C0754oa(InterfaceC0442bm interfaceC0442bm) {
        this.f13060a = interfaceC0442bm;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0946wa
    public long a(Z8 z82) {
        String b10 = ((Xl) this.f13060a).b();
        return z82.a(new Rd("LAST_ACTIVATION_DIAGNOSTICS_SENT_TIME_" + b10, null).a(), Long.MAX_VALUE);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0946wa
    public void a(Z8 z82, long j10) {
        String b10 = ((Xl) this.f13060a).b();
        Z8 z83 = (Z8) z82.b(new Rd("LAST_ACTIVATION_DIAGNOSTICS_SENT_TIME_" + b10, null).a(), j10);
    }
}
