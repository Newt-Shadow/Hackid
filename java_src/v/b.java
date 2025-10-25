package v;

import android.graphics.Insets;
import android.graphics.Rect;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: e  reason: collision with root package name */
    public static final b f31126e = new b(0, 0, 0, 0);

    /* renamed from: a  reason: collision with root package name */
    public final int f31127a;

    /* renamed from: b  reason: collision with root package name */
    public final int f31128b;

    /* renamed from: c  reason: collision with root package name */
    public final int f31129c;

    /* renamed from: d  reason: collision with root package name */
    public final int f31130d;

    /* loaded from: classes.dex */
    static class a {
        static Insets a(int i10, int i11, int i12, int i13) {
            return Insets.of(i10, i11, i12, i13);
        }
    }

    private b(int i10, int i11, int i12, int i13) {
        this.f31127a = i10;
        this.f31128b = i11;
        this.f31129c = i12;
        this.f31130d = i13;
    }

    public static b a(b bVar, b bVar2) {
        return b(Math.max(bVar.f31127a, bVar2.f31127a), Math.max(bVar.f31128b, bVar2.f31128b), Math.max(bVar.f31129c, bVar2.f31129c), Math.max(bVar.f31130d, bVar2.f31130d));
    }

    public static b b(int i10, int i11, int i12, int i13) {
        if (i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) {
            return f31126e;
        }
        return new b(i10, i11, i12, i13);
    }

    public static b c(Rect rect) {
        return b(rect.left, rect.top, rect.right, rect.bottom);
    }

    public static b d(Insets insets) {
        int i10;
        int i11;
        int i12;
        int i13;
        i10 = insets.left;
        i11 = insets.top;
        i12 = insets.right;
        i13 = insets.bottom;
        return b(i10, i11, i12, i13);
    }

    public Insets e() {
        return a.a(this.f31127a, this.f31128b, this.f31129c, this.f31130d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f31130d == bVar.f31130d && this.f31127a == bVar.f31127a && this.f31129c == bVar.f31129c && this.f31128b == bVar.f31128b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f31127a * 31) + this.f31128b) * 31) + this.f31129c) * 31) + this.f31130d;
    }

    public String toString() {
        return "Insets{left=" + this.f31127a + ", top=" + this.f31128b + ", right=" + this.f31129c + ", bottom=" + this.f31130d + '}';
    }
}
