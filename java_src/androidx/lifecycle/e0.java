package androidx.lifecycle;

import android.os.Bundle;
import h1.d;
import java.util.Map;
/* loaded from: classes.dex */
public final class e0 implements d.c {

    /* renamed from: a  reason: collision with root package name */
    private final h1.d f2955a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2956b;

    /* renamed from: c  reason: collision with root package name */
    private Bundle f2957c;

    /* renamed from: d  reason: collision with root package name */
    private final xc.d f2958d;

    /* loaded from: classes.dex */
    static final class a extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ m0 f2959e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(m0 m0Var) {
            super(0);
            this.f2959e = m0Var;
        }

        @Override // id.a
        /* renamed from: b */
        public final f0 invoke() {
            return d0.e(this.f2959e);
        }
    }

    public e0(h1.d savedStateRegistry, m0 viewModelStoreOwner) {
        xc.d a10;
        kotlin.jvm.internal.m.e(savedStateRegistry, "savedStateRegistry");
        kotlin.jvm.internal.m.e(viewModelStoreOwner, "viewModelStoreOwner");
        this.f2955a = savedStateRegistry;
        a10 = xc.f.a(new a(viewModelStoreOwner));
        this.f2958d = a10;
    }

    private final f0 c() {
        return (f0) this.f2958d.getValue();
    }

    @Override // h1.d.c
    public Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f2957c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry entry : c().e().entrySet()) {
            String str = (String) entry.getKey();
            Bundle a10 = ((a0) entry.getValue()).c().a();
            if (!kotlin.jvm.internal.m.a(a10, Bundle.EMPTY)) {
                bundle.putBundle(str, a10);
            }
        }
        this.f2956b = false;
        return bundle;
    }

    public final Bundle b(String key) {
        Bundle bundle;
        kotlin.jvm.internal.m.e(key, "key");
        d();
        Bundle bundle2 = this.f2957c;
        if (bundle2 != null) {
            bundle = bundle2.getBundle(key);
        } else {
            bundle = null;
        }
        Bundle bundle3 = this.f2957c;
        if (bundle3 != null) {
            bundle3.remove(key);
        }
        Bundle bundle4 = this.f2957c;
        boolean z10 = false;
        if (bundle4 != null && bundle4.isEmpty()) {
            z10 = true;
        }
        if (z10) {
            this.f2957c = null;
        }
        return bundle;
    }

    public final void d() {
        if (!this.f2956b) {
            Bundle b10 = this.f2955a.b("androidx.lifecycle.internal.SavedStateHandlesProvider");
            Bundle bundle = new Bundle();
            Bundle bundle2 = this.f2957c;
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
            if (b10 != null) {
                bundle.putAll(b10);
            }
            this.f2957c = bundle;
            this.f2956b = true;
            c();
        }
    }
}
