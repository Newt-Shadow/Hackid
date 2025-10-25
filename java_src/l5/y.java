package l5;

import android.os.RemoteException;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import n5.t0;
import n5.x1;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class y extends x1 {

    /* renamed from: a  reason: collision with root package name */
    private final int f25326a;

    /* JADX INFO: Access modifiers changed from: protected */
    public y(byte[] bArr) {
        boolean z10;
        if (bArr.length == 25) {
            z10 = true;
        } else {
            z10 = false;
        }
        n5.q.a(z10);
        this.f25326a = Arrays.hashCode(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] k(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] e1();

    public final boolean equals(Object obj) {
        u5.a g10;
        if (obj != null && (obj instanceof t0)) {
            try {
                t0 t0Var = (t0) obj;
                if (t0Var.f() != this.f25326a || (g10 = t0Var.g()) == null) {
                    return false;
                }
                return Arrays.equals(e1(), (byte[]) u5.b.k(g10));
            } catch (RemoteException e10) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
            }
        }
        return false;
    }

    @Override // n5.t0
    public final int f() {
        return this.f25326a;
    }

    @Override // n5.t0
    public final u5.a g() {
        return u5.b.e1(e1());
    }

    public final int hashCode() {
        return this.f25326a;
    }
}
