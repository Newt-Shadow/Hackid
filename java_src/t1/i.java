package t1;

import android.app.Activity;
import id.Function2;
import t1.i;
import td.z0;
import vd.v;
import xc.t;
/* loaded from: classes.dex */
public final class i implements f {

    /* renamed from: b  reason: collision with root package name */
    private final l f29827b;

    /* renamed from: c  reason: collision with root package name */
    private final u1.a f29828c;

    /* loaded from: classes.dex */
    static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f29829a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f29830b;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Activity f29832d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: t1.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0313a extends kotlin.jvm.internal.n implements id.a {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ i f29833e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ c0.a f29834f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0313a(i iVar, c0.a aVar) {
                super(0);
                this.f29833e = iVar;
                this.f29834f = aVar;
            }

            public final void b() {
                this.f29833e.f29828c.a(this.f29834f);
            }

            @Override // id.a
            public /* bridge */ /* synthetic */ Object invoke() {
                b();
                return t.f32733a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Activity activity, ad.e eVar) {
            super(2, eVar);
            this.f29832d = activity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void g(v vVar, j jVar) {
            vVar.t(jVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            a aVar = new a(this.f29832d, eVar);
            aVar.f29830b = obj;
            return aVar;
        }

        @Override // id.Function2
        /* renamed from: f */
        public final Object invoke(v vVar, ad.e eVar) {
            return ((a) create(vVar, eVar)).invokeSuspend(t.f32733a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f29829a;
            if (i10 != 0) {
                if (i10 == 1) {
                    xc.m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                xc.m.b(obj);
                final v vVar = (v) this.f29830b;
                c0.a aVar = new c0.a() { // from class: t1.h
                    @Override // c0.a
                    public final void accept(Object obj2) {
                        i.a.g(v.this, (j) obj2);
                    }
                };
                i.this.f29828c.b(this.f29832d, new androidx.privacysandbox.ads.adservices.measurement.j(), aVar);
                C0313a c0313a = new C0313a(i.this, aVar);
                this.f29829a = 1;
                if (vd.t.a(vVar, c0313a, this) == e10) {
                    return e10;
                }
            }
            return t.f32733a;
        }
    }

    public i(l windowMetricsCalculator, u1.a windowBackend) {
        kotlin.jvm.internal.m.e(windowMetricsCalculator, "windowMetricsCalculator");
        kotlin.jvm.internal.m.e(windowBackend, "windowBackend");
        this.f29827b = windowMetricsCalculator;
        this.f29828c = windowBackend;
    }

    @Override // t1.f
    public wd.d a(Activity activity) {
        kotlin.jvm.internal.m.e(activity, "activity");
        return wd.f.p(wd.f.d(new a(activity, null)), z0.c());
    }
}
