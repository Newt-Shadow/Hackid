package x0;

import androidx.lifecycle.j0;
import androidx.lifecycle.k0;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class e {
    public static final j0 a(k0.c factory, pd.c modelClass, a extras) {
        m.e(factory, "factory");
        m.e(modelClass, "modelClass");
        m.e(extras, "extras");
        try {
            try {
                return factory.c(modelClass, extras);
            } catch (AbstractMethodError unused) {
                return factory.a(hd.a.a(modelClass));
            }
        } catch (AbstractMethodError unused2) {
            return factory.b(hd.a.a(modelClass), extras);
        }
    }
}
