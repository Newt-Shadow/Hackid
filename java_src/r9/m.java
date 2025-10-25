package r9;

import java.util.EnumMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private final int[] f29024a = new int[4];

    /* renamed from: b  reason: collision with root package name */
    private final StringBuilder f29025b = new StringBuilder();

    private int a(j9.a aVar, int[] iArr, StringBuilder sb2) {
        int[] iArr2 = this.f29024a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int i10 = aVar.i();
        int i11 = iArr[1];
        int i12 = 0;
        for (int i13 = 0; i13 < 2 && i11 < i10; i13++) {
            int k10 = p.k(aVar, iArr2, i11, p.f29036h);
            sb2.append((char) ((k10 % 10) + 48));
            for (int i14 : iArr2) {
                i11 += i14;
            }
            if (k10 >= 10) {
                i12 |= 1 << (1 - i13);
            }
            if (i13 != 1) {
                i11 = aVar.f(aVar.e(i11));
            }
        }
        if (sb2.length() == 2) {
            if (Integer.parseInt(sb2.toString()) % 4 == i12) {
                return i11;
            }
            throw d9.j.a();
        }
        throw d9.j.a();
    }

    private static Map c(String str) {
        if (str.length() != 2) {
            return null;
        }
        EnumMap enumMap = new EnumMap(d9.o.class);
        enumMap.put((EnumMap) d9.o.ISSUE_NUMBER, (d9.o) Integer.valueOf(str));
        return enumMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d9.n b(int i10, j9.a aVar, int[] iArr) {
        StringBuilder sb2 = this.f29025b;
        sb2.setLength(0);
        int a10 = a(aVar, iArr, sb2);
        String sb3 = sb2.toString();
        Map c10 = c(sb3);
        float f10 = i10;
        d9.n nVar = new d9.n(sb3, null, new d9.p[]{new d9.p((iArr[0] + iArr[1]) / 2.0f, f10), new d9.p(a10, f10)}, d9.a.UPC_EAN_EXTENSION);
        if (c10 != null) {
            nVar.g(c10);
        }
        return nVar;
    }
}
