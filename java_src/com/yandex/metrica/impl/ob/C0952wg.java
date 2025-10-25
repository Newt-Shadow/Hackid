package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* renamed from: com.yandex.metrica.impl.ob.wg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0952wg {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0660kg f13887a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.wg$a */
    /* loaded from: classes2.dex */
    public class a implements InterfaceC0660kg {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0660kg
        public void a(InterfaceC0928vg interfaceC0928vg) {
            throw new IllegalStateException("No class: com.android.installreferrer.api.InstallReferrerClient");
        }
    }

    public C0952wg(Context context, ICommonExecutor iCommonExecutor) {
        this(a(context, iCommonExecutor));
    }

    public void a(InterfaceC0928vg interfaceC0928vg) {
        try {
            this.f13887a.a(interfaceC0928vg);
        } catch (Throwable th) {
            interfaceC0928vg.a(th);
        }
    }

    C0952wg(InterfaceC0660kg interfaceC0660kg) {
        this.f13887a = interfaceC0660kg;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.yandex.metrica.impl.ob.InterfaceC0660kg a(android.content.Context r1, com.yandex.metrica.core.api.executors.ICommonExecutor r2) {
        /*
            java.lang.String r0 = "com.android.installreferrer.api.InstallReferrerClient"
            boolean r0 = com.yandex.metrica.impl.ob.C0572h2.a(r0)
            if (r0 == 0) goto L16
            com.yandex.metrica.impl.ob.qg r0 = new com.yandex.metrica.impl.ob.qg     // Catch: java.lang.Throwable -> L16
            com.android.installreferrer.api.InstallReferrerClient$Builder r1 = com.android.installreferrer.api.InstallReferrerClient.newBuilder(r1)     // Catch: java.lang.Throwable -> L16
            com.android.installreferrer.api.InstallReferrerClient r1 = r1.build()     // Catch: java.lang.Throwable -> L16
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L16
            goto L17
        L16:
            r0 = 0
        L17:
            if (r0 != 0) goto L1e
            com.yandex.metrica.impl.ob.wg$a r0 = new com.yandex.metrica.impl.ob.wg$a
            r0.<init>()
        L1e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0952wg.a(android.content.Context, com.yandex.metrica.core.api.executors.ICommonExecutor):com.yandex.metrica.impl.ob.kg");
    }
}
