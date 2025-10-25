package xd;

import id.Function2;
import yd.m0;
/* loaded from: classes2.dex */
final class u implements wd.e {

    /* renamed from: a  reason: collision with root package name */
    private final ad.i f32773a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f32774b;

    /* renamed from: c  reason: collision with root package name */
    private final Function2 f32775c;

    /* loaded from: classes2.dex */
    static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f32776a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f32777b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ wd.e f32778c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(wd.e eVar, ad.e eVar2) {
            super(2, eVar2);
            this.f32778c = eVar;
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Object invoke(Object obj, ad.e eVar) {
            return ((a) create(obj, eVar)).invokeSuspend(xc.t.f32733a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            a aVar = new a(this.f32778c, eVar);
            aVar.f32777b = obj;
            return aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f32776a;
            if (i10 != 0) {
                if (i10 == 1) {
                    xc.m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                xc.m.b(obj);
                Object obj2 = this.f32777b;
                wd.e eVar = this.f32778c;
                this.f32776a = 1;
                if (eVar.emit(obj2, this) == e10) {
                    return e10;
                }
            }
            return xc.t.f32733a;
        }
    }

    public u(wd.e eVar, ad.i iVar) {
        this.f32773a = iVar;
        this.f32774b = m0.g(iVar);
        this.f32775c = new a(eVar, null);
    }

    @Override // wd.e
    public Object emit(Object obj, ad.e eVar) {
        Object e10;
        Object b10 = f.b(this.f32773a, obj, this.f32774b, this.f32775c, eVar);
        e10 = bd.d.e();
        if (b10 == e10) {
            return b10;
        }
        return xc.t.f32733a;
    }
}
