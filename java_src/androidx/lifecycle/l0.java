package androidx.lifecycle;

import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class l0 {

    /* renamed from: a  reason: collision with root package name */
    private final Map f2995a = new LinkedHashMap();

    public final void a() {
        for (j0 j0Var : this.f2995a.values()) {
            j0Var.b();
        }
        this.f2995a.clear();
    }

    public final j0 b(String key) {
        kotlin.jvm.internal.m.e(key, "key");
        return (j0) this.f2995a.get(key);
    }

    public final Set c() {
        return new HashSet(this.f2995a.keySet());
    }

    public final void d(String key, j0 viewModel) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(viewModel, "viewModel");
        j0 j0Var = (j0) this.f2995a.put(key, viewModel);
        if (j0Var != null) {
            j0Var.b();
        }
    }
}
