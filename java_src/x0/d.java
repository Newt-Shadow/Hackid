package x0;

import androidx.lifecycle.j0;
import androidx.lifecycle.k0;
import androidx.lifecycle.l0;
import kotlin.jvm.internal.m;
import y0.d;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final l0 f32167a;

    /* renamed from: b  reason: collision with root package name */
    private final k0.c f32168b;

    /* renamed from: c  reason: collision with root package name */
    private final a f32169c;

    public d(l0 store, k0.c factory, a extras) {
        m.e(store, "store");
        m.e(factory, "factory");
        m.e(extras, "extras");
        this.f32167a = store;
        this.f32168b = factory;
        this.f32169c = extras;
    }

    public static /* synthetic */ j0 b(d dVar, pd.c cVar, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = y0.d.f32813a.b(cVar);
        }
        return dVar.a(cVar, str);
    }

    public final j0 a(pd.c modelClass, String key) {
        m.e(modelClass, "modelClass");
        m.e(key, "key");
        j0 b10 = this.f32167a.b(key);
        if (modelClass.d(b10)) {
            k0.c cVar = this.f32168b;
            if (cVar instanceof k0.e) {
                m.b(b10);
                ((k0.e) cVar).d(b10);
            }
            m.c(b10, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel");
            return b10;
        }
        b bVar = new b(this.f32169c);
        bVar.c(d.a.f32814a, key);
        j0 a10 = e.a(this.f32168b, modelClass, bVar);
        this.f32167a.d(key, a10);
        return a10;
    }
}
