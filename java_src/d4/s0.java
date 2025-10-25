package d4;

import android.os.Bundle;
import b3.r;
import b3.x1;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class s0 implements b3.r {

    /* renamed from: f  reason: collision with root package name */
    private static final String f14947f = y4.q0.q0(0);

    /* renamed from: g  reason: collision with root package name */
    private static final String f14948g = y4.q0.q0(1);

    /* renamed from: h  reason: collision with root package name */
    public static final r.a f14949h = new r.a() { // from class: d4.r0
        @Override // b3.r.a
        public final b3.r fromBundle(Bundle bundle) {
            s0 d10;
            d10 = s0.d(bundle);
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f14950a;

    /* renamed from: b  reason: collision with root package name */
    public final String f14951b;

    /* renamed from: c  reason: collision with root package name */
    public final int f14952c;

    /* renamed from: d  reason: collision with root package name */
    private final x1[] f14953d;

    /* renamed from: e  reason: collision with root package name */
    private int f14954e;

    public s0(x1... x1VarArr) {
        this("", x1VarArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ s0 d(Bundle bundle) {
        o6.q b10;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(f14947f);
        if (parcelableArrayList == null) {
            b10 = o6.q.D();
        } else {
            b10 = y4.c.b(x1.E0, parcelableArrayList);
        }
        return new s0(bundle.getString(f14948g, ""), (x1[]) b10.toArray(new x1[0]));
    }

    private static void e(String str, String str2, String str3, int i10) {
        y4.r.d("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i10 + ")"));
    }

    private static String f(String str) {
        if (str == null || str.equals("und")) {
            return "";
        }
        return str;
    }

    private static int g(int i10) {
        return i10 | 16384;
    }

    private void h() {
        String f10 = f(this.f14953d[0].f4505c);
        int g10 = g(this.f14953d[0].f4507e);
        int i10 = 1;
        while (true) {
            x1[] x1VarArr = this.f14953d;
            if (i10 < x1VarArr.length) {
                if (!f10.equals(f(x1VarArr[i10].f4505c))) {
                    x1[] x1VarArr2 = this.f14953d;
                    e("languages", x1VarArr2[0].f4505c, x1VarArr2[i10].f4505c, i10);
                    return;
                } else if (g10 != g(this.f14953d[i10].f4507e)) {
                    e("role flags", Integer.toBinaryString(this.f14953d[0].f4507e), Integer.toBinaryString(this.f14953d[i10].f4507e), i10);
                    return;
                } else {
                    i10++;
                }
            } else {
                return;
            }
        }
    }

    public x1 b(int i10) {
        return this.f14953d[i10];
    }

    public int c(x1 x1Var) {
        int i10 = 0;
        while (true) {
            x1[] x1VarArr = this.f14953d;
            if (i10 < x1VarArr.length) {
                if (x1Var == x1VarArr[i10]) {
                    return i10;
                }
                i10++;
            } else {
                return -1;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s0.class != obj.getClass()) {
            return false;
        }
        s0 s0Var = (s0) obj;
        if (this.f14951b.equals(s0Var.f14951b) && Arrays.equals(this.f14953d, s0Var.f14953d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.f14954e == 0) {
            this.f14954e = ((527 + this.f14951b.hashCode()) * 31) + Arrays.hashCode(this.f14953d);
        }
        return this.f14954e;
    }

    public s0(String str, x1... x1VarArr) {
        y4.a.a(x1VarArr.length > 0);
        this.f14951b = str;
        this.f14953d = x1VarArr;
        this.f14950a = x1VarArr.length;
        int k10 = y4.v.k(x1VarArr[0].f4514l);
        this.f14952c = k10 == -1 ? y4.v.k(x1VarArr[0].f4513k) : k10;
        h();
    }
}
