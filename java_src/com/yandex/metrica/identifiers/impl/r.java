package com.yandex.metrica.identifiers.impl;

import android.content.Context;
/* loaded from: classes.dex */
public final class r implements i {

    /* renamed from: a  reason: collision with root package name */
    private final e f9679a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public r() {
        /*
            r4 = this;
            com.yandex.metrica.identifiers.impl.e r0 = new com.yandex.metrica.identifiers.impl.e
            android.content.Intent r1 = com.yandex.metrica.identifiers.impl.s.a()
            com.yandex.metrica.identifiers.impl.q r2 = com.yandex.metrica.identifiers.impl.q.f9678e
            java.lang.String r3 = "huawei"
            r0.<init>(r1, r2, r3)
            r4.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.identifiers.impl.r.<init>():void");
    }

    @Override // com.yandex.metrica.identifiers.impl.i
    public g a(Context context) {
        g gVar;
        g gVar2;
        e eVar;
        kotlin.jvm.internal.m.e(context, "context");
        try {
            try {
                try {
                    v vVar = (v) this.f9679a.a(context);
                    gVar2 = new g(l.f9671b, new f("huawei", vVar.a(), Boolean.valueOf(vVar.c())), null, 4);
                    eVar = this.f9679a;
                } catch (Throwable unused) {
                }
            } catch (j e10) {
                String errorMessage = e10.getMessage();
                if (errorMessage == null) {
                    errorMessage = "unknown exception during binding huawei services";
                }
                kotlin.jvm.internal.m.e(errorMessage, "errorMessage");
                gVar = new g(l.f9672c, null, errorMessage);
                gVar2 = gVar;
                eVar = this.f9679a;
                eVar.b(context);
                return gVar2;
            } catch (Throwable th) {
                String errorMessage2 = "exception while fetching hoaid: " + th.getMessage();
                kotlin.jvm.internal.m.e(errorMessage2, "errorMessage");
                gVar = new g(l.f9672c, null, errorMessage2);
                gVar2 = gVar;
                eVar = this.f9679a;
                eVar.b(context);
                return gVar2;
            }
            eVar.b(context);
            return gVar2;
        } catch (Throwable th2) {
            try {
                this.f9679a.b(context);
            } catch (Throwable unused2) {
            }
            throw th2;
        }
    }

    public r(e connectionController) {
        kotlin.jvm.internal.m.e(connectionController, "connectionController");
        this.f9679a = connectionController;
    }
}
