package y4;

import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static Method f32860a;

    public static IBinder a(Bundle bundle, String str) {
        if (q0.f32946a >= 18) {
            return bundle.getBinder(str);
        }
        return b(bundle, str);
    }

    private static IBinder b(Bundle bundle, String str) {
        Method method = f32860a;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("getIBinder", String.class);
                f32860a = method2;
                method2.setAccessible(true);
                method = f32860a;
            } catch (NoSuchMethodException e10) {
                r.g("BundleUtil", "Failed to retrieve getIBinder method", e10);
                return null;
            }
        }
        try {
            return (IBinder) method.invoke(bundle, str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e11) {
            r.g("BundleUtil", "Failed to invoke getIBinder via reflection", e11);
            return null;
        }
    }
}
