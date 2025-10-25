package o0;

import id.Function2;
import kotlin.coroutines.jvm.internal.k;
import xc.m;
import xc.t;
/* loaded from: classes.dex */
public final class d implements j0.i {

    /* renamed from: a  reason: collision with root package name */
    private final j0.i f26909a;

    /* loaded from: classes.dex */
    static final class a extends k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f26910a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f26911b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function2 f26912c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Function2 function2, ad.e eVar) {
            super(2, eVar);
            this.f26912c = function2;
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Object invoke(f fVar, ad.e eVar) {
            return ((a) create(fVar, eVar)).invokeSuspend(t.f32733a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            a aVar = new a(this.f26912c, eVar);
            aVar.f26911b = obj;
            return aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f26910a;
            if (i10 != 0) {
                if (i10 == 1) {
                    m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                m.b(obj);
                Function2 function2 = this.f26912c;
                this.f26910a = 1;
                obj = function2.invoke((f) this.f26911b, this);
                if (obj == e10) {
                    return e10;
                }
            }
            f fVar = (f) obj;
            kotlin.jvm.internal.m.c(fVar, "null cannot be cast to non-null type androidx.datastore.preferences.core.MutablePreferences");
            ((c) fVar).g();
            return fVar;
        }
    }

    public d(j0.i delegate) {
        kotlin.jvm.internal.m.e(delegate, "delegate");
        this.f26909a = delegate;
    }

    @Override // j0.i
    public Object a(Function2 function2, ad.e eVar) {
        return this.f26909a.a(new a(function2, null), eVar);
    }

    @Override // j0.i
    public wd.d getData() {
        return this.f26909a.getData();
    }
}
