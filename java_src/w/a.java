package w;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: w.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0354a {
        static void a(Drawable drawable, float f10, float f11) {
            drawable.setHotspot(f10, f11);
        }

        static void b(Drawable drawable, int i10, int i11, int i12, int i13) {
            drawable.setHotspotBounds(i10, i11, i12, i13);
        }

        static void c(Drawable drawable, int i10) {
            drawable.setTint(i10);
        }

        static void d(Drawable drawable, ColorStateList colorStateList) {
            drawable.setTintList(colorStateList);
        }

        static void e(Drawable drawable, PorterDuff.Mode mode) {
            drawable.setTintMode(mode);
        }
    }

    /* loaded from: classes.dex */
    static class b {
        static boolean a(Drawable drawable, int i10) {
            return drawable.setLayoutDirection(i10);
        }
    }

    public static boolean a(Drawable drawable) {
        return drawable.isAutoMirrored();
    }

    public static void b(Drawable drawable, boolean z10) {
        drawable.setAutoMirrored(z10);
    }

    public static void c(Drawable drawable, float f10, float f11) {
        C0354a.a(drawable, f10, f11);
    }

    public static void d(Drawable drawable, int i10, int i11, int i12, int i13) {
        C0354a.b(drawable, i10, i11, i12, i13);
    }

    public static boolean e(Drawable drawable, int i10) {
        return b.a(drawable, i10);
    }

    public static void f(Drawable drawable, int i10) {
        C0354a.c(drawable, i10);
    }

    public static void g(Drawable drawable, ColorStateList colorStateList) {
        C0354a.d(drawable, colorStateList);
    }

    public static void h(Drawable drawable, PorterDuff.Mode mode) {
        C0354a.e(drawable, mode);
    }

    public static Drawable i(Drawable drawable) {
        if (drawable instanceof w.b) {
            return ((w.b) drawable).b();
        }
        return drawable;
    }

    public static Drawable j(Drawable drawable) {
        return drawable;
    }
}
