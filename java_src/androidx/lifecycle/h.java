package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.i;
import h1.d;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f2966a = new h();

    /* loaded from: classes.dex */
    public static final class a implements d.a {
        @Override // h1.d.a
        public void a(h1.f owner) {
            kotlin.jvm.internal.m.e(owner, "owner");
            if (owner instanceof m0) {
                l0 viewModelStore = ((m0) owner).getViewModelStore();
                h1.d savedStateRegistry = owner.getSavedStateRegistry();
                for (String str : viewModelStore.c()) {
                    j0 b10 = viewModelStore.b(str);
                    kotlin.jvm.internal.m.b(b10);
                    h.a(b10, savedStateRegistry, owner.getLifecycle());
                }
                if (!viewModelStore.c().isEmpty()) {
                    savedStateRegistry.i(a.class);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner".toString());
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements k {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f2967a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h1.d f2968b;

        b(i iVar, h1.d dVar) {
            this.f2967a = iVar;
            this.f2968b = dVar;
        }

        @Override // androidx.lifecycle.k
        public void a(m source, i.a event) {
            kotlin.jvm.internal.m.e(source, "source");
            kotlin.jvm.internal.m.e(event, "event");
            if (event == i.a.ON_START) {
                this.f2967a.c(this);
                this.f2968b.i(a.class);
            }
        }
    }

    private h() {
    }

    public static final void a(j0 viewModel, h1.d registry, i lifecycle) {
        kotlin.jvm.internal.m.e(viewModel, "viewModel");
        kotlin.jvm.internal.m.e(registry, "registry");
        kotlin.jvm.internal.m.e(lifecycle, "lifecycle");
        c0 c0Var = (c0) viewModel.c("androidx.lifecycle.savedstate.vm.tag");
        if (c0Var != null && !c0Var.e()) {
            c0Var.b(registry, lifecycle);
            f2966a.c(registry, lifecycle);
        }
    }

    public static final c0 b(h1.d registry, i lifecycle, String str, Bundle bundle) {
        kotlin.jvm.internal.m.e(registry, "registry");
        kotlin.jvm.internal.m.e(lifecycle, "lifecycle");
        kotlin.jvm.internal.m.b(str);
        c0 c0Var = new c0(str, a0.f2930f.a(registry.b(str), bundle));
        c0Var.b(registry, lifecycle);
        f2966a.c(registry, lifecycle);
        return c0Var;
    }

    private final void c(h1.d dVar, i iVar) {
        i.b b10 = iVar.b();
        if (b10 != i.b.INITIALIZED && !b10.b(i.b.STARTED)) {
            iVar.a(new b(iVar, dVar));
        } else {
            dVar.i(a.class);
        }
    }
}
