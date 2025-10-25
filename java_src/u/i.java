package u;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
/* loaded from: classes.dex */
public abstract class i {
    public static int a(Context context, int i10, int i11) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i10, typedValue, true);
        if (typedValue.resourceId != 0) {
            return i10;
        }
        return i11;
    }

    public static boolean b(TypedArray typedArray, int i10, int i11, boolean z10) {
        return typedArray.getBoolean(i10, typedArray.getBoolean(i11, z10));
    }

    public static Drawable c(TypedArray typedArray, int i10, int i11) {
        Drawable drawable = typedArray.getDrawable(i10);
        if (drawable == null) {
            return typedArray.getDrawable(i11);
        }
        return drawable;
    }

    public static int d(TypedArray typedArray, int i10, int i11, int i12) {
        return typedArray.getInt(i10, typedArray.getInt(i11, i12));
    }

    public static int e(TypedArray typedArray, int i10, int i11, int i12) {
        return typedArray.getResourceId(i10, typedArray.getResourceId(i11, i12));
    }

    public static String f(TypedArray typedArray, int i10, int i11) {
        String string = typedArray.getString(i10);
        if (string == null) {
            return typedArray.getString(i11);
        }
        return string;
    }

    public static CharSequence g(TypedArray typedArray, int i10, int i11) {
        CharSequence text = typedArray.getText(i10);
        if (text == null) {
            return typedArray.getText(i11);
        }
        return text;
    }

    public static CharSequence[] h(TypedArray typedArray, int i10, int i11) {
        CharSequence[] textArray = typedArray.getTextArray(i10);
        if (textArray == null) {
            return typedArray.getTextArray(i11);
        }
        return textArray;
    }
}
