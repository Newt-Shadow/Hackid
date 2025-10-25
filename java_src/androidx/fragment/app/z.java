package androidx.fragment.app;

import androidx.fragment.app.p;
/* loaded from: classes.dex */
public abstract class z {

    /* renamed from: a  reason: collision with root package name */
    private static final r.i f2917a = new r.i();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(ClassLoader classLoader, String str) {
        try {
            return p.class.isAssignableFrom(c(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    private static Class c(ClassLoader classLoader, String str) {
        r.i iVar = f2917a;
        r.i iVar2 = (r.i) iVar.get(classLoader);
        if (iVar2 == null) {
            iVar2 = new r.i();
            iVar.put(classLoader, iVar2);
        }
        Class cls = (Class) iVar2.get(str);
        if (cls == null) {
            Class<?> cls2 = Class.forName(str, false, classLoader);
            iVar2.put(str, cls2);
            return cls2;
        }
        return cls;
    }

    public static Class d(ClassLoader classLoader, String str) {
        try {
            return c(classLoader, str);
        } catch (ClassCastException e10) {
            throw new p.l("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e10);
        } catch (ClassNotFoundException e11) {
            throw new p.l("Unable to instantiate fragment " + str + ": make sure class name exists", e11);
        }
    }

    public abstract p a(ClassLoader classLoader, String str);
}
