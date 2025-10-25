package z4;

import b3.e3;
import java.util.Collections;
import java.util.List;
import y4.e0;
import y4.w;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final List f33436a;

    /* renamed from: b  reason: collision with root package name */
    public final int f33437b;

    /* renamed from: c  reason: collision with root package name */
    public final int f33438c;

    /* renamed from: d  reason: collision with root package name */
    public final int f33439d;

    /* renamed from: e  reason: collision with root package name */
    public final float f33440e;

    /* renamed from: f  reason: collision with root package name */
    public final int f33441f;

    /* renamed from: g  reason: collision with root package name */
    public final int f33442g;

    /* renamed from: h  reason: collision with root package name */
    public final int f33443h;

    /* renamed from: i  reason: collision with root package name */
    public final String f33444i;

    private f(List list, int i10, int i11, int i12, float f10, String str, int i13, int i14, int i15) {
        this.f33436a = list;
        this.f33437b = i10;
        this.f33438c = i11;
        this.f33439d = i12;
        this.f33440e = f10;
        this.f33444i = str;
        this.f33441f = i13;
        this.f33442g = i14;
        this.f33443h = i15;
    }

    public static f a(e0 e0Var) {
        List singletonList;
        int i10;
        int i11;
        try {
            e0Var.U(21);
            int G = e0Var.G() & 3;
            int G2 = e0Var.G();
            int f10 = e0Var.f();
            int i12 = 0;
            int i13 = 0;
            for (int i14 = 0; i14 < G2; i14++) {
                e0Var.U(1);
                int M = e0Var.M();
                for (int i15 = 0; i15 < M; i15++) {
                    int M2 = e0Var.M();
                    i13 += M2 + 4;
                    e0Var.U(M2);
                }
            }
            e0Var.T(f10);
            byte[] bArr = new byte[i13];
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            int i19 = -1;
            int i20 = -1;
            float f11 = 1.0f;
            String str = null;
            int i21 = 0;
            int i22 = 0;
            while (i21 < G2) {
                int G3 = e0Var.G() & 63;
                int M3 = e0Var.M();
                int i23 = i12;
                while (i23 < M3) {
                    int M4 = e0Var.M();
                    byte[] bArr2 = y4.w.f32972a;
                    int i24 = G2;
                    System.arraycopy(bArr2, i12, bArr, i22, bArr2.length);
                    int length = i22 + bArr2.length;
                    System.arraycopy(e0Var.e(), e0Var.f(), bArr, length, M4);
                    if (G3 == 33 && i23 == 0) {
                        w.a h10 = y4.w.h(bArr, length, length + M4);
                        int i25 = h10.f32983h;
                        i17 = h10.f32984i;
                        int i26 = h10.f32986k;
                        int i27 = h10.f32987l;
                        int i28 = h10.f32988m;
                        float f12 = h10.f32985j;
                        i10 = G3;
                        i11 = M3;
                        i16 = i25;
                        i20 = i28;
                        str = y4.e.c(h10.f32976a, h10.f32977b, h10.f32978c, h10.f32979d, h10.f32980e, h10.f32981f);
                        i19 = i27;
                        f11 = f12;
                        i18 = i26;
                    } else {
                        i10 = G3;
                        i11 = M3;
                    }
                    i22 = length + M4;
                    e0Var.U(M4);
                    i23++;
                    G2 = i24;
                    G3 = i10;
                    M3 = i11;
                    i12 = 0;
                }
                i21++;
                i12 = 0;
            }
            if (i13 == 0) {
                singletonList = Collections.emptyList();
            } else {
                singletonList = Collections.singletonList(bArr);
            }
            return new f(singletonList, G + 1, i16, i17, f11, str, i18, i19, i20);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw e3.a("Error parsing HEVC config", e10);
        }
    }
}
