package l1;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
abstract class m0 {

    /* renamed from: a  reason: collision with root package name */
    private static Field f25129a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f25130b;

    public abstract void a(View view);

    public abstract float b(View view);

    public abstract void c(View view);

    public abstract void d(View view, int i10, int i11, int i12, int i13);

    public abstract void e(View view, float f10);

    public void f(View view, int i10) {
        if (!f25130b) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f25129a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewUtilsBase", "fetchViewFlagsField: ");
            }
            f25130b = true;
        }
        Field field = f25129a;
        if (field != null) {
            try {
                f25129a.setInt(view, i10 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    public abstract void g(View view, Matrix matrix);

    public abstract void h(View view, Matrix matrix);
}
