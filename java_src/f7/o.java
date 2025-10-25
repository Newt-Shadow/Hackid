package f7;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import s6.t;
/* loaded from: classes.dex */
public class o implements t {

    /* renamed from: a  reason: collision with root package name */
    private final d7.a f15901a;

    /* renamed from: b  reason: collision with root package name */
    private final int f15902b;

    public o(d7.a aVar, int i10) {
        this.f15901a = aVar;
        this.f15902b = i10;
        if (i10 >= 10) {
            aVar.a(new byte[0], i10);
            return;
        }
        throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
    }

    @Override // s6.t
    public void a(byte[] bArr, byte[] bArr2) {
        if (f.b(b(bArr2), bArr)) {
            return;
        }
        throw new GeneralSecurityException("invalid MAC");
    }

    @Override // s6.t
    public byte[] b(byte[] bArr) {
        return this.f15901a.a(bArr, this.f15902b);
    }
}
