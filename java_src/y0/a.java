package y0;

import androidx.lifecycle.j0;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f32808a = new a();

    private a() {
    }

    public final j0 a(Class modelClass) {
        m.e(modelClass, "modelClass");
        try {
            Object newInstance = modelClass.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            m.d(newInstance, "{\n            modelClass…).newInstance()\n        }");
            return (j0) newInstance;
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e11);
        } catch (NoSuchMethodException e12) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e12);
        }
    }
}
