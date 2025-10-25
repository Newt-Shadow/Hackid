package xd;

import ad.f;
import id.Function2;
import td.g0;
import vd.v;
/* loaded from: classes2.dex */
public abstract class g extends e {

    /* renamed from: d  reason: collision with root package name */
    protected final wd.d f32751d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f32752a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f32753b;

        a(ad.e eVar) {
            super(2, eVar);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Object invoke(wd.e eVar, ad.e eVar2) {
            return ((a) create(eVar, eVar2)).invokeSuspend(xc.t.f32733a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            a aVar = new a(eVar);
            aVar.f32753b = obj;
            return aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f32752a;
            if (i10 != 0) {
                if (i10 == 1) {
                    xc.m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                xc.m.b(obj);
                g gVar = g.this;
                this.f32752a = 1;
                if (gVar.m((wd.e) this.f32753b, this) == e10) {
                    return e10;
                }
            }
            return xc.t.f32733a;
        }
    }

    public g(wd.d dVar, ad.i iVar, int i10, vd.a aVar) {
        super(iVar, i10, aVar);
        this.f32751d = dVar;
    }

    static /* synthetic */ Object j(g gVar, wd.e eVar, ad.e eVar2) {
        Object e10;
        Object e11;
        Object e12;
        if (gVar.f32742b == -3) {
            ad.i context = eVar2.getContext();
            ad.i j10 = g0.j(context, gVar.f32741a);
            if (kotlin.jvm.internal.m.a(j10, context)) {
                Object m10 = gVar.m(eVar, eVar2);
                e12 = bd.d.e();
                if (m10 == e12) {
                    return m10;
                }
                return xc.t.f32733a;
            }
            f.b bVar = ad.f.f293h0;
            if (kotlin.jvm.internal.m.a(j10.a(bVar), context.a(bVar))) {
                Object l10 = gVar.l(eVar, j10, eVar2);
                e11 = bd.d.e();
                if (l10 == e11) {
                    return l10;
                }
                return xc.t.f32733a;
            }
        }
        Object collect = super.collect(eVar, eVar2);
        e10 = bd.d.e();
        if (collect == e10) {
            return collect;
        }
        return xc.t.f32733a;
    }

    static /* synthetic */ Object k(g gVar, v vVar, ad.e eVar) {
        Object e10;
        Object m10 = gVar.m(new s(vVar), eVar);
        e10 = bd.d.e();
        if (m10 == e10) {
            return m10;
        }
        return xc.t.f32733a;
    }

    private final Object l(wd.e eVar, ad.i iVar, ad.e eVar2) {
        return f.c(iVar, f.a(eVar, eVar2.getContext()), null, new a(null), eVar2, 4, null);
    }

    @Override // xd.e, wd.d
    public Object collect(wd.e eVar, ad.e eVar2) {
        return j(this, eVar, eVar2);
    }

    @Override // xd.e
    protected Object e(v vVar, ad.e eVar) {
        return k(this, vVar, eVar);
    }

    protected abstract Object m(wd.e eVar, ad.e eVar2);

    @Override // xd.e
    public String toString() {
        return this.f32751d + " -> " + super.toString();
    }
}
