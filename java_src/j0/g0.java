package j0;

import id.Function2;
import td.t1;
import vd.k;
/* loaded from: classes.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    private final td.l0 f23993a;

    /* renamed from: b  reason: collision with root package name */
    private final Function2 f23994b;

    /* renamed from: c  reason: collision with root package name */
    private final vd.g f23995c;

    /* renamed from: d  reason: collision with root package name */
    private final j0.b f23996d;

    /* loaded from: classes.dex */
    static final class a extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ id.l f23997e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ g0 f23998f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Function2 f23999g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(id.l lVar, g0 g0Var, Function2 function2) {
            super(1);
            this.f23997e = lVar;
            this.f23998f = g0Var;
            this.f23999g = function2;
        }

        public final void a(Throwable th) {
            xc.t tVar;
            this.f23997e.invoke(th);
            this.f23998f.f23995c.m(th);
            do {
                Object f10 = vd.k.f(this.f23998f.f23995c.f());
                if (f10 != null) {
                    this.f23999g.invoke(f10, th);
                    tVar = xc.t.f32733a;
                    continue;
                } else {
                    tVar = null;
                    continue;
                }
            } while (tVar != null);
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Throwable) obj);
            return xc.t.f32733a;
        }
    }

    /* loaded from: classes.dex */
    static final class b extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        Object f24000a;

        /* renamed from: b  reason: collision with root package name */
        int f24001b;

        b(ad.e eVar) {
            super(2, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new b(eVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x005a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:19:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006b A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x006c  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x007a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006c -> B:24:0x006e). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = bd.b.e()
                int r1 = r7.f24001b
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L26
                if (r1 == r3) goto L1b
                if (r1 != r2) goto L13
                xc.m.b(r8)
                r8 = r7
                goto L6e
            L13:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1b:
                java.lang.Object r1 = r7.f24000a
                id.Function2 r1 = (id.Function2) r1
                xc.m.b(r8)
                r4 = r1
                r1 = r0
                r0 = r7
                goto L60
            L26:
                xc.m.b(r8)
                j0.g0 r8 = j0.g0.this
                j0.b r8 = j0.g0.c(r8)
                int r8 = r8.b()
                if (r8 <= 0) goto L37
                r8 = r3
                goto L38
            L37:
                r8 = 0
            L38:
                if (r8 == 0) goto L7d
                r8 = r7
            L3b:
                j0.g0 r1 = j0.g0.this
                td.l0 r1 = j0.g0.d(r1)
                td.m0.e(r1)
                j0.g0 r1 = j0.g0.this
                id.Function2 r1 = j0.g0.a(r1)
                j0.g0 r4 = j0.g0.this
                vd.g r4 = j0.g0.b(r4)
                r8.f24000a = r1
                r8.f24001b = r3
                java.lang.Object r4 = r4.p(r8)
                if (r4 != r0) goto L5b
                return r0
            L5b:
                r6 = r0
                r0 = r8
                r8 = r4
                r4 = r1
                r1 = r6
            L60:
                r5 = 0
                r0.f24000a = r5
                r0.f24001b = r2
                java.lang.Object r8 = r4.invoke(r8, r0)
                if (r8 != r1) goto L6c
                return r1
            L6c:
                r8 = r0
                r0 = r1
            L6e:
                j0.g0 r1 = j0.g0.this
                j0.b r1 = j0.g0.c(r1)
                int r1 = r1.a()
                if (r1 != 0) goto L3b
                xc.t r8 = xc.t.f32733a
                return r8
            L7d:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "Check failed."
                java.lang.String r0 = r0.toString()
                r8.<init>(r0)
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: j0.g0.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // id.Function2
        public final Object invoke(td.l0 l0Var, ad.e eVar) {
            return ((b) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
        }
    }

    public g0(td.l0 scope, id.l onComplete, Function2 onUndeliveredElement, Function2 consumeMessage) {
        kotlin.jvm.internal.m.e(scope, "scope");
        kotlin.jvm.internal.m.e(onComplete, "onComplete");
        kotlin.jvm.internal.m.e(onUndeliveredElement, "onUndeliveredElement");
        kotlin.jvm.internal.m.e(consumeMessage, "consumeMessage");
        this.f23993a = scope;
        this.f23994b = consumeMessage;
        this.f23995c = vd.j.b(Integer.MAX_VALUE, null, null, 6, null);
        this.f23996d = new j0.b(0);
        t1 t1Var = (t1) scope.n().a(t1.f30695t0);
        if (t1Var != null) {
            t1Var.q(new a(onComplete, this, onUndeliveredElement));
        }
    }

    public final void e(Object obj) {
        Object t10 = this.f23995c.t(obj);
        if (t10 instanceof k.a) {
            Throwable e10 = vd.k.e(t10);
            if (e10 == null) {
                throw new vd.r("Channel was closed normally");
            }
        } else if (vd.k.i(t10)) {
            if (this.f23996d.c() == 0) {
                td.i.d(this.f23993a, null, null, new b(null), 3, null);
            }
        } else {
            throw new IllegalStateException("Check failed.".toString());
        }
    }
}
