package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public abstract class h0 {

    /* renamed from: a  reason: collision with root package name */
    private static final List f2969a;

    /* renamed from: b  reason: collision with root package name */
    private static final List f2970b;

    static {
        List k10;
        List b10;
        k10 = yc.o.k(Application.class, a0.class);
        f2969a = k10;
        b10 = yc.n.b(a0.class);
        f2970b = b10;
    }

    public static final Constructor c(Class modelClass, List signature) {
        List Q;
        kotlin.jvm.internal.m.e(modelClass, "modelClass");
        kotlin.jvm.internal.m.e(signature, "signature");
        Constructor<?>[] constructors = modelClass.getConstructors();
        kotlin.jvm.internal.m.d(constructors, "modelClass.constructors");
        for (Constructor<?> constructor : constructors) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            kotlin.jvm.internal.m.d(parameterTypes, "constructor.parameterTypes");
            Q = yc.k.Q(parameterTypes);
            if (kotlin.jvm.internal.m.a(signature, Q)) {
                kotlin.jvm.internal.m.c(constructor, "null cannot be cast to non-null type java.lang.reflect.Constructor<T of androidx.lifecycle.SavedStateViewModelFactoryKt.findMatchingConstructor>");
                return constructor;
            } else if (signature.size() == Q.size() && Q.containsAll(signature)) {
                throw new UnsupportedOperationException("Class " + modelClass.getSimpleName() + " must have parameters in the proper order: " + signature);
            }
        }
        return null;
    }

    public static final j0 d(Class modelClass, Constructor constructor, Object... params) {
        kotlin.jvm.internal.m.e(modelClass, "modelClass");
        kotlin.jvm.internal.m.e(constructor, "constructor");
        kotlin.jvm.internal.m.e(params, "params");
        try {
            return (j0) constructor.newInstance(Arrays.copyOf(params, params.length));
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Failed to access " + modelClass, e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException("A " + modelClass + " cannot be instantiated.", e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException("An exception happened in constructor of " + modelClass, e12.getCause());
        }
    }
}
