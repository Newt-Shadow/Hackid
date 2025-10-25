package com.yandex.metrica.networktasks.api;

import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2.dex */
public class CacheControlHttpsConnectionPerformer {

    /* renamed from: a  reason: collision with root package name */
    private final a f14161a;

    /* renamed from: b  reason: collision with root package name */
    private final SSLSocketFactory f14162b;

    /* loaded from: classes2.dex */
    public interface Client {
        String getOldETag();

        void onError();

        void onNotModified();

        void onResponse(String str, byte[] bArr);
    }

    CacheControlHttpsConnectionPerformer(a aVar, SSLSocketFactory sSLSocketFactory) {
        this.f14161a = aVar;
        this.f14162b = sSLSocketFactory;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r5, com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client r6) {
        /*
            r4 = this;
            r0 = 0
            com.yandex.metrica.networktasks.api.a r1 = r4.f14161a     // Catch: java.lang.Throwable -> L44
            java.lang.String r2 = r6.getOldETag()     // Catch: java.lang.Throwable -> L44
            javax.net.ssl.SSLSocketFactory r3 = r4.f14162b     // Catch: java.lang.Throwable -> L44
            com.yandex.metrica.network.Response r5 = r1.a(r2, r5, r3)     // Catch: java.lang.Throwable -> L44
            int r1 = r5.a()     // Catch: java.lang.Throwable -> L44
            r2 = 200(0xc8, float:2.8E-43)
            if (r1 == r2) goto L1e
            r5 = 304(0x130, float:4.26E-43)
            if (r1 == r5) goto L1a
            goto L44
        L1a:
            r6.onNotModified()     // Catch: java.lang.Throwable -> L44
            goto L43
        L1e:
            java.util.Map r1 = r5.d()     // Catch: java.lang.Throwable -> L44
            java.lang.String r2 = "ETag"
            java.lang.Object r1 = r1.get(r2)     // Catch: java.lang.Throwable -> L44
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L3a
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L44
            if (r2 <= 0) goto L3a
            java.lang.Object r1 = r1.get(r0)     // Catch: java.lang.Throwable -> L44
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L44
            if (r1 != 0) goto L3c
        L3a:
            java.lang.String r1 = ""
        L3c:
            byte[] r5 = r5.e()     // Catch: java.lang.Throwable -> L44
            r6.onResponse(r1, r5)     // Catch: java.lang.Throwable -> L44
        L43:
            r0 = 1
        L44:
            if (r0 != 0) goto L49
            r6.onError()
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.a(java.lang.String, com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer$Client):void");
    }

    public CacheControlHttpsConnectionPerformer(SSLSocketFactory sSLSocketFactory) {
        this(new a(), sSLSocketFactory);
    }
}
