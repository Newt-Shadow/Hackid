package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* renamed from: io.appmetrica.analytics.impl.r3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1458r3 extends V2 {
    public C1458r3(int i10, String str, PublicLogger publicLogger) {
        super(i10, str, publicLogger);
    }

    public final int b() {
        return this.f19107a;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1478rn
    public final byte[] a(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            int i10 = this.f19107a;
            if (length > i10) {
                byte[] bArr2 = new byte[i10];
                System.arraycopy(bArr, 0, bArr2, 0, i10);
                this.f19109c.warning("\"%s\" %s exceeded limit of %d bytes", this.f19108b, bArr, Integer.valueOf(this.f19107a));
                return bArr2;
            }
            return bArr;
        }
        return bArr;
    }

    public final String a() {
        return this.f19108b;
    }
}
