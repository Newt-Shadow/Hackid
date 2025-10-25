package xd;

import ad.i;
import id.Function2;
import td.w1;
/* loaded from: classes2.dex */
public final class o extends kotlin.coroutines.jvm.internal.d implements wd.e {

    /* renamed from: a  reason: collision with root package name */
    public final wd.e f32762a;

    /* renamed from: b  reason: collision with root package name */
    public final ad.i f32763b;

    /* renamed from: c  reason: collision with root package name */
    public final int f32764c;

    /* renamed from: d  reason: collision with root package name */
    private ad.i f32765d;

    /* renamed from: e  reason: collision with root package name */
    private ad.e f32766e;

    public o(wd.e eVar, ad.i iVar) {
        super(l.f32757a, ad.j.f295a);
        this.f32762a = eVar;
        this.f32763b = iVar;
        this.f32764c = ((Number) iVar.k(0, new Function2() { // from class: xd.n
            @Override // id.Function2
            public final Object invoke(Object obj, Object obj2) {
                int g10;
                g10 = o.g(((Integer) obj).intValue(), (i.b) obj2);
                return Integer.valueOf(g10);
            }
        })).intValue();
    }

    private final void f(ad.i iVar, ad.i iVar2, Object obj) {
        if (iVar2 instanceof i) {
            k((i) iVar2, obj);
        }
        r.b(this, iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int g(int i10, i.b bVar) {
        return i10 + 1;
    }

    private final Object h(ad.e eVar, Object obj) {
        id.p pVar;
        Object e10;
        ad.i context = eVar.getContext();
        w1.d(context);
        ad.i iVar = this.f32765d;
        if (iVar != context) {
            f(context, iVar, obj);
            this.f32765d = context;
        }
        this.f32766e = eVar;
        pVar = p.f32767a;
        wd.e eVar2 = this.f32762a;
        kotlin.jvm.internal.m.c(eVar2, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
        kotlin.jvm.internal.m.c(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Unit>");
        Object e11 = pVar.e(eVar2, obj, this);
        e10 = bd.d.e();
        if (!kotlin.jvm.internal.m.a(e11, e10)) {
            this.f32766e = null;
        }
        return e11;
    }

    private final void k(i iVar, Object obj) {
        String j10;
        j10 = rd.r.j("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + iVar.f32756b + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ");
        throw new IllegalStateException(j10.toString());
    }

    @Override // wd.e
    public Object emit(Object obj, ad.e eVar) {
        Object e10;
        Object e11;
        try {
            Object h10 = h(eVar, obj);
            e10 = bd.d.e();
            if (h10 == e10) {
                kotlin.coroutines.jvm.internal.h.c(eVar);
            }
            e11 = bd.d.e();
            if (h10 == e11) {
                return h10;
            }
            return xc.t.f32733a;
        } catch (Throwable th) {
            this.f32765d = new i(th, eVar.getContext());
            throw th;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.a, kotlin.coroutines.jvm.internal.e
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        ad.e eVar = this.f32766e;
        if (eVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) eVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.d, ad.e
    public ad.i getContext() {
        ad.i iVar = this.f32765d;
        if (iVar == null) {
            return ad.j.f295a;
        }
        return iVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    protected Object invokeSuspend(Object obj) {
        Object e10;
        Throwable d10 = xc.l.d(obj);
        if (d10 != null) {
            this.f32765d = new i(d10, getContext());
        }
        ad.e eVar = this.f32766e;
        if (eVar != null) {
            eVar.resumeWith(obj);
        }
        e10 = bd.d.e();
        return e10;
    }

    @Override // kotlin.coroutines.jvm.internal.d, kotlin.coroutines.jvm.internal.a
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }
}
