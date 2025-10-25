package n9;

import n9.e;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f26517a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f26518b;

    private b(int i10, byte[] bArr) {
        this.f26517a = i10;
        this.f26518b = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b[] b(byte[] bArr, e eVar) {
        boolean z10;
        int i10;
        int i11;
        e.c d10 = eVar.d();
        e.b[] a10 = d10.a();
        int i12 = 0;
        for (e.b bVar : a10) {
            i12 += bVar.a();
        }
        b[] bVarArr = new b[i12];
        int i13 = 0;
        for (e.b bVar2 : a10) {
            int i14 = 0;
            while (i14 < bVar2.a()) {
                int b10 = bVar2.b();
                bVarArr[i13] = new b(b10, new byte[d10.b() + b10]);
                i14++;
                i13++;
            }
        }
        int length = bVarArr[0].f26518b.length - d10.b();
        int i15 = length - 1;
        int i16 = 0;
        for (int i17 = 0; i17 < i15; i17++) {
            int i18 = 0;
            while (i18 < i13) {
                bVarArr[i18].f26518b[i17] = bArr[i16];
                i18++;
                i16++;
            }
        }
        if (eVar.i() == 24) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            i10 = 8;
        } else {
            i10 = i13;
        }
        int i19 = 0;
        while (i19 < i10) {
            bVarArr[i19].f26518b[i15] = bArr[i16];
            i19++;
            i16++;
        }
        int length2 = bVarArr[0].f26518b.length;
        while (length < length2) {
            int i20 = 0;
            while (i20 < i13) {
                if (z10) {
                    i11 = (i20 + 8) % i13;
                } else {
                    i11 = i20;
                }
                bVarArr[i11].f26518b[(z10 && i11 > 7) ? length - 1 : length] = bArr[i16];
                i20++;
                i16++;
            }
            length++;
        }
        if (i16 == bArr.length) {
            return bVarArr;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] a() {
        return this.f26518b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f26517a;
    }
}
