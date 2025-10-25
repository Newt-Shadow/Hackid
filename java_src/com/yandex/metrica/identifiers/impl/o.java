package com.yandex.metrica.identifiers.impl;

import android.content.Context;
/* loaded from: classes.dex */
public final class o implements i {

    /* renamed from: a  reason: collision with root package name */
    private final e f9676a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public o() {
        /*
            r4 = this;
            com.yandex.metrica.identifiers.impl.e r0 = new com.yandex.metrica.identifiers.impl.e
            android.content.Intent r1 = com.yandex.metrica.identifiers.impl.p.a()
            com.yandex.metrica.identifiers.impl.n r2 = com.yandex.metrica.identifiers.impl.n.f9675e
            java.lang.String r3 = "yandex"
            r0.<init>(r1, r2, r3)
            r4.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.identifiers.impl.o.<init>():void");
    }

    private final g b(Context context) {
        c cVar = (c) this.f9676a.a(context);
        String b10 = cVar.b();
        kotlin.jvm.internal.m.d(b10, "service.advId");
        return new g(l.f9671b, new f("yandex", b10, Boolean.valueOf(cVar.d())), null, 4);
    }

    @Override // com.yandex.metrica.identifiers.impl.i
    public g a(Context context) {
        g gVar;
        kotlin.jvm.internal.m.e(context, "context");
        try {
            try {
                g b10 = b(context);
                try {
                    return b10;
                } catch (Throwable unused) {
                    return b10;
                }
            } finally {
                try {
                    this.f9676a.b(context);
                } catch (Throwable unused2) {
                }
            }
        } catch (m e10) {
            String message = e10.getMessage();
            if (message == null) {
                message = "No yandex adv_id service";
            }
            gVar = new g(l.f9672c, null, message, 2);
            try {
                this.f9676a.b(context);
            } catch (Throwable unused3) {
            }
            return gVar;
        } catch (j e11) {
            String message2 = e11.getMessage();
            if (message2 == null) {
                message2 = "unknown exception while binding yandex adv_id service";
            }
            gVar = new g(l.f9672c, null, message2, 2);
            this.f9676a.b(context);
            return gVar;
        } catch (Throwable th) {
            l lVar = l.f9673d;
            gVar = new g(lVar, null, "exception while fetching yandex adv_id: " + th.getMessage(), 2);
            this.f9676a.b(context);
            return gVar;
        }
    }

    public o(e connectionController) {
        kotlin.jvm.internal.m.e(connectionController, "connectionController");
        this.f9676a = connectionController;
    }
}
