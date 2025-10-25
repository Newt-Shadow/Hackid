package k7;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final Object f24806a;

    /* renamed from: b  reason: collision with root package name */
    private final c f24807b;

    /* loaded from: classes.dex */
    private static class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private final Class f24808a;

        private Bundle b(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("ComponentDiscovery", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.f24808a), 128);
                if (serviceInfo == null) {
                    Log.w("ComponentDiscovery", this.f24808a + " has no service info.");
                    return null;
                }
                return serviceInfo.metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("ComponentDiscovery", "Application info not found.");
                return null;
            }
        }

        @Override // k7.f.c
        /* renamed from: c */
        public List a(Context context) {
            Bundle b10 = b(context);
            if (b10 == null) {
                Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : b10.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(b10.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }

        private b(Class cls) {
            this.f24808a = cls;
        }
    }

    /* loaded from: classes.dex */
    interface c {
        List a(Object obj);
    }

    f(Object obj, c cVar) {
        this.f24806a = obj;
        this.f24807b = cVar;
    }

    public static f c(Context context, Class cls) {
        return new f(context, new b(cls));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ComponentRegistrar d(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                return (ComponentRegistrar) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new v(String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
        } catch (ClassNotFoundException unused) {
            Log.w("ComponentDiscovery", String.format("Class %s is not an found.", str));
            return null;
        } catch (IllegalAccessException e10) {
            throw new v(String.format("Could not instantiate %s.", str), e10);
        } catch (InstantiationException e11) {
            throw new v(String.format("Could not instantiate %s.", str), e11);
        } catch (NoSuchMethodException e12) {
            throw new v(String.format("Could not instantiate %s", str), e12);
        } catch (InvocationTargetException e13) {
            throw new v(String.format("Could not instantiate %s", str), e13);
        }
    }

    public List b() {
        ArrayList arrayList = new ArrayList();
        for (final String str : this.f24807b.a(this.f24806a)) {
            arrayList.add(new k8.b() { // from class: k7.e
                @Override // k8.b
                public final Object get() {
                    ComponentRegistrar d10;
                    d10 = f.d(str);
                    return d10;
                }
            });
        }
        return arrayList;
    }
}
