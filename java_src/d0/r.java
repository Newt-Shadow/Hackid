package d0;

import android.os.Build;
import android.view.DisplayCutout;
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private final DisplayCutout f14387a;

    /* loaded from: classes.dex */
    static class a {
        static int a(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetBottom();
        }

        static int b(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetLeft();
        }

        static int c(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetRight();
        }

        static int d(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetTop();
        }
    }

    private r(DisplayCutout displayCutout) {
        this.f14387a = displayCutout;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r e(DisplayCutout displayCutout) {
        if (displayCutout == null) {
            return null;
        }
        return new r(displayCutout);
    }

    public int a() {
        if (Build.VERSION.SDK_INT >= 28) {
            return a.a(this.f14387a);
        }
        return 0;
    }

    public int b() {
        if (Build.VERSION.SDK_INT >= 28) {
            return a.b(this.f14387a);
        }
        return 0;
    }

    public int c() {
        if (Build.VERSION.SDK_INT >= 28) {
            return a.c(this.f14387a);
        }
        return 0;
    }

    public int d() {
        if (Build.VERSION.SDK_INT >= 28) {
            return a.d(this.f14387a);
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && r.class == obj.getClass()) {
            return c0.b.a(this.f14387a, ((r) obj).f14387a);
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        DisplayCutout displayCutout = this.f14387a;
        if (displayCutout != null) {
            hashCode = displayCutout.hashCode();
            return hashCode;
        }
        return 0;
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.f14387a + "}";
    }
}
