package q1;

import android.graphics.Rect;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f27943a;

    /* renamed from: b  reason: collision with root package name */
    private final int f27944b;

    /* renamed from: c  reason: collision with root package name */
    private final int f27945c;

    /* renamed from: d  reason: collision with root package name */
    private final int f27946d;

    public b(int i10, int i11, int i12, int i13) {
        this.f27943a = i10;
        this.f27944b = i11;
        this.f27945c = i12;
        this.f27946d = i13;
        if (!(i10 <= i12)) {
            throw new IllegalArgumentException(("Left must be less than or equal to right, left: " + i10 + ", right: " + i12).toString());
        }
        if (i11 <= i13) {
            return;
        }
        throw new IllegalArgumentException(("top must be less than or equal to bottom, top: " + i11 + ", bottom: " + i13).toString());
    }

    public final int a() {
        return this.f27946d - this.f27944b;
    }

    public final int b() {
        return this.f27943a;
    }

    public final int c() {
        return this.f27944b;
    }

    public final int d() {
        return this.f27945c - this.f27943a;
    }

    public final boolean e() {
        if (a() == 0 && d() == 0) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!m.a(b.class, cls)) {
            return false;
        }
        m.c(obj, "null cannot be cast to non-null type androidx.window.core.Bounds");
        b bVar = (b) obj;
        if (this.f27943a == bVar.f27943a && this.f27944b == bVar.f27944b && this.f27945c == bVar.f27945c && this.f27946d == bVar.f27946d) {
            return true;
        }
        return false;
    }

    public final Rect f() {
        return new Rect(this.f27943a, this.f27944b, this.f27945c, this.f27946d);
    }

    public int hashCode() {
        return (((((this.f27943a * 31) + this.f27944b) * 31) + this.f27945c) * 31) + this.f27946d;
    }

    public String toString() {
        return b.class.getSimpleName() + " { [" + this.f27943a + ',' + this.f27944b + ',' + this.f27945c + ',' + this.f27946d + "] }";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(Rect rect) {
        this(rect.left, rect.top, rect.right, rect.bottom);
        m.e(rect, "rect");
    }
}
