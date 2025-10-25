package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.an  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0418an {

    /* renamed from: a  reason: collision with root package name */
    private final C0493dn f11986a;

    /* renamed from: b  reason: collision with root package name */
    private final C0493dn f11987b;

    /* renamed from: c  reason: collision with root package name */
    private final Wm f11988c;

    /* renamed from: d  reason: collision with root package name */
    private final C0467cm f11989d;

    /* renamed from: e  reason: collision with root package name */
    private final String f11990e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0418an(int r7, int r8, int r9, java.lang.String r10, com.yandex.metrica.impl.ob.C0467cm r11) {
        /*
            r6 = this;
            com.yandex.metrica.impl.ob.Wm r1 = new com.yandex.metrica.impl.ob.Wm
            r1.<init>(r7)
            com.yandex.metrica.impl.ob.dn r2 = new com.yandex.metrica.impl.ob.dn
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r10)
            java.lang.String r0 = "map key"
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            r2.<init>(r8, r7, r11)
            com.yandex.metrica.impl.ob.dn r3 = new com.yandex.metrica.impl.ob.dn
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r10)
            java.lang.String r8 = "map value"
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            r3.<init>(r9, r7, r11)
            r0 = r6
            r4 = r10
            r5 = r11
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0418an.<init>(int, int, int, java.lang.String, com.yandex.metrica.impl.ob.cm):void");
    }

    public Wm a() {
        return this.f11988c;
    }

    public C0493dn b() {
        return this.f11986a;
    }

    public C0493dn c() {
        return this.f11987b;
    }

    C0418an(Wm wm, C0493dn c0493dn, C0493dn c0493dn2, String str, C0467cm c0467cm) {
        this.f11988c = wm;
        this.f11986a = c0493dn;
        this.f11987b = c0493dn2;
        this.f11990e = str;
        this.f11989d = c0467cm;
    }

    public void a(String str) {
        if (this.f11989d.isEnabled()) {
            this.f11989d.fw("The %s has reached the limit of %d items. Item with key %s will be ignored", this.f11990e, Integer.valueOf(this.f11988c.a()), str);
        }
    }
}
