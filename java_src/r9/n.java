package r9;

import java.util.EnumMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f29026c = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};

    /* renamed from: a  reason: collision with root package name */
    private final int[] f29027a = new int[4];

    /* renamed from: b  reason: collision with root package name */
    private final StringBuilder f29028b = new StringBuilder();

    private int a(j9.a aVar, int[] iArr, StringBuilder sb2) {
        int[] iArr2 = this.f29027a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int i10 = aVar.i();
        int i11 = iArr[1];
        int i12 = 0;
        for (int i13 = 0; i13 < 5 && i11 < i10; i13++) {
            int k10 = p.k(aVar, iArr2, i11, p.f29036h);
            sb2.append((char) ((k10 % 10) + 48));
            for (int i14 : iArr2) {
                i11 += i14;
            }
            if (k10 >= 10) {
                i12 |= 1 << (4 - i13);
            }
            if (i13 != 4) {
                i11 = aVar.f(aVar.e(i11));
            }
        }
        if (sb2.length() == 5) {
            if (d(sb2.toString()) == c(i12)) {
                return i11;
            }
            throw d9.j.a();
        }
        throw d9.j.a();
    }

    private static int c(int i10) {
        for (int i11 = 0; i11 < 10; i11++) {
            if (i10 == f29026c[i11]) {
                return i11;
            }
        }
        throw d9.j.a();
    }

    private static int d(CharSequence charSequence) {
        int length = charSequence.length();
        int i10 = 0;
        for (int i11 = length - 2; i11 >= 0; i11 -= 2) {
            i10 += charSequence.charAt(i11) - '0';
        }
        int i12 = i10 * 3;
        for (int i13 = length - 1; i13 >= 0; i13 -= 2) {
            i12 += charSequence.charAt(i13) - '0';
        }
        return (i12 * 3) % 10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003b, code lost:
        if (r5.equals("90000") == false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String e(java.lang.String r5) {
        /*
            r0 = 0
            char r1 = r5.charAt(r0)
            r2 = 48
            r3 = 1
            if (r1 == r2) goto L4d
            r2 = 53
            if (r1 == r2) goto L4a
            r2 = 57
            java.lang.String r4 = ""
            if (r1 == r2) goto L15
            goto L4f
        L15:
            int r1 = r5.hashCode()
            r2 = -1
            switch(r1) {
                case 54118329: goto L35;
                case 54395376: goto L2a;
                case 54395377: goto L1f;
                default: goto L1d;
            }
        L1d:
            r0 = r2
            goto L3e
        L1f:
            java.lang.String r0 = "99991"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L28
            goto L1d
        L28:
            r0 = 2
            goto L3e
        L2a:
            java.lang.String r0 = "99990"
            boolean r0 = r5.equals(r0)
            if (r0 != 0) goto L33
            goto L1d
        L33:
            r0 = r3
            goto L3e
        L35:
            java.lang.String r1 = "90000"
            boolean r1 = r5.equals(r1)
            if (r1 != 0) goto L3e
            goto L1d
        L3e:
            switch(r0) {
                case 0: goto L48;
                case 1: goto L45;
                case 2: goto L42;
                default: goto L41;
            }
        L41:
            goto L4f
        L42:
            java.lang.String r5 = "0.00"
            return r5
        L45:
            java.lang.String r5 = "Used"
            return r5
        L48:
            r5 = 0
            return r5
        L4a:
            java.lang.String r4 = "$"
            goto L4f
        L4d:
            java.lang.String r4 = "£"
        L4f:
            java.lang.String r5 = r5.substring(r3)
            int r5 = java.lang.Integer.parseInt(r5)
            int r0 = r5 / 100
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r5 = r5 % 100
            r1 = 10
            if (r5 >= r1) goto L75
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "0"
            r1.append(r2)
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            goto L79
        L75:
            java.lang.String r5 = java.lang.String.valueOf(r5)
        L79:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r4)
            r1.append(r0)
            r0 = 46
            r1.append(r0)
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: r9.n.e(java.lang.String):java.lang.String");
    }

    private static Map f(String str) {
        String e10;
        if (str.length() != 5 || (e10 = e(str)) == null) {
            return null;
        }
        EnumMap enumMap = new EnumMap(d9.o.class);
        enumMap.put((EnumMap) d9.o.SUGGESTED_PRICE, (d9.o) e10);
        return enumMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d9.n b(int i10, j9.a aVar, int[] iArr) {
        StringBuilder sb2 = this.f29028b;
        sb2.setLength(0);
        int a10 = a(aVar, iArr, sb2);
        String sb3 = sb2.toString();
        Map f10 = f(sb3);
        float f11 = i10;
        d9.n nVar = new d9.n(sb3, null, new d9.p[]{new d9.p((iArr[0] + iArr[1]) / 2.0f, f11), new d9.p(a10, f11)}, d9.a.UPC_EAN_EXTENSION);
        if (f10 != null) {
            nVar.g(f10);
        }
        return nVar;
    }
}
