package g3;

import b3.x1;
import g3.b0;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.EOFException;
/* loaded from: classes.dex */
public final class j implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f16221a = new byte[Base64Utils.IO_BUFFER_SIZE];

    @Override // g3.b0
    public void a(y4.e0 e0Var, int i10, int i11) {
        e0Var.U(i10);
    }

    @Override // g3.b0
    public void c(x1 x1Var) {
    }

    @Override // g3.b0
    public int d(x4.h hVar, int i10, boolean z10, int i11) {
        int read = hVar.read(this.f16221a, 0, Math.min(this.f16221a.length, i10));
        if (read == -1) {
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
        return read;
    }

    @Override // g3.b0
    public void f(long j10, int i10, int i11, int i12, b0.a aVar) {
    }
}
