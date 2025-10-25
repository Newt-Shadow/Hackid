package y1;

import android.util.Log;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlin.jvm.internal.m;
import pd.c;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f32815a = new a();

    private a() {
    }

    public static final boolean e(String str, id.a block) {
        m.e(block, "block");
        try {
            boolean booleanValue = ((Boolean) block.invoke()).booleanValue();
            if (!booleanValue && str != null) {
                Log.e("ReflectionGuard", str);
            }
            return booleanValue;
        } catch (ClassNotFoundException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ClassNotFound: ");
            if (str == null) {
                str = "";
            }
            sb2.append(str);
            Log.e("ReflectionGuard", sb2.toString());
            return false;
        } catch (NoSuchMethodException unused2) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("NoSuchMethod: ");
            if (str == null) {
                str = "";
            }
            sb3.append(str);
            Log.e("ReflectionGuard", sb3.toString());
            return false;
        }
    }

    public final boolean a(id.a classLoader) {
        m.e(classLoader, "classLoader");
        try {
            classLoader.invoke();
            return true;
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
            return false;
        }
    }

    public final boolean b(Method method, Class clazz) {
        m.e(method, "<this>");
        m.e(clazz, "clazz");
        return method.getReturnType().equals(clazz);
    }

    public final boolean c(Method method, c clazz) {
        m.e(method, "<this>");
        m.e(clazz, "clazz");
        return b(method, hd.a.a(clazz));
    }

    public final boolean d(Method method) {
        m.e(method, "<this>");
        return Modifier.isPublic(method.getModifiers());
    }
}
