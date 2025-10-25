package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.zh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1025zh {

    /* renamed from: a  reason: collision with root package name */
    private final String f14076a;

    /* renamed from: b  reason: collision with root package name */
    private final C0962x2 f14077b;

    /* renamed from: c  reason: collision with root package name */
    private final dc.d f14078c;

    /* renamed from: d  reason: collision with root package name */
    private final C0977xh f14079d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1025zh(String str, C0953wh c0953wh) {
        this(str, new C0962x2(), new dc.c(), new C0977xh(c0953wh));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Gh gh, int i10, C0488di c0488di) {
        this.f14079d.a(c0488di.f12251g);
        C0962x2 c0962x2 = this.f14077b;
        long a10 = this.f14079d.a(i10);
        long j10 = c0488di.f12251g;
        if (c0962x2.b(a10, j10, "report " + this.f14076a)) {
            ((Jh) gh).a(this.f14076a, Integer.valueOf(i10));
            this.f14079d.a(i10, this.f14078c.currentTimeSeconds());
        }
    }

    C1025zh(String str, C0962x2 c0962x2, dc.d dVar, C0977xh c0977xh) {
        this.f14076a = str;
        this.f14077b = c0962x2;
        this.f14078c = dVar;
        this.f14079d = c0977xh;
    }
}
