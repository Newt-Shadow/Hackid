package z4;

import b3.e3;
import java.util.ArrayList;
import java.util.List;
import y4.e0;
import y4.w;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final List f33392a;

    /* renamed from: b  reason: collision with root package name */
    public final int f33393b;

    /* renamed from: c  reason: collision with root package name */
    public final int f33394c;

    /* renamed from: d  reason: collision with root package name */
    public final int f33395d;

    /* renamed from: e  reason: collision with root package name */
    public final float f33396e;

    /* renamed from: f  reason: collision with root package name */
    public final String f33397f;

    private a(List list, int i10, int i11, int i12, float f10, String str) {
        this.f33392a = list;
        this.f33393b = i10;
        this.f33394c = i11;
        this.f33395d = i12;
        this.f33396e = f10;
        this.f33397f = str;
    }

    private static byte[] a(e0 e0Var) {
        int M = e0Var.M();
        int f10 = e0Var.f();
        e0Var.U(M);
        return y4.e.d(e0Var.e(), f10, M);
    }

    public static a b(e0 e0Var) {
        int i10;
        int i11;
        float f10;
        String str;
        try {
            e0Var.U(4);
            int G = (e0Var.G() & 3) + 1;
            if (G != 3) {
                ArrayList arrayList = new ArrayList();
                int G2 = e0Var.G() & 31;
                for (int i12 = 0; i12 < G2; i12++) {
                    arrayList.add(a(e0Var));
                }
                int G3 = e0Var.G();
                for (int i13 = 0; i13 < G3; i13++) {
                    arrayList.add(a(e0Var));
                }
                if (G2 > 0) {
                    w.c l10 = y4.w.l((byte[]) arrayList.get(0), G, ((byte[]) arrayList.get(0)).length);
                    int i14 = l10.f32997f;
                    int i15 = l10.f32998g;
                    float f11 = l10.f32999h;
                    str = y4.e.a(l10.f32992a, l10.f32993b, l10.f32994c);
                    i10 = i14;
                    i11 = i15;
                    f10 = f11;
                } else {
                    i10 = -1;
                    i11 = -1;
                    f10 = 1.0f;
                    str = null;
                }
                return new a(arrayList, G, i10, i11, f10, str);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw e3.a("Error parsing AVC config", e10);
        }
    }
}
