package com.yandex.metrica.impl.ob;

import java.lang.ref.WeakReference;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class Al implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ WeakReference f9725a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f9726b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ C0541fl f9727c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ C0957wl f9728d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Bk f9729e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ boolean f9730f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ Bl f9731g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Al(Bl bl, WeakReference weakReference, List list, C0541fl c0541fl, C0957wl c0957wl, Bk bk, boolean z10) {
        this.f9731g = bl;
        this.f9725a = weakReference;
        this.f9726b = list;
        this.f9727c = c0541fl;
        this.f9728d = c0957wl;
        this.f9729e = bk;
        this.f9730f = z10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
        r1 = true;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r10 = this;
            java.lang.ref.WeakReference r0 = r10.f9725a
            java.lang.Object r0 = r0.get()
            android.app.Activity r0 = (android.app.Activity) r0
            if (r0 != 0) goto Lb
            return
        Lb:
            com.yandex.metrica.impl.ob.Bl r1 = r10.f9731g
            com.yandex.metrica.impl.ob.Bl$a r1 = com.yandex.metrica.impl.ob.Bl.b(r1)
            java.util.List r2 = r10.f9726b
            com.yandex.metrica.impl.ob.Bl r3 = r10.f9731g
            java.util.List r3 = com.yandex.metrica.impl.ob.Bl.a(r3)
            com.yandex.metrica.impl.ob.fl r4 = r10.f9727c
            r1.getClass()
            java.util.Iterator r1 = r2.iterator()
        L22:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L35
            java.lang.Object r2 = r1.next()
            com.yandex.metrica.impl.ob.vl r2 = (com.yandex.metrica.impl.ob.InterfaceC0933vl) r2
            boolean r2 = r2.a(r4)
            if (r2 == 0) goto L22
            goto L4b
        L35:
            java.util.Iterator r1 = r3.iterator()
        L39:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L4d
            java.lang.Object r2 = r1.next()
            com.yandex.metrica.impl.ob.vl r2 = (com.yandex.metrica.impl.ob.InterfaceC0933vl) r2
            boolean r2 = r2.a(r4)
            if (r2 == 0) goto L39
        L4b:
            r1 = 1
            goto L4e
        L4d:
            r1 = 0
        L4e:
            if (r1 == 0) goto L56
            com.yandex.metrica.impl.ob.Uk r1 = new com.yandex.metrica.impl.ob.Uk
            r1.<init>()
            goto L5b
        L56:
            com.yandex.metrica.impl.ob.pk r1 = new com.yandex.metrica.impl.ob.pk
            r1.<init>()
        L5b:
            r7 = r1
            com.yandex.metrica.impl.ob.Bl r1 = r10.f9731g
            com.yandex.metrica.impl.ob.lk r1 = com.yandex.metrica.impl.ob.Bl.c(r1)
            long r8 = r1.a()
            com.yandex.metrica.impl.ob.Bl r1 = r10.f9731g
            com.yandex.metrica.impl.ob.Bl.a(r1, r0, r8)
            com.yandex.metrica.impl.ob.Bl r1 = r10.f9731g     // Catch: java.lang.Throwable -> L82
            com.yandex.metrica.impl.ob.el r1 = com.yandex.metrica.impl.ob.Bl.d(r1)     // Catch: java.lang.Throwable -> L82
            com.yandex.metrica.impl.ob.wl r3 = r10.f9728d     // Catch: java.lang.Throwable -> L82
            com.yandex.metrica.impl.ob.Bk r2 = r10.f9729e     // Catch: java.lang.Throwable -> L82
            com.yandex.metrica.impl.ob.Ak r4 = r2.c()     // Catch: java.lang.Throwable -> L82
            boolean r6 = r10.f9730f     // Catch: java.lang.Throwable -> L82
            r2 = r0
            r5 = r7
            com.yandex.metrica.impl.ob.dl r1 = r1.a(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L82
            goto L8d
        L82:
            r1 = move-exception
            com.yandex.metrica.impl.ob.Bl r2 = r10.f9731g
            java.util.List r3 = r10.f9726b
            com.yandex.metrica.impl.ob.wl r4 = r10.f9728d
            com.yandex.metrica.impl.ob.Bl.a(r2, r3, r1, r4)
            r1 = 0
        L8d:
            r3 = r1
            if (r3 == 0) goto La0
            com.yandex.metrica.impl.ob.Bl r1 = r10.f9731g
            java.util.List r2 = r10.f9726b
            java.util.List r4 = r7.a()
            com.yandex.metrica.impl.ob.fl r6 = r10.f9727c
            com.yandex.metrica.impl.ob.Bk r7 = r10.f9729e
            r5 = r0
            com.yandex.metrica.impl.ob.Bl.a(r1, r2, r3, r4, r5, r6, r7, r8)
        La0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Al.run():void");
    }
}
