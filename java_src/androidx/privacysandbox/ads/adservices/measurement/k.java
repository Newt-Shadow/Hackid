package androidx.privacysandbox.ads.adservices.measurement;

import android.adservices.measurement.MeasurementManager;
import android.net.Uri;
import android.view.InputEvent;
import id.Function2;
import td.l0;
import td.m0;
import xc.t;
/* loaded from: classes.dex */
public abstract class k extends b {

    /* renamed from: b  reason: collision with root package name */
    private final MeasurementManager f3090b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f3091a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f3092b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ k f3093c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l lVar, k kVar, ad.e eVar) {
            super(2, eVar);
            this.f3093c = kVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            a aVar = new a(null, this.f3093c, eVar);
            aVar.f3092b = obj;
            return aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.f3091a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            xc.m.b(obj);
            l0 l0Var = (l0) this.f3092b;
            throw null;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((a) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    public k(MeasurementManager mMeasurementManager) {
        kotlin.jvm.internal.m.e(mMeasurementManager, "mMeasurementManager");
        this.f3090b = mMeasurementManager;
    }

    static /* synthetic */ Object h(k kVar, androidx.privacysandbox.ads.adservices.measurement.a aVar, ad.e eVar) {
        ad.e c10;
        c10 = bd.c.c(eVar);
        new td.n(c10, 1).E();
        kVar.i();
        throw null;
    }

    static /* synthetic */ Object j(k kVar, ad.e eVar) {
        ad.e c10;
        Object e10;
        c10 = bd.c.c(eVar);
        td.n nVar = new td.n(c10, 1);
        nVar.E();
        kVar.i().getMeasurementApiStatus(new j(), z.m.a(nVar));
        Object x10 = nVar.x();
        e10 = bd.d.e();
        if (x10 == e10) {
            kotlin.coroutines.jvm.internal.h.c(eVar);
        }
        return x10;
    }

    static /* synthetic */ Object k(k kVar, Uri uri, InputEvent inputEvent, ad.e eVar) {
        ad.e c10;
        Object e10;
        Object e11;
        c10 = bd.c.c(eVar);
        td.n nVar = new td.n(c10, 1);
        nVar.E();
        kVar.i().registerSource(uri, inputEvent, new j(), z.m.a(nVar));
        Object x10 = nVar.x();
        e10 = bd.d.e();
        if (x10 == e10) {
            kotlin.coroutines.jvm.internal.h.c(eVar);
        }
        e11 = bd.d.e();
        if (x10 == e11) {
            return x10;
        }
        return t.f32733a;
    }

    static /* synthetic */ Object l(k kVar, l lVar, ad.e eVar) {
        Object e10;
        Object d10 = m0.d(new a(lVar, kVar, null), eVar);
        e10 = bd.d.e();
        if (d10 == e10) {
            return d10;
        }
        return t.f32733a;
    }

    static /* synthetic */ Object m(k kVar, Uri uri, ad.e eVar) {
        ad.e c10;
        Object e10;
        Object e11;
        c10 = bd.c.c(eVar);
        td.n nVar = new td.n(c10, 1);
        nVar.E();
        kVar.i().registerTrigger(uri, new j(), z.m.a(nVar));
        Object x10 = nVar.x();
        e10 = bd.d.e();
        if (x10 == e10) {
            kotlin.coroutines.jvm.internal.h.c(eVar);
        }
        e11 = bd.d.e();
        if (x10 == e11) {
            return x10;
        }
        return t.f32733a;
    }

    static /* synthetic */ Object n(k kVar, m mVar, ad.e eVar) {
        ad.e c10;
        c10 = bd.c.c(eVar);
        new td.n(c10, 1).E();
        kVar.i();
        throw null;
    }

    static /* synthetic */ Object o(k kVar, n nVar, ad.e eVar) {
        ad.e c10;
        c10 = bd.c.c(eVar);
        new td.n(c10, 1).E();
        kVar.i();
        throw null;
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.b
    public Object a(androidx.privacysandbox.ads.adservices.measurement.a aVar, ad.e eVar) {
        return h(this, aVar, eVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.b
    public Object b(ad.e eVar) {
        return j(this, eVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.b
    public Object c(Uri uri, InputEvent inputEvent, ad.e eVar) {
        return k(this, uri, inputEvent, eVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.b
    public Object d(l lVar, ad.e eVar) {
        return l(this, lVar, eVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.b
    public Object e(Uri uri, ad.e eVar) {
        return m(this, uri, eVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.b
    public Object f(m mVar, ad.e eVar) {
        return n(this, mVar, eVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.b
    public Object g(n nVar, ad.e eVar) {
        return o(this, nVar, eVar);
    }

    protected final MeasurementManager i() {
        return this.f3090b;
    }
}
