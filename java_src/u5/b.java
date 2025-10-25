package u5;

import android.os.IBinder;
import java.lang.reflect.Field;
import n5.q;
import u5.a;
/* loaded from: classes.dex */
public final class b extends a.AbstractBinderC0341a {

    /* renamed from: a  reason: collision with root package name */
    private final Object f30815a;

    private b(Object obj) {
        this.f30815a = obj;
    }

    public static a e1(Object obj) {
        return new b(obj);
    }

    public static Object k(a aVar) {
        if (aVar instanceof b) {
            return ((b) aVar).f30815a;
        }
        IBinder asBinder = aVar.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i10 = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i10++;
                field = field2;
            }
        }
        if (i10 == 1) {
            q.k(field);
            if (!field.isAccessible()) {
                field.setAccessible(true);
                try {
                    return field.get(asBinder);
                } catch (IllegalAccessException e10) {
                    throw new IllegalArgumentException("Could not access the field in remoteBinder.", e10);
                } catch (NullPointerException e11) {
                    throw new IllegalArgumentException("Binder object is null.", e11);
                }
            }
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        throw new IllegalArgumentException("Unexpected number of IObjectWrapper declared fields: " + declaredFields.length);
    }
}
