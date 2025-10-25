package o0;

import id.Function2;
import kotlin.coroutines.jvm.internal.k;
import xc.m;
import xc.t;
/* loaded from: classes.dex */
public abstract class i {

    /* loaded from: classes.dex */
    static final class a extends k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f26916a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f26917b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function2 f26918c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Function2 function2, ad.e eVar) {
            super(2, eVar);
            this.f26918c = function2;
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Object invoke(f fVar, ad.e eVar) {
            return ((a) create(fVar, eVar)).invokeSuspend(t.f32733a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            a aVar = new a(this.f26918c, eVar);
            aVar.f26917b = obj;
            return aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f26916a;
            if (i10 != 0) {
                if (i10 == 1) {
                    c cVar = (c) this.f26917b;
                    m.b(obj);
                    return cVar;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            m.b(obj);
            c c10 = ((f) this.f26917b).c();
            Function2 function2 = this.f26918c;
            this.f26917b = c10;
            this.f26916a = 1;
            if (function2.invoke(c10, this) == e10) {
                return e10;
            }
            return c10;
        }
    }

    public static final Object a(j0.i iVar, Function2 function2, ad.e eVar) {
        return iVar.a(new a(function2, null), eVar);
    }
}
