package h1;

import android.os.Bundle;
import androidx.lifecycle.i;
import androidx.lifecycle.k;
import androidx.lifecycle.m;
import h1.b;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n.b;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: g  reason: collision with root package name */
    private static final b f16717g = new b(null);

    /* renamed from: b  reason: collision with root package name */
    private boolean f16719b;

    /* renamed from: c  reason: collision with root package name */
    private Bundle f16720c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f16721d;

    /* renamed from: e  reason: collision with root package name */
    private b.C0181b f16722e;

    /* renamed from: a  reason: collision with root package name */
    private final n.b f16718a = new n.b();

    /* renamed from: f  reason: collision with root package name */
    private boolean f16723f = true;

    /* loaded from: classes.dex */
    public interface a {
        void a(f fVar);
    }

    /* loaded from: classes.dex */
    private static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        Bundle a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(d this$0, m mVar, i.a event) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(mVar, "<anonymous parameter 0>");
        kotlin.jvm.internal.m.e(event, "event");
        if (event == i.a.ON_START) {
            this$0.f16723f = true;
        } else if (event == i.a.ON_STOP) {
            this$0.f16723f = false;
        }
    }

    public final Bundle b(String key) {
        Bundle bundle;
        kotlin.jvm.internal.m.e(key, "key");
        if (this.f16721d) {
            Bundle bundle2 = this.f16720c;
            if (bundle2 == null) {
                return null;
            }
            if (bundle2 != null) {
                bundle = bundle2.getBundle(key);
            } else {
                bundle = null;
            }
            Bundle bundle3 = this.f16720c;
            if (bundle3 != null) {
                bundle3.remove(key);
            }
            Bundle bundle4 = this.f16720c;
            boolean z10 = false;
            if (bundle4 != null && !bundle4.isEmpty()) {
                z10 = true;
            }
            if (!z10) {
                this.f16720c = null;
            }
            return bundle;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component".toString());
    }

    public final c c(String key) {
        kotlin.jvm.internal.m.e(key, "key");
        Iterator it = this.f16718a.iterator();
        while (it.hasNext()) {
            Map.Entry components = (Map.Entry) it.next();
            kotlin.jvm.internal.m.d(components, "components");
            c cVar = (c) components.getValue();
            if (kotlin.jvm.internal.m.a((String) components.getKey(), key)) {
                return cVar;
            }
        }
        return null;
    }

    public final void e(i lifecycle) {
        kotlin.jvm.internal.m.e(lifecycle, "lifecycle");
        if (!this.f16719b) {
            lifecycle.a(new k() { // from class: h1.c
                @Override // androidx.lifecycle.k
                public final void a(m mVar, i.a aVar) {
                    d.d(d.this, mVar, aVar);
                }
            });
            this.f16719b = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already attached.".toString());
    }

    public final void f(Bundle bundle) {
        Bundle bundle2;
        if (this.f16719b) {
            if (!this.f16721d) {
                if (bundle != null) {
                    bundle2 = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
                } else {
                    bundle2 = null;
                }
                this.f16720c = bundle2;
                this.f16721d = true;
                return;
            }
            throw new IllegalStateException("SavedStateRegistry was already restored.".toString());
        }
        throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).".toString());
    }

    public final void g(Bundle outBundle) {
        kotlin.jvm.internal.m.e(outBundle, "outBundle");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f16720c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        b.d i10 = this.f16718a.i();
        kotlin.jvm.internal.m.d(i10, "this.components.iteratorWithAdditions()");
        while (i10.hasNext()) {
            Map.Entry entry = (Map.Entry) i10.next();
            bundle.putBundle((String) entry.getKey(), ((c) entry.getValue()).a());
        }
        if (!bundle.isEmpty()) {
            outBundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle);
        }
    }

    public final void h(String key, c provider) {
        boolean z10;
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(provider, "provider");
        if (((c) this.f16718a.n(key, provider)) == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return;
        }
        throw new IllegalArgumentException("SavedStateProvider with the given key is already registered".toString());
    }

    public final void i(Class clazz) {
        kotlin.jvm.internal.m.e(clazz, "clazz");
        if (this.f16723f) {
            b.C0181b c0181b = this.f16722e;
            if (c0181b == null) {
                c0181b = new b.C0181b(this);
            }
            this.f16722e = c0181b;
            try {
                clazz.getDeclaredConstructor(new Class[0]);
                b.C0181b c0181b2 = this.f16722e;
                if (c0181b2 != null) {
                    String name = clazz.getName();
                    kotlin.jvm.internal.m.d(name, "clazz.name");
                    c0181b2.b(name);
                    return;
                }
                return;
            } catch (NoSuchMethodException e10) {
                throw new IllegalArgumentException("Class " + clazz.getSimpleName() + " must have default constructor in order to be automatically recreated", e10);
            }
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState".toString());
    }
}
