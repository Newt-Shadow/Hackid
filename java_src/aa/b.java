package aa;

import aa.j;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f224a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f225b;

    private b(int i10, byte[] bArr) {
        this.f224a = i10;
        this.f225b = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b[] b(byte[] bArr, j jVar, f fVar) {
        int i10;
        if (bArr.length == jVar.h()) {
            j.b f10 = jVar.f(fVar);
            j.a[] a10 = f10.a();
            int i11 = 0;
            for (j.a aVar : a10) {
                i11 += aVar.a();
            }
            b[] bVarArr = new b[i11];
            int i12 = 0;
            for (j.a aVar2 : a10) {
                int i13 = 0;
                while (i13 < aVar2.a()) {
                    int b10 = aVar2.b();
                    bVarArr[i12] = new b(b10, new byte[f10.b() + b10]);
                    i13++;
                    i12++;
                }
            }
            int length = bVarArr[0].f225b.length;
            int i14 = i11 - 1;
            while (i14 >= 0 && bVarArr[i14].f225b.length != length) {
                i14--;
            }
            int i15 = i14 + 1;
            int b11 = length - f10.b();
            int i16 = 0;
            for (int i17 = 0; i17 < b11; i17++) {
                int i18 = 0;
                while (i18 < i12) {
                    bVarArr[i18].f225b[i17] = bArr[i16];
                    i18++;
                    i16++;
                }
            }
            int i19 = i15;
            while (i19 < i12) {
                bVarArr[i19].f225b[b11] = bArr[i16];
                i19++;
                i16++;
            }
            int length2 = bVarArr[0].f225b.length;
            while (b11 < length2) {
                int i20 = 0;
                while (i20 < i12) {
                    if (i20 < i15) {
                        i10 = b11;
                    } else {
                        i10 = b11 + 1;
                    }
                    bVarArr[i20].f225b[i10] = bArr[i16];
                    i20++;
                    i16++;
                }
                b11++;
            }
            return bVarArr;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] a() {
        return this.f225b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f224a;
    }
}
