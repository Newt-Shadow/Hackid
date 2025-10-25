package t1;

import android.graphics.Rect;
import d0.c1;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private final q1.b f29836a;

    /* renamed from: b  reason: collision with root package name */
    private final c1 f29837b;

    public k(q1.b _bounds, c1 _windowInsetsCompat) {
        kotlin.jvm.internal.m.e(_bounds, "_bounds");
        kotlin.jvm.internal.m.e(_windowInsetsCompat, "_windowInsetsCompat");
        this.f29836a = _bounds;
        this.f29837b = _windowInsetsCompat;
    }

    public final Rect a() {
        return this.f29836a.f();
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
        if (!kotlin.jvm.internal.m.a(k.class, cls)) {
            return false;
        }
        kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type androidx.window.layout.WindowMetrics");
        k kVar = (k) obj;
        if (kotlin.jvm.internal.m.a(this.f29836a, kVar.f29836a) && kotlin.jvm.internal.m.a(this.f29837b, kVar.f29837b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f29836a.hashCode() * 31) + this.f29837b.hashCode();
    }

    public String toString() {
        return "WindowMetrics( bounds=" + this.f29836a + ", windowInsetsCompat=" + this.f29837b + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ k(android.graphics.Rect r1, d0.c1 r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
        /*
            r0 = this;
            r3 = r3 & 2
            if (r3 == 0) goto L12
            d0.c1$a r2 = new d0.c1$a
            r2.<init>()
            d0.c1 r2 = r2.a()
            java.lang.String r3 = "Builder().build()"
            kotlin.jvm.internal.m.d(r2, r3)
        L12:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: t1.k.<init>(android.graphics.Rect, d0.c1, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k(Rect bounds, c1 insets) {
        this(new q1.b(bounds), insets);
        kotlin.jvm.internal.m.e(bounds, "bounds");
        kotlin.jvm.internal.m.e(insets, "insets");
    }
}
