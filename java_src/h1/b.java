package h1;

import android.os.Bundle;
import androidx.lifecycle.i;
import androidx.lifecycle.k;
import h1.d;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class b implements k {

    /* renamed from: b  reason: collision with root package name */
    public static final a f16713b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final f f16714a;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* renamed from: h1.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0181b implements d.c {

        /* renamed from: a  reason: collision with root package name */
        private final Set f16715a;

        public C0181b(d registry) {
            m.e(registry, "registry");
            this.f16715a = new LinkedHashSet();
            registry.h("androidx.savedstate.Restarter", this);
        }

        @Override // h1.d.c
        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f16715a));
            return bundle;
        }

        public final void b(String className) {
            m.e(className, "className");
            this.f16715a.add(className);
        }
    }

    public b(f owner) {
        m.e(owner, "owner");
        this.f16714a = owner;
    }

    private final void b(String str) {
        try {
            Class<? extends U> asSubclass = Class.forName(str, false, b.class.getClassLoader()).asSubclass(d.a.class);
            m.d(asSubclass, "{\n                Class.…class.java)\n            }");
            try {
                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    Object newInstance = declaredConstructor.newInstance(new Object[0]);
                    m.d(newInstance, "{\n                constr…wInstance()\n            }");
                    ((d.a) newInstance).a(this.f16714a);
                } catch (Exception e10) {
                    throw new RuntimeException("Failed to instantiate " + str, e10);
                }
            } catch (NoSuchMethodException e11) {
                throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e11);
            }
        } catch (ClassNotFoundException e12) {
            throw new RuntimeException("Class " + str + " wasn't found", e12);
        }
    }

    @Override // androidx.lifecycle.k
    public void a(androidx.lifecycle.m source, i.a event) {
        m.e(source, "source");
        m.e(event, "event");
        if (event == i.a.ON_CREATE) {
            source.getLifecycle().c(this);
            Bundle b10 = this.f16714a.getSavedStateRegistry().b("androidx.savedstate.Restarter");
            if (b10 == null) {
                return;
            }
            ArrayList<String> stringArrayList = b10.getStringArrayList("classes_to_restore");
            if (stringArrayList != null) {
                for (String str : stringArrayList) {
                    b(str);
                }
                return;
            }
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
