package r9;
/* loaded from: classes.dex */
public final class f extends p {

    /* renamed from: i  reason: collision with root package name */
    private final int[] f29011i = new int[4];

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // r9.p
    public int m(j9.a aVar, int[] iArr, StringBuilder sb2) {
        int[] iArr2 = this.f29011i;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int i10 = aVar.i();
        int i11 = iArr[1];
        for (int i12 = 0; i12 < 4 && i11 < i10; i12++) {
            sb2.append((char) (p.k(aVar, iArr2, i11, p.f29035g) + 48));
            for (int i13 : iArr2) {
                i11 += i13;
            }
        }
        int i14 = p.o(aVar, i11, true, p.f29033e)[1];
        for (int i15 = 0; i15 < 4 && i14 < i10; i15++) {
            sb2.append((char) (p.k(aVar, iArr2, i14, p.f29035g) + 48));
            for (int i16 : iArr2) {
                i14 += i16;
            }
        }
        return i14;
    }

    @Override // r9.p
    d9.a r() {
        return d9.a.EAN_8;
    }
}
