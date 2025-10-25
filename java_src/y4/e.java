package y4;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f32866a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f32867b = {"", "A", "B", "C"};

    public static String a(int i10, int i11, int i12) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }

    public static List b(boolean z10) {
        return Collections.singletonList(z10 ? new byte[]{1} : new byte[]{0});
    }

    public static String c(int i10, boolean z10, int i11, int i12, int[] iArr, int i13) {
        char c10;
        Object[] objArr = new Object[5];
        objArr[0] = f32867b[i10];
        objArr[1] = Integer.valueOf(i11);
        objArr[2] = Integer.valueOf(i12);
        if (z10) {
            c10 = 'H';
        } else {
            c10 = 'L';
        }
        objArr[3] = Character.valueOf(c10);
        objArr[4] = Integer.valueOf(i13);
        StringBuilder sb2 = new StringBuilder(q0.C("hvc1.%s%d.%X.%c%d", objArr));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i14 = 0; i14 < length; i14++) {
            sb2.append(String.format(".%02X", Integer.valueOf(iArr[i14])));
        }
        return sb2.toString();
    }

    public static byte[] d(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = f32866a;
        byte[] bArr3 = new byte[bArr2.length + i11];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i10, bArr3, bArr2.length, i11);
        return bArr3;
    }

    private static int e(byte[] bArr, int i10) {
        int length = bArr.length - f32866a.length;
        while (i10 <= length) {
            if (f(bArr, i10)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    private static boolean f(byte[] bArr, int i10) {
        if (bArr.length - i10 <= f32866a.length) {
            return false;
        }
        int i11 = 0;
        while (true) {
            byte[] bArr2 = f32866a;
            if (i11 < bArr2.length) {
                if (bArr[i10 + i11] != bArr2[i11]) {
                    return false;
                }
                i11++;
            } else {
                return true;
            }
        }
    }

    public static Pair g(byte[] bArr) {
        e0 e0Var = new e0(bArr);
        e0Var.T(9);
        int G = e0Var.G();
        e0Var.T(20);
        return Pair.create(Integer.valueOf(e0Var.K()), Integer.valueOf(G));
    }

    public static boolean h(List list) {
        if (list.size() != 1 || ((byte[]) list.get(0)).length != 1 || ((byte[]) list.get(0))[0] != 1) {
            return false;
        }
        return true;
    }

    public static byte[][] i(byte[] bArr) {
        int length;
        if (!f(bArr, 0)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        do {
            arrayList.add(Integer.valueOf(i10));
            i10 = e(bArr, i10 + f32866a.length);
        } while (i10 != -1);
        byte[][] bArr2 = new byte[arrayList.size()];
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            int intValue = ((Integer) arrayList.get(i11)).intValue();
            if (i11 < arrayList.size() - 1) {
                length = ((Integer) arrayList.get(i11 + 1)).intValue();
            } else {
                length = bArr.length;
            }
            int i12 = length - intValue;
            byte[] bArr3 = new byte[i12];
            System.arraycopy(bArr, intValue, bArr3, 0, i12);
            bArr2[i11] = bArr3;
        }
        return bArr2;
    }
}
