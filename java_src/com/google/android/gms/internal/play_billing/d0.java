package com.google.android.gms.internal.play_billing;

import java.io.Serializable;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
final class d0 extends e0 implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    final byte[] f6963c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(byte[] bArr) {
        bArr.getClass();
        this.f6963c = bArr;
    }

    @Override // com.google.android.gms.internal.play_billing.e0
    public final int a() {
        byte[] bArr = this.f6963c;
        int length = bArr.length;
        if (length >= 4) {
            int i10 = bArr[0] & ForkServer.ERROR;
            int i11 = bArr[1] & ForkServer.ERROR;
            int i12 = bArr[2] & ForkServer.ERROR;
            return ((bArr[3] & ForkServer.ERROR) << 24) | i10 | (i11 << 8) | (i12 << 16);
        }
        throw new IllegalStateException(c.a("HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", Integer.valueOf(length)));
    }

    @Override // com.google.android.gms.internal.play_billing.e0
    public final int b() {
        return this.f6963c.length * 8;
    }

    @Override // com.google.android.gms.internal.play_billing.e0
    final boolean c(e0 e0Var) {
        boolean z10;
        if (this.f6963c.length != e0Var.d().length) {
            return false;
        }
        boolean z11 = true;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f6963c;
            if (i10 < bArr.length) {
                if (bArr[i10] == e0Var.d()[i10]) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 &= z10;
                i10++;
            } else {
                return z11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.e0
    public final byte[] d() {
        return this.f6963c;
    }
}
