package com.yandex.metrica.impl.ob;

import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public final class Jg {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f10537a;

    /* renamed from: b  reason: collision with root package name */
    private final C0866t2 f10538b;

    public Jg(C0866t2 c0866t2) {
        this.f10538b = c0866t2;
        this.f10537a = a(new String[]{"https://startup.mobile.yandex.net/", "", "", ""});
    }

    public final Collection<String> a() {
        String[] a10 = this.f10538b.a();
        if (a10 != null) {
            List<String> a11 = a(a10);
            if (!(!a11.isEmpty())) {
                a11 = null;
            }
            if (a11 != null) {
                return a11;
            }
        }
        return this.f10537a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if ((!r4) != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<java.lang.String> a(java.lang.String[] r6) {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            int r1 = r6.length
            r2 = 0
        L7:
            if (r2 >= r1) goto L1f
            r3 = r6[r2]
            if (r3 == 0) goto L16
            boolean r4 = rd.n.b0(r3)
            r4 = r4 ^ 1
            if (r4 == 0) goto L16
            goto L17
        L16:
            r3 = 0
        L17:
            if (r3 == 0) goto L1c
            r0.add(r3)
        L1c:
            int r2 = r2 + 1
            goto L7
        L1f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Jg.a(java.lang.String[]):java.util.List");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Jg() {
        /*
            r3 = this;
            com.yandex.metrica.impl.ob.t2 r0 = new com.yandex.metrica.impl.ob.t2
            com.yandex.metrica.impl.ob.F0 r1 = com.yandex.metrica.impl.ob.F0.g()
            java.lang.String r2 = "GlobalServiceLocator.getInstance()"
            kotlin.jvm.internal.m.d(r1, r2)
            android.content.Context r1 = r1.e()
            java.lang.String r2 = "GlobalServiceLocator.getInstance().context"
            kotlin.jvm.internal.m.d(r1, r2)
            java.lang.String r2 = "appmetrica_startup_hosts"
            r0.<init>(r1, r2)
            r3.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Jg.<init>():void");
    }
}
