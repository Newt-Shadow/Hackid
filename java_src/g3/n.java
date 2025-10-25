package g3;

import b3.e3;
import java.io.EOFException;
/* loaded from: classes.dex */
public abstract class n {
    public static void a(boolean z10, String str) {
        if (z10) {
            return;
        }
        throw e3.a(str, null);
    }

    public static boolean b(l lVar, byte[] bArr, int i10, int i11, boolean z10) {
        try {
            return lVar.f(bArr, i10, i11, z10);
        } catch (EOFException e10) {
            if (z10) {
                return false;
            }
            throw e10;
        }
    }

    public static int c(l lVar, byte[] bArr, int i10, int i11) {
        int i12 = 0;
        while (i12 < i11) {
            int j10 = lVar.j(bArr, i10 + i12, i11 - i12);
            if (j10 == -1) {
                break;
            }
            i12 += j10;
        }
        return i12;
    }

    public static boolean d(l lVar, byte[] bArr, int i10, int i11) {
        try {
            lVar.readFully(bArr, i10, i11);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean e(l lVar, int i10) {
        try {
            lVar.m(i10);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
