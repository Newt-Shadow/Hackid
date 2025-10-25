package androidx.startup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import i1.b;
import i1.c;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: d  reason: collision with root package name */
    private static volatile a f3469d;

    /* renamed from: e  reason: collision with root package name */
    private static final Object f3470e = new Object();

    /* renamed from: c  reason: collision with root package name */
    final Context f3473c;

    /* renamed from: b  reason: collision with root package name */
    final Set f3472b = new HashSet();

    /* renamed from: a  reason: collision with root package name */
    final Map f3471a = new HashMap();

    a(Context context) {
        this.f3473c = context.getApplicationContext();
    }

    private Object d(Class cls, Set set) {
        Object obj;
        if (k1.a.h()) {
            try {
                k1.a.c(cls.getSimpleName());
            } finally {
                k1.a.f();
            }
        }
        if (!set.contains(cls)) {
            if (!this.f3471a.containsKey(cls)) {
                set.add(cls);
                i1.a aVar = (i1.a) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                List<Class> a10 = aVar.a();
                if (!a10.isEmpty()) {
                    for (Class cls2 : a10) {
                        if (!this.f3471a.containsKey(cls2)) {
                            d(cls2, set);
                        }
                    }
                }
                obj = aVar.b(this.f3473c);
                set.remove(cls);
                this.f3471a.put(cls, obj);
            } else {
                obj = this.f3471a.get(cls);
            }
            return obj;
        }
        throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
    }

    public static a e(Context context) {
        if (f3469d == null) {
            synchronized (f3470e) {
                if (f3469d == null) {
                    f3469d = new a(context);
                }
            }
        }
        return f3469d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        try {
            try {
                k1.a.c("Startup");
                b(this.f3473c.getPackageManager().getProviderInfo(new ComponentName(this.f3473c.getPackageName(), InitializationProvider.class.getName()), 128).metaData);
            } catch (PackageManager.NameNotFoundException e10) {
                throw new c(e10);
            }
        } finally {
            k1.a.f();
        }
    }

    void b(Bundle bundle) {
        String string = this.f3473c.getString(b.f17064a);
        if (bundle != null) {
            try {
                HashSet hashSet = new HashSet();
                for (String str : bundle.keySet()) {
                    if (string.equals(bundle.getString(str, null))) {
                        Class<?> cls = Class.forName(str);
                        if (i1.a.class.isAssignableFrom(cls)) {
                            this.f3472b.add(cls);
                        }
                    }
                }
                for (Class cls2 : this.f3472b) {
                    d(cls2, hashSet);
                }
            } catch (ClassNotFoundException e10) {
                throw new c(e10);
            }
        }
    }

    Object c(Class cls) {
        Object obj;
        synchronized (f3470e) {
            obj = this.f3471a.get(cls);
            if (obj == null) {
                obj = d(cls, new HashSet());
            }
        }
        return obj;
    }

    public Object f(Class cls) {
        return c(cls);
    }

    public boolean g(Class cls) {
        return this.f3472b.contains(cls);
    }
}
