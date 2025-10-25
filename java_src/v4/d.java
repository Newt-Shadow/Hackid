package v4;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: f  reason: collision with root package name */
    private int f31216f;

    /* renamed from: h  reason: collision with root package name */
    private int f31218h;

    /* renamed from: o  reason: collision with root package name */
    private float f31225o;

    /* renamed from: a  reason: collision with root package name */
    private String f31211a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f31212b = "";

    /* renamed from: c  reason: collision with root package name */
    private Set f31213c = Collections.emptySet();

    /* renamed from: d  reason: collision with root package name */
    private String f31214d = "";

    /* renamed from: e  reason: collision with root package name */
    private String f31215e = null;

    /* renamed from: g  reason: collision with root package name */
    private boolean f31217g = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f31219i = false;

    /* renamed from: j  reason: collision with root package name */
    private int f31220j = -1;

    /* renamed from: k  reason: collision with root package name */
    private int f31221k = -1;

    /* renamed from: l  reason: collision with root package name */
    private int f31222l = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f31223m = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f31224n = -1;

    /* renamed from: p  reason: collision with root package name */
    private int f31226p = -1;

    /* renamed from: q  reason: collision with root package name */
    private boolean f31227q = false;

    private static int B(int i10, String str, String str2, int i11) {
        if (!str.isEmpty() && i10 != -1) {
            if (!str.equals(str2)) {
                return -1;
            }
            return i10 + i11;
        }
        return i10;
    }

    public d A(boolean z10) {
        this.f31221k = z10 ? 1 : 0;
        return this;
    }

    public int a() {
        if (this.f31219i) {
            return this.f31218h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public boolean b() {
        return this.f31227q;
    }

    public int c() {
        if (this.f31217g) {
            return this.f31216f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    public String d() {
        return this.f31215e;
    }

    public float e() {
        return this.f31225o;
    }

    public int f() {
        return this.f31224n;
    }

    public int g() {
        return this.f31226p;
    }

    public int h(String str, String str2, Set set, String str3) {
        if (this.f31211a.isEmpty() && this.f31212b.isEmpty() && this.f31213c.isEmpty() && this.f31214d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int B = B(B(B(0, this.f31211a, str, 1073741824), this.f31212b, str2, 2), this.f31214d, str3, 4);
        if (B == -1 || !set.containsAll(this.f31213c)) {
            return 0;
        }
        return B + (this.f31213c.size() * 4);
    }

    public int i() {
        int i10;
        int i11 = this.f31222l;
        if (i11 == -1 && this.f31223m == -1) {
            return -1;
        }
        int i12 = 0;
        if (i11 == 1) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (this.f31223m == 1) {
            i12 = 2;
        }
        return i10 | i12;
    }

    public boolean j() {
        return this.f31219i;
    }

    public boolean k() {
        return this.f31217g;
    }

    public boolean l() {
        if (this.f31220j == 1) {
            return true;
        }
        return false;
    }

    public boolean m() {
        if (this.f31221k == 1) {
            return true;
        }
        return false;
    }

    public d n(int i10) {
        this.f31218h = i10;
        this.f31219i = true;
        return this;
    }

    public d o(boolean z10) {
        this.f31222l = z10 ? 1 : 0;
        return this;
    }

    public d p(boolean z10) {
        this.f31227q = z10;
        return this;
    }

    public d q(int i10) {
        this.f31216f = i10;
        this.f31217g = true;
        return this;
    }

    public d r(String str) {
        String e10;
        if (str == null) {
            e10 = null;
        } else {
            e10 = n6.c.e(str);
        }
        this.f31215e = e10;
        return this;
    }

    public d s(float f10) {
        this.f31225o = f10;
        return this;
    }

    public d t(int i10) {
        this.f31224n = i10;
        return this;
    }

    public d u(boolean z10) {
        this.f31223m = z10 ? 1 : 0;
        return this;
    }

    public d v(int i10) {
        this.f31226p = i10;
        return this;
    }

    public void w(String[] strArr) {
        this.f31213c = new HashSet(Arrays.asList(strArr));
    }

    public void x(String str) {
        this.f31211a = str;
    }

    public void y(String str) {
        this.f31212b = str;
    }

    public void z(String str) {
        this.f31214d = str;
    }
}
