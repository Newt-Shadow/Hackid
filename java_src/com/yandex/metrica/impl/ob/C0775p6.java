package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.p6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0775p6 implements InterfaceC0750o6 {

    /* renamed from: a  reason: collision with root package name */
    private final List<InterfaceC0716mm<String>> f13110a;

    /* renamed from: b  reason: collision with root package name */
    private final C0943w7 f13111b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0716mm<String> f13112c;

    /* renamed from: com.yandex.metrica.impl.ob.p6$a */
    /* loaded from: classes2.dex */
    class a implements InterfaceC0716mm<String> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(String str) {
            C0775p6.a(C0775p6.this, str);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0775p6(android.content.Context r4) {
        /*
            r3 = this;
            com.yandex.metrica.impl.ob.w7 r0 = new com.yandex.metrica.impl.ob.w7
            java.lang.String r1 = com.yandex.metrica.impl.ob.C0419b.a(r4)
            java.io.File r4 = bc.a.a(r4)
            if (r4 != 0) goto Le
            r4 = 0
            goto L28
        Le:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = r4.getAbsolutePath()
            r2.append(r4)
            java.lang.String r4 = "/"
            r2.append(r4)
            java.lang.String r4 = "appmetrica_native_crashes"
            r2.append(r4)
            java.lang.String r4 = r2.toString()
        L28:
            r0.<init>(r1, r4)
            r3.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0775p6.<init>(android.content.Context):void");
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0750o6
    public synchronized void a(InterfaceC0716mm<String> interfaceC0716mm) {
        this.f13110a.add(interfaceC0716mm);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0750o6
    public synchronized void b(InterfaceC0716mm<String> interfaceC0716mm) {
        this.f13110a.remove(interfaceC0716mm);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0671l2
    public void a() {
        this.f13111b.a(this.f13112c);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0671l2
    public void b() {
        this.f13111b.b(this.f13112c);
    }

    static void a(C0775p6 c0775p6, String str) {
        ArrayList arrayList;
        synchronized (c0775p6) {
            arrayList = new ArrayList(c0775p6.f13110a);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((InterfaceC0716mm) it.next()).b(str);
        }
    }

    C0775p6(C0943w7 c0943w7) {
        this.f13110a = new ArrayList();
        this.f13112c = new a();
        this.f13111b = c0943w7;
    }
}
