package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.i;
import androidx.lifecycle.k0;
import h1.d;
import x0.a;
/* loaded from: classes.dex */
public abstract class d0 {

    /* renamed from: a  reason: collision with root package name */
    public static final a.b f2952a = new b();

    /* renamed from: b  reason: collision with root package name */
    public static final a.b f2953b = new c();

    /* renamed from: c  reason: collision with root package name */
    public static final a.b f2954c = new a();

    /* loaded from: classes.dex */
    public static final class a implements a.b {
        a() {
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements a.b {
        b() {
        }
    }

    /* loaded from: classes.dex */
    public static final class c implements a.b {
        c() {
        }
    }

    /* loaded from: classes.dex */
    public static final class d implements k0.c {
        d() {
        }

        @Override // androidx.lifecycle.k0.c
        public j0 b(Class modelClass, x0.a extras) {
            kotlin.jvm.internal.m.e(modelClass, "modelClass");
            kotlin.jvm.internal.m.e(extras, "extras");
            return new f0();
        }
    }

    private static final a0 a(h1.f fVar, m0 m0Var, String str, Bundle bundle) {
        e0 d10 = d(fVar);
        f0 e10 = e(m0Var);
        a0 a0Var = (a0) e10.e().get(str);
        if (a0Var == null) {
            a0 a10 = a0.f2930f.a(d10.b(str), bundle);
            e10.e().put(str, a10);
            return a10;
        }
        return a0Var;
    }

    public static final a0 b(x0.a aVar) {
        kotlin.jvm.internal.m.e(aVar, "<this>");
        h1.f fVar = (h1.f) aVar.a(f2952a);
        if (fVar != null) {
            m0 m0Var = (m0) aVar.a(f2953b);
            if (m0Var != null) {
                Bundle bundle = (Bundle) aVar.a(f2954c);
                String str = (String) aVar.a(k0.d.f2994d);
                if (str != null) {
                    return a(fVar, m0Var, str, bundle);
                }
                throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
            }
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
    }

    public static final void c(h1.f fVar) {
        boolean z10;
        kotlin.jvm.internal.m.e(fVar, "<this>");
        i.b b10 = fVar.getLifecycle().b();
        if (b10 != i.b.INITIALIZED && b10 != i.b.CREATED) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            if (fVar.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
                e0 e0Var = new e0(fVar.getSavedStateRegistry(), (m0) fVar);
                fVar.getSavedStateRegistry().h("androidx.lifecycle.internal.SavedStateHandlesProvider", e0Var);
                fVar.getLifecycle().a(new b0(e0Var));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public static final e0 d(h1.f fVar) {
        e0 e0Var;
        kotlin.jvm.internal.m.e(fVar, "<this>");
        d.c c10 = fVar.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider");
        if (c10 instanceof e0) {
            e0Var = (e0) c10;
        } else {
            e0Var = null;
        }
        if (e0Var != null) {
            return e0Var;
        }
        throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
    }

    public static final f0 e(m0 m0Var) {
        kotlin.jvm.internal.m.e(m0Var, "<this>");
        return (f0) new k0(m0Var, new d()).b("androidx.lifecycle.internal.SavedStateHandlesVM", f0.class);
    }
}
