package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
/* loaded from: classes.dex */
public abstract class c {

    /* loaded from: classes.dex */
    static class a {
        static void a(CompoundButton compoundButton, ColorStateList colorStateList) {
            compoundButton.setButtonTintList(colorStateList);
        }

        static void b(CompoundButton compoundButton, PorterDuff.Mode mode) {
            compoundButton.setButtonTintMode(mode);
        }
    }

    /* loaded from: classes.dex */
    static class b {
        static Drawable a(CompoundButton compoundButton) {
            return compoundButton.getButtonDrawable();
        }
    }

    public static Drawable a(CompoundButton compoundButton) {
        return b.a(compoundButton);
    }

    public static void b(CompoundButton compoundButton, ColorStateList colorStateList) {
        a.a(compoundButton, colorStateList);
    }

    public static void c(CompoundButton compoundButton, PorterDuff.Mode mode) {
        a.b(compoundButton, mode);
    }
}
