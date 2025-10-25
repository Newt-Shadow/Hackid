package r9;
/* loaded from: classes.dex */
public final class e extends p {

    /* renamed from: j  reason: collision with root package name */
    static final int[] f29009j = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};

    /* renamed from: i  reason: collision with root package name */
    private final int[] f29010i = new int[4];

    private static void t(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < 10; i11++) {
            if (i10 == f29009j[i11]) {
                sb2.insert(0, (char) (i11 + 48));
                return;
            }
        }
        throw d9.j.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // r9.p
    public int m(j9.a aVar, int[] iArr, StringBuilder sb2) {
        int[] iArr2 = this.f29010i;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int i10 = aVar.i();
        int i11 = iArr[1];
        int i12 = 0;
        for (int i13 = 0; i13 < 6 && i11 < i10; i13++) {
            int k10 = p.k(aVar, iArr2, i11, p.f29036h);
            sb2.append((char) ((k10 % 10) + 48));
            for (int i14 : iArr2) {
                i11 += i14;
            }
            if (k10 >= 10) {
                i12 |= 1 << (5 - i13);
            }
        }
        t(sb2, i12);
        int i15 = p.o(aVar, i11, true, p.f29033e)[1];
        for (int i16 = 0; i16 < 6 && i15 < i10; i16++) {
            sb2.append((char) (p.k(aVar, iArr2, i15, p.f29035g) + 48));
            for (int i17 : iArr2) {
                i15 += i17;
            }
        }
        return i15;
    }

    @Override // r9.p
    d9.a r() {
        return d9.a.EAN_13;
    }
}
