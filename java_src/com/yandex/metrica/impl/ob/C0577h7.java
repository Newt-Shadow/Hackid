package com.yandex.metrica.impl.ob;

import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.h7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0577h7 implements InterfaceC0691lm<File, C0452c7, String> {

    /* renamed from: a  reason: collision with root package name */
    private final P6 f12507a;

    public C0577h7(P6 p62) {
        this.f12507a = p62;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0024 A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #0 {all -> 0x0038, blocks: (B:3:0x0001, B:5:0x0007, B:8:0x0015, B:12:0x001e, B:14:0x0024, B:10:0x001a), top: B:19:0x0001 }] */
    @Override // com.yandex.metrica.impl.ob.InterfaceC0691lm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(java.io.File r4, com.yandex.metrica.impl.ob.C0452c7 r5) {
        /*
            r3 = this;
            r0 = 0
            java.lang.String r4 = r4.getAbsolutePath()     // Catch: java.lang.Throwable -> L38
            if (r4 == 0) goto L1d
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L38
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L38
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L19
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L19
            byte[] r1 = com.yandex.metrica.impl.ob.L0.a(r4)     // Catch: java.lang.Throwable -> L1a
            com.yandex.metrica.impl.ob.A2.a(r4)     // Catch: java.lang.Throwable -> L38
            goto L1e
        L19:
            r4 = r0
        L1a:
            com.yandex.metrica.impl.ob.A2.a(r4)     // Catch: java.lang.Throwable -> L38
        L1d:
            r1 = r0
        L1e:
            boolean r4 = com.yandex.metrica.impl.ob.A2.a(r1)     // Catch: java.lang.Throwable -> L38
            if (r4 != 0) goto L38
            com.yandex.metrica.impl.ob.P6 r4 = r3.f12507a     // Catch: java.lang.Throwable -> L38
            com.yandex.metrica.impl.ob.d7 r2 = new com.yandex.metrica.impl.ob.d7     // Catch: java.lang.Throwable -> L38
            r2.<init>(r1, r5)     // Catch: java.lang.Throwable -> L38
            com.yandex.metrica.impl.ob.gf r4 = r4.fromModel(r2)     // Catch: java.lang.Throwable -> L38
            byte[] r4 = com.google.protobuf.nano.ym.MessageNano.toByteArray(r4)     // Catch: java.lang.Throwable -> L38
            java.lang.String r4 = com.yandex.metrica.impl.ob.L0.a(r4)     // Catch: java.lang.Throwable -> L38
            return r4
        L38:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0577h7.a(java.io.File, com.yandex.metrica.impl.ob.c7):java.lang.String");
    }
}
