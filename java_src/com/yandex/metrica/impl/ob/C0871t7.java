package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import android.text.TextUtils;
import com.yandex.metrica.impl.ac.CrashpadServiceHelper;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.yandex.metrica.impl.ob.t7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0871t7 implements InterfaceC0502e7<String> {

    /* renamed from: a  reason: collision with root package name */
    private final C0919v7 f13615a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0741nm<String, Bundle> f13616b;

    /* renamed from: c  reason: collision with root package name */
    private final Callable<List<Bundle>> f13617c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0716mm<String> f13618d;

    /* renamed from: e  reason: collision with root package name */
    private final C0847s7 f13619e;

    /* renamed from: com.yandex.metrica.impl.ob.t7$a */
    /* loaded from: classes2.dex */
    class a implements InterfaceC0741nm<String, Bundle> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0741nm
        public Bundle a(String str) {
            return CrashpadServiceHelper.readCrash(str);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.t7$b */
    /* loaded from: classes2.dex */
    class b implements Callable<List<Bundle>> {
        b() {
        }

        @Override // java.util.concurrent.Callable
        public List<Bundle> call() {
            return CrashpadServiceHelper.readOldCrashes();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.t7$c */
    /* loaded from: classes2.dex */
    class c implements InterfaceC0716mm<String> {
        c() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(String str) {
            CrashpadServiceHelper.a(str);
        }
    }

    public C0871t7(C0919v7 c0919v7) {
        this(c0919v7, new C0847s7(), new a(), new b(), new c());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0016  */
    @Override // com.yandex.metrica.impl.ob.InterfaceC0502e7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r3) {
        /*
            r2 = this;
            java.lang.String r3 = (java.lang.String) r3
            com.yandex.metrica.impl.ob.nm<java.lang.String, android.os.Bundle> r0 = r2.f13616b     // Catch: java.lang.Throwable -> L13
            java.lang.Object r0 = r0.a(r3)     // Catch: java.lang.Throwable -> L13
            android.os.Bundle r0 = (android.os.Bundle) r0     // Catch: java.lang.Throwable -> L13
            if (r0 == 0) goto L13
            com.yandex.metrica.impl.ob.s7 r1 = r2.f13619e     // Catch: java.lang.Throwable -> L13
            com.yandex.metrica.impl.ob.r7 r0 = r1.a(r3, r0)     // Catch: java.lang.Throwable -> L13
            goto L14
        L13:
            r0 = 0
        L14:
            if (r0 == 0) goto L1c
            com.yandex.metrica.impl.ob.v7 r3 = r2.f13615a
            r3.a2(r0)
            goto L21
        L1c:
            com.yandex.metrica.impl.ob.mm<java.lang.String> r0 = r2.f13618d
            r0.b(r3)
        L21:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0871t7.a(java.lang.Object):void");
    }

    public C0871t7(C0919v7 c0919v7, C0847s7 c0847s7, InterfaceC0741nm<String, Bundle> interfaceC0741nm, Callable<List<Bundle>> callable, InterfaceC0716mm<String> interfaceC0716mm) {
        this.f13615a = c0919v7;
        this.f13619e = c0847s7;
        this.f13616b = interfaceC0741nm;
        this.f13617c = callable;
        this.f13618d = interfaceC0716mm;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0502e7
    public void a() {
        try {
            for (Bundle bundle : this.f13617c.call()) {
                String string = bundle.getString("arg_ui");
                if (!TextUtils.isEmpty(string)) {
                    C0823r7 a10 = this.f13619e.a(string, bundle);
                    if (a10 != null) {
                        this.f13615a.b2(a10);
                    } else {
                        this.f13618d.b(string);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }
}
