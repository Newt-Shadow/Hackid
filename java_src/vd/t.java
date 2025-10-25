package vd;

import id.Function2;
import td.g0;
import td.l0;
import td.n0;
import xc.l;
/* loaded from: classes2.dex */
public abstract class t {

    /* loaded from: classes2.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a */
        Object f31415a;

        /* renamed from: b */
        Object f31416b;

        /* renamed from: c */
        /* synthetic */ Object f31417c;

        /* renamed from: d */
        int f31418d;

        a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f31417c = obj;
            this.f31418d |= Integer.MIN_VALUE;
            return t.a(null, null, this);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements id.l {

        /* renamed from: a */
        final /* synthetic */ td.l f31419a;

        b(td.l lVar) {
            this.f31419a = lVar;
        }

        public final void a(Throwable th) {
            td.l lVar = this.f31419a;
            l.a aVar = xc.l.f32718b;
            lVar.resumeWith(xc.l.b(xc.t.f32733a));
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Throwable) obj);
            return xc.t.f32733a;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(vd.v r4, id.a r5, ad.e r6) {
        /*
            boolean r0 = r6 instanceof vd.t.a
            if (r0 == 0) goto L13
            r0 = r6
            vd.t$a r0 = (vd.t.a) r0
            int r1 = r0.f31418d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f31418d = r1
            goto L18
        L13:
            vd.t$a r0 = new vd.t$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f31417c
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f31418d
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r4 = r0.f31416b
            r5 = r4
            id.a r5 = (id.a) r5
            java.lang.Object r4 = r0.f31415a
            vd.v r4 = (vd.v) r4
            xc.m.b(r6)     // Catch: java.lang.Throwable -> L32
            goto L7a
        L32:
            r4 = move-exception
            goto L80
        L34:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3c:
            xc.m.b(r6)
            ad.i r6 = r0.getContext()
            td.t1$b r2 = td.t1.f30695t0
            ad.i$b r6 = r6.a(r2)
            if (r6 != r4) goto L4d
            r6 = r3
            goto L4e
        L4d:
            r6 = 0
        L4e:
            if (r6 == 0) goto L84
            r0.f31415a = r4     // Catch: java.lang.Throwable -> L32
            r0.f31416b = r5     // Catch: java.lang.Throwable -> L32
            r0.f31418d = r3     // Catch: java.lang.Throwable -> L32
            td.n r6 = new td.n     // Catch: java.lang.Throwable -> L32
            ad.e r2 = bd.b.c(r0)     // Catch: java.lang.Throwable -> L32
            r6.<init>(r2, r3)     // Catch: java.lang.Throwable -> L32
            r6.E()     // Catch: java.lang.Throwable -> L32
            vd.t$b r2 = new vd.t$b     // Catch: java.lang.Throwable -> L32
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L32
            r4.h(r2)     // Catch: java.lang.Throwable -> L32
            java.lang.Object r4 = r6.x()     // Catch: java.lang.Throwable -> L32
            java.lang.Object r6 = bd.b.e()     // Catch: java.lang.Throwable -> L32
            if (r4 != r6) goto L77
            kotlin.coroutines.jvm.internal.h.c(r0)     // Catch: java.lang.Throwable -> L32
        L77:
            if (r4 != r1) goto L7a
            return r1
        L7a:
            r5.invoke()
            xc.t r4 = xc.t.f32733a
            return r4
        L80:
            r5.invoke()
            throw r4
        L84:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "awaitClose() can only be invoked from the producer context"
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: vd.t.a(vd.v, id.a, ad.e):java.lang.Object");
    }

    public static final w b(l0 l0Var, ad.i iVar, int i10, vd.a aVar, n0 n0Var, id.l lVar, Function2 function2) {
        u uVar = new u(g0.k(l0Var, iVar), j.b(i10, aVar, null, 4, null));
        if (lVar != null) {
            uVar.q(lVar);
        }
        uVar.R0(n0Var, uVar, function2);
        return uVar;
    }

    public static /* synthetic */ w c(l0 l0Var, ad.i iVar, int i10, vd.a aVar, n0 n0Var, id.l lVar, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            iVar = ad.j.f295a;
        }
        ad.i iVar2 = iVar;
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        int i12 = i10;
        if ((i11 & 4) != 0) {
            aVar = vd.a.f31354a;
        }
        vd.a aVar2 = aVar;
        if ((i11 & 8) != 0) {
            n0Var = n0.f30669a;
        }
        n0 n0Var2 = n0Var;
        if ((i11 & 16) != 0) {
            lVar = null;
        }
        return b(l0Var, iVar2, i12, aVar2, n0Var2, lVar, function2);
    }
}
