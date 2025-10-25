package vd;

import id.Function2;
import td.l0;
import vd.k;
import xc.l;
/* loaded from: classes2.dex */
abstract /* synthetic */ class o {

    /* loaded from: classes2.dex */
    static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f31409a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f31410b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ x f31411c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Object f31412d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(x xVar, Object obj, ad.e eVar) {
            super(2, eVar);
            this.f31411c = xVar;
            this.f31412d = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            a aVar = new a(this.f31411c, this.f31412d, eVar);
            aVar.f31410b = obj;
            return aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            Object b10;
            Object a10;
            e10 = bd.d.e();
            int i10 = this.f31409a;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        xc.m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    xc.m.b(obj);
                    l0 l0Var = (l0) this.f31410b;
                    x xVar = this.f31411c;
                    Object obj2 = this.f31412d;
                    l.a aVar = xc.l.f32718b;
                    this.f31409a = 1;
                    if (xVar.y(obj2, this) == e10) {
                        return e10;
                    }
                }
                b10 = xc.l.b(xc.t.f32733a);
            } catch (Throwable th) {
                l.a aVar2 = xc.l.f32718b;
                b10 = xc.l.b(xc.m.a(th));
            }
            if (xc.l.g(b10)) {
                a10 = k.f31403b.c(xc.t.f32733a);
            } else {
                a10 = k.f31403b.a(xc.l.d(b10));
            }
            return k.b(a10);
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((a) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
        }
    }

    public static final Object a(x xVar, Object obj) {
        Object b10;
        Object t10 = xVar.t(obj);
        if (t10 instanceof k.c) {
            b10 = td.h.b(null, new a(xVar, obj, null), 1, null);
            return ((k) b10).k();
        }
        xc.t tVar = (xc.t) t10;
        return k.f31403b.c(xc.t.f32733a);
    }
}
