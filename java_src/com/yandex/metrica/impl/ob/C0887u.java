package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0792q;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.u  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0887u implements C0792q.b {

    /* renamed from: a  reason: collision with root package name */
    private final List<E1<C0619j0>> f13664a;

    /* renamed from: b  reason: collision with root package name */
    private volatile C0619j0 f13665b;

    /* renamed from: c  reason: collision with root package name */
    private final C0792q f13666c;

    /* renamed from: d  reason: collision with root package name */
    private final ICommonExecutor f13667d;

    /* renamed from: com.yandex.metrica.impl.ob.u$a */
    /* loaded from: classes2.dex */
    class a implements E1<C0619j0> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13668a;

        a(C0887u c0887u, String str) {
            this.f13668a = str;
        }

        @Override // com.yandex.metrica.impl.ob.E1
        public void b(C0619j0 c0619j0) {
            c0619j0.b(this.f13668a);
        }
    }

    public C0887u(ICommonExecutor iCommonExecutor) {
        this(iCommonExecutor, P.g().b());
    }

    public void a() {
        this.f13666c.a(this, C0792q.a.CREATED);
    }

    C0887u(ICommonExecutor iCommonExecutor, C0792q c0792q) {
        this.f13664a = new ArrayList();
        this.f13665b = null;
        this.f13667d = iCommonExecutor;
        this.f13666c = c0792q;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001c A[LOOP:0: B:9:0x0016->B:11:0x001c, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.yandex.metrica.impl.ob.C0619j0 r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            r2.f13665b = r3     // Catch: java.lang.Throwable -> L2a
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L2a
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L27
            java.util.List<com.yandex.metrica.impl.ob.E1<com.yandex.metrica.impl.ob.j0>> r1 = r2.f13664a     // Catch: java.lang.Throwable -> L27
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L27
            java.util.List<com.yandex.metrica.impl.ob.E1<com.yandex.metrica.impl.ob.j0>> r1 = r2.f13664a     // Catch: java.lang.Throwable -> L27
            r1.clear()     // Catch: java.lang.Throwable -> L27
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
            java.util.Iterator r0 = r0.iterator()
        L16:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L26
            java.lang.Object r1 = r0.next()
            com.yandex.metrica.impl.ob.E1 r1 = (com.yandex.metrica.impl.ob.E1) r1
            r1.b(r3)
            goto L16
        L26:
            return
        L27:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
            throw r3     // Catch: java.lang.Throwable -> L2a
        L2a:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0887u.a(com.yandex.metrica.impl.ob.j0):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0016  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0035 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x000c  */
    @Override // com.yandex.metrica.impl.ob.C0792q.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.app.Activity r3, com.yandex.metrica.impl.ob.C0792q.a r4) {
        /*
            r2 = this;
            r4 = 0
            if (r3 == 0) goto L8
            android.content.Intent r3 = r3.getIntent()     // Catch: java.lang.Throwable -> L8
            goto L9
        L8:
            r3 = r4
        L9:
            if (r3 != 0) goto Lc
            goto L10
        Lc:
            java.lang.String r4 = r3.getDataString()
        L10:
            boolean r3 = android.text.TextUtils.isEmpty(r4)
            if (r3 != 0) goto L35
            com.yandex.metrica.impl.ob.u$a r3 = new com.yandex.metrica.impl.ob.u$a
            r3.<init>(r2, r4)
            monitor-enter(r2)
            com.yandex.metrica.impl.ob.j0 r4 = r2.f13665b     // Catch: java.lang.Throwable -> L32
            if (r4 != 0) goto L26
            java.util.List<com.yandex.metrica.impl.ob.E1<com.yandex.metrica.impl.ob.j0>> r4 = r2.f13664a     // Catch: java.lang.Throwable -> L32
            r4.add(r3)     // Catch: java.lang.Throwable -> L32
            goto L30
        L26:
            com.yandex.metrica.core.api.executors.ICommonExecutor r0 = r2.f13667d     // Catch: java.lang.Throwable -> L32
            com.yandex.metrica.impl.ob.t r1 = new com.yandex.metrica.impl.ob.t     // Catch: java.lang.Throwable -> L32
            r1.<init>(r2, r3, r4)     // Catch: java.lang.Throwable -> L32
            r0.execute(r1)     // Catch: java.lang.Throwable -> L32
        L30:
            monitor-exit(r2)
            goto L35
        L32:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        L35:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0887u.a(android.app.Activity, com.yandex.metrica.impl.ob.q$a):void");
    }
}
