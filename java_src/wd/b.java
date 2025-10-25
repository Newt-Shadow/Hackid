package wd;

import id.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b extends c {

    /* renamed from: e  reason: collision with root package name */
    private final Function2 f32034e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f32035a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f32036b;

        /* renamed from: d  reason: collision with root package name */
        int f32038d;

        a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f32036b = obj;
            this.f32038d |= Integer.MIN_VALUE;
            return b.this.e(null, this);
        }
    }

    public /* synthetic */ b(Function2 function2, ad.i iVar, int i10, vd.a aVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(function2, (i11 & 2) != 0 ? ad.j.f295a : iVar, (i11 & 4) != 0 ? -2 : i10, (i11 & 8) != 0 ? vd.a.f31354a : aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004c  */
    @Override // wd.c, xd.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object e(vd.v r5, ad.e r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof wd.b.a
            if (r0 == 0) goto L13
            r0 = r6
            wd.b$a r0 = (wd.b.a) r0
            int r1 = r0.f32038d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32038d = r1
            goto L18
        L13:
            wd.b$a r0 = new wd.b$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f32036b
            java.lang.Object r1 = bd.b.e()
            int r2 = r0.f32038d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f32035a
            vd.v r5 = (vd.v) r5
            xc.m.b(r6)
            goto L43
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            xc.m.b(r6)
            r0.f32035a = r5
            r0.f32038d = r3
            java.lang.Object r6 = super.e(r5, r0)
            if (r6 != r1) goto L43
            return r1
        L43:
            boolean r5 = r5.z()
            if (r5 == 0) goto L4c
            xc.t r5 = xc.t.f32733a
            return r5
        L4c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: wd.b.e(vd.v, ad.e):java.lang.Object");
    }

    @Override // wd.c, xd.e
    protected xd.e f(ad.i iVar, int i10, vd.a aVar) {
        return new b(this.f32034e, iVar, i10, aVar);
    }

    public b(Function2 function2, ad.i iVar, int i10, vd.a aVar) {
        super(function2, iVar, i10, aVar);
        this.f32034e = function2;
    }
}
