package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.k0;
import java.lang.reflect.Constructor;
import java.util.List;
/* loaded from: classes.dex */
public final class g0 extends k0.e implements k0.c {

    /* renamed from: b  reason: collision with root package name */
    private Application f2961b;

    /* renamed from: c  reason: collision with root package name */
    private final k0.c f2962c;

    /* renamed from: d  reason: collision with root package name */
    private Bundle f2963d;

    /* renamed from: e  reason: collision with root package name */
    private i f2964e;

    /* renamed from: f  reason: collision with root package name */
    private h1.d f2965f;

    public g0(Application application, h1.f owner, Bundle bundle) {
        k0.a aVar;
        kotlin.jvm.internal.m.e(owner, "owner");
        this.f2965f = owner.getSavedStateRegistry();
        this.f2964e = owner.getLifecycle();
        this.f2963d = bundle;
        this.f2961b = application;
        if (application != null) {
            aVar = k0.a.f2986f.a(application);
        } else {
            aVar = new k0.a();
        }
        this.f2962c = aVar;
    }

    @Override // androidx.lifecycle.k0.c
    public j0 a(Class modelClass) {
        kotlin.jvm.internal.m.e(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            return e(canonicalName, modelClass);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.k0.c
    public j0 b(Class modelClass, x0.a extras) {
        List list;
        Constructor c10;
        List list2;
        kotlin.jvm.internal.m.e(modelClass, "modelClass");
        kotlin.jvm.internal.m.e(extras, "extras");
        String str = (String) extras.a(k0.d.f2994d);
        if (str != null) {
            if (extras.a(d0.f2952a) != null && extras.a(d0.f2953b) != null) {
                Application application = (Application) extras.a(k0.a.f2988h);
                boolean isAssignableFrom = a.class.isAssignableFrom(modelClass);
                if (!isAssignableFrom || application == null) {
                    list = h0.f2970b;
                    c10 = h0.c(modelClass, list);
                } else {
                    list2 = h0.f2969a;
                    c10 = h0.c(modelClass, list2);
                }
                if (c10 == null) {
                    return this.f2962c.b(modelClass, extras);
                }
                if (isAssignableFrom && application != null) {
                    return h0.d(modelClass, c10, application, d0.b(extras));
                }
                return h0.d(modelClass, c10, d0.b(extras));
            } else if (this.f2964e != null) {
                return e(str, modelClass);
            } else {
                throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
            }
        }
        throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
    }

    @Override // androidx.lifecycle.k0.e
    public void d(j0 viewModel) {
        kotlin.jvm.internal.m.e(viewModel, "viewModel");
        if (this.f2964e != null) {
            h1.d dVar = this.f2965f;
            kotlin.jvm.internal.m.b(dVar);
            i iVar = this.f2964e;
            kotlin.jvm.internal.m.b(iVar);
            h.a(viewModel, dVar, iVar);
        }
    }

    public final j0 e(String key, Class modelClass) {
        List list;
        Constructor c10;
        j0 d10;
        Application application;
        List list2;
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(modelClass, "modelClass");
        i iVar = this.f2964e;
        if (iVar != null) {
            boolean isAssignableFrom = a.class.isAssignableFrom(modelClass);
            if (!isAssignableFrom || this.f2961b == null) {
                list = h0.f2970b;
                c10 = h0.c(modelClass, list);
            } else {
                list2 = h0.f2969a;
                c10 = h0.c(modelClass, list2);
            }
            if (c10 == null) {
                if (this.f2961b != null) {
                    return this.f2962c.a(modelClass);
                }
                return k0.d.f2992b.a().a(modelClass);
            }
            h1.d dVar = this.f2965f;
            kotlin.jvm.internal.m.b(dVar);
            c0 b10 = h.b(dVar, iVar, key, this.f2963d);
            if (isAssignableFrom && (application = this.f2961b) != null) {
                kotlin.jvm.internal.m.b(application);
                d10 = h0.d(modelClass, c10, application, b10.c());
            } else {
                d10 = h0.d(modelClass, c10, b10.c());
            }
            d10.a("androidx.lifecycle.savedstate.vm.tag", b10);
            return d10;
        }
        throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
    }
}
