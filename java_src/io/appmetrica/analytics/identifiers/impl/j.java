package io.appmetrica.analytics.identifiers.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
/* loaded from: classes2.dex */
public final class j implements b {

    /* renamed from: a  reason: collision with root package name */
    public final f f17907a;

    public j(f fVar) {
        this.f17907a = fVar;
    }

    @Override // io.appmetrica.analytics.identifiers.impl.b
    public final c a(Context context) {
        c cVar;
        f fVar;
        try {
            try {
                try {
                    m mVar = (m) ((o) this.f17907a.a(context));
                    cVar = new c(IdentifierStatus.OK, new a("huawei", mVar.a(), Boolean.valueOf(mVar.b())), null, 4);
                    fVar = this.f17907a;
                } catch (Throwable unused) {
                }
            } catch (g e10) {
                String message = e10.getMessage();
                if (message == null) {
                    message = "unknown exception during binding huawei services";
                }
                cVar = new c(IdentifierStatus.IDENTIFIER_PROVIDER_UNAVAILABLE, null, message);
                fVar = this.f17907a;
                fVar.b(context);
                return cVar;
            } catch (Throwable th) {
                cVar = new c(IdentifierStatus.IDENTIFIER_PROVIDER_UNAVAILABLE, null, "exception while fetching hoaid: " + th.getMessage());
                fVar = this.f17907a;
                fVar.b(context);
                return cVar;
            }
            fVar.b(context);
            return cVar;
        } catch (Throwable th2) {
            try {
                this.f17907a.b(context);
            } catch (Throwable unused2) {
            }
            throw th2;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public j() {
        /*
            r4 = this;
            io.appmetrica.analytics.identifiers.impl.f r0 = new io.appmetrica.analytics.identifiers.impl.f
            android.content.Intent r1 = io.appmetrica.analytics.identifiers.impl.k.a()
            io.appmetrica.analytics.identifiers.impl.i r2 = io.appmetrica.analytics.identifiers.impl.i.f17906a
            java.lang.String r3 = "huawei"
            r0.<init>(r1, r2, r3)
            r4.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.identifiers.impl.j.<init>():void");
    }
}
