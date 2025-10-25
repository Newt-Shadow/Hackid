package io.appmetrica.analytics.identifiers.impl;

import android.content.Context;
import android.os.Parcel;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
/* loaded from: classes2.dex */
public final class q implements b {

    /* renamed from: a  reason: collision with root package name */
    public final f f17911a;

    public q(f fVar) {
        this.f17911a = fVar;
    }

    @Override // io.appmetrica.analytics.identifiers.impl.b
    public final c a(Context context) {
        c cVar;
        try {
            try {
                try {
                    try {
                        c b10 = b(context);
                        try {
                            this.f17911a.b(context);
                            return b10;
                        } catch (Throwable unused) {
                            return b10;
                        }
                    } catch (Throwable unused2) {
                        return cVar;
                    }
                } catch (g e10) {
                    String message = e10.getMessage();
                    if (message == null) {
                        message = "unknown exception while binding yandex adv_id service";
                    }
                    cVar = new c(IdentifierStatus.IDENTIFIER_PROVIDER_UNAVAILABLE, null, message, 2);
                    this.f17911a.b(context);
                    return cVar;
                }
            } catch (l e11) {
                String message2 = e11.getMessage();
                if (message2 == null) {
                    message2 = "No yandex adv_id service";
                }
                cVar = new c(IdentifierStatus.IDENTIFIER_PROVIDER_UNAVAILABLE, null, message2, 2);
                this.f17911a.b(context);
                return cVar;
            }
        }
    }

    public final c b(Context context) {
        s sVar = (s) ((u) this.f17911a.a(context));
        sVar.getClass();
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.yandex.android.advid.service.YandexAdvIdInterface");
            boolean z10 = true;
            sVar.f17913a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            String readString = obtain2.readString();
            obtain2.recycle();
            obtain.recycle();
            obtain = Parcel.obtain();
            obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.yandex.android.advid.service.YandexAdvIdInterface");
                sVar.f17913a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z10 = false;
                }
                obtain2.recycle();
                obtain.recycle();
                return new c(IdentifierStatus.OK, new a("yandex", readString, Boolean.valueOf(z10)), null, 4);
            } finally {
            }
        } finally {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public q() {
        /*
            r4 = this;
            io.appmetrica.analytics.identifiers.impl.f r0 = new io.appmetrica.analytics.identifiers.impl.f
            android.content.Intent r1 = io.appmetrica.analytics.identifiers.impl.r.a()
            io.appmetrica.analytics.identifiers.impl.p r2 = io.appmetrica.analytics.identifiers.impl.p.f17910a
            java.lang.String r3 = "yandex"
            r0.<init>(r1, r2, r3)
            r4.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.identifiers.impl.q.<init>():void");
    }
}
