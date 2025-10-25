package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.h  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0569h implements InterfaceC0743o {

    /* renamed from: a  reason: collision with root package name */
    private final zb.g f12495a;

    public C0569h(zb.g systemTimeProvider) {
        kotlin.jvm.internal.m.e(systemTimeProvider, "systemTimeProvider");
        this.f12495a = systemTimeProvider;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0052, code lost:
        if ((r3 - r2.f33596d) <= java.util.concurrent.TimeUnit.SECONDS.toMillis(r10.f12576b)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0082, code lost:
        if ((r3 - r5.f33597e) >= java.util.concurrent.TimeUnit.SECONDS.toMillis(r10.f12575a)) goto L11;
     */
    @Override // com.yandex.metrica.impl.ob.InterfaceC0743o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, zb.a> a(com.yandex.metrica.impl.ob.C0594i r10, java.util.Map<java.lang.String, ? extends zb.a> r11, com.yandex.metrica.impl.ob.InterfaceC0668l r12) {
        /*
            r9 = this;
            java.lang.String r0 = "config"
            kotlin.jvm.internal.m.e(r10, r0)
            java.lang.String r0 = "history"
            kotlin.jvm.internal.m.e(r11, r0)
            java.lang.String r0 = "storage"
            kotlin.jvm.internal.m.e(r12, r0)
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            java.util.Set r11 = r11.entrySet()
            java.util.Iterator r11 = r11.iterator()
        L1c:
            boolean r1 = r11.hasNext()
            if (r1 == 0) goto L94
            java.lang.Object r1 = r11.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getValue()
            zb.a r2 = (zb.a) r2
            zb.g r3 = r9.f12495a
            r3.getClass()
            long r3 = java.lang.System.currentTimeMillis()
            zb.e r5 = r2.f33593a
            zb.e r6 = zb.e.INAPP
            r7 = 1
            if (r5 != r6) goto L55
            boolean r5 = r12.a()
            if (r5 != 0) goto L55
            long r5 = r2.f33596d
            long r3 = r3 - r5
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.SECONDS
            int r5 = r10.f12576b
            long r5 = (long) r5
            long r5 = r2.toMillis(r5)
            int r2 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r2 > 0) goto L85
            goto L86
        L55:
            java.lang.String r5 = r2.f33594b
            zb.a r5 = r12.a(r5)
            if (r5 == 0) goto L86
            java.lang.String r6 = "storage[historyEntry.sku] ?: return true"
            kotlin.jvm.internal.m.d(r5, r6)
            java.lang.String r6 = r5.f33595c
            java.lang.String r8 = r2.f33595c
            boolean r6 = kotlin.jvm.internal.m.a(r6, r8)
            r6 = r6 ^ r7
            if (r6 == 0) goto L6e
            goto L86
        L6e:
            zb.e r2 = r2.f33593a
            zb.e r6 = zb.e.SUBS
            if (r2 != r6) goto L85
            long r5 = r5.f33597e
            long r3 = r3 - r5
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.SECONDS
            int r5 = r10.f12575a
            long r5 = (long) r5
            long r5 = r2.toMillis(r5)
            int r2 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r2 < 0) goto L85
            goto L86
        L85:
            r7 = 0
        L86:
            if (r7 == 0) goto L1c
            java.lang.Object r2 = r1.getKey()
            java.lang.Object r1 = r1.getValue()
            r0.put(r2, r1)
            goto L1c
        L94:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0569h.a(com.yandex.metrica.impl.ob.i, java.util.Map, com.yandex.metrica.impl.ob.l):java.util.Map");
    }

    public /* synthetic */ C0569h(zb.g gVar, int i10) {
        this((i10 & 1) != 0 ? new zb.g() : null);
    }
}
