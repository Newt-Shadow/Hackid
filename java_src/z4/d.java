package z4;

import y4.e0;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final int f33419a;

    /* renamed from: b  reason: collision with root package name */
    public final int f33420b;

    /* renamed from: c  reason: collision with root package name */
    public final String f33421c;

    private d(int i10, int i11, String str) {
        this.f33419a = i10;
        this.f33420b = i11;
        this.f33421c = str;
    }

    public static d a(e0 e0Var) {
        String str;
        e0Var.U(2);
        int G = e0Var.G();
        int i10 = G >> 1;
        int G2 = ((e0Var.G() >> 3) & 31) | ((G & 1) << 5);
        if (i10 != 4 && i10 != 5 && i10 != 7) {
            if (i10 == 8) {
                str = "hev1";
            } else if (i10 == 9) {
                str = "avc3";
            } else {
                return null;
            }
        } else {
            str = "dvhe";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        String str2 = ".0";
        sb2.append(".0");
        sb2.append(i10);
        if (G2 >= 10) {
            str2 = ".";
        }
        sb2.append(str2);
        sb2.append(G2);
        return new d(i10, G2, sb2.toString());
    }
}
