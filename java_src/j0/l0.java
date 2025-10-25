package j0;
/* loaded from: classes.dex */
public abstract class l0 {

    /* loaded from: classes.dex */
    static final class a extends kotlin.coroutines.jvm.internal.k implements id.p {

        /* renamed from: a  reason: collision with root package name */
        int f24189a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f24190b;

        a(ad.e eVar) {
            super(3, eVar);
        }

        public final Object a(c0 c0Var, boolean z10, ad.e eVar) {
            a aVar = new a(eVar);
            aVar.f24190b = c0Var;
            return aVar.invokeSuspend(xc.t.f32733a);
        }

        @Override // id.p
        public /* bridge */ /* synthetic */ Object e(Object obj, Object obj2, Object obj3) {
            return a((c0) obj, ((Boolean) obj2).booleanValue(), (ad.e) obj3);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f24189a;
            if (i10 != 0) {
                if (i10 == 1) {
                    xc.m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                xc.m.b(obj);
                this.f24189a = 1;
                obj = ((c0) this.f24190b).d(this);
                if (obj == e10) {
                    return e10;
                }
            }
            return obj;
        }
    }

    public static final Object a(k0 k0Var, ad.e eVar) {
        return k0Var.e(new a(null), eVar);
    }
}
