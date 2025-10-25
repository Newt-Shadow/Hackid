package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0412ah;
import com.yandex.metrica.impl.ob.InterfaceC0530fa;
import dc.a;
/* renamed from: com.yandex.metrica.impl.ob.dh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0487dh {

    /* renamed from: a  reason: collision with root package name */
    private final C0437bh f12226a;

    /* renamed from: b  reason: collision with root package name */
    private final ProtobufStateStorage f12227b;

    /* renamed from: c  reason: collision with root package name */
    private final C0962x2 f12228c;

    /* renamed from: d  reason: collision with root package name */
    private final ICommonExecutor f12229d;

    /* renamed from: e  reason: collision with root package name */
    private final a.c f12230e;

    /* renamed from: f  reason: collision with root package name */
    private final dc.a f12231f;

    /* renamed from: g  reason: collision with root package name */
    private final C0412ah f12232g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f12233h;

    /* renamed from: i  reason: collision with root package name */
    private C0463ci f12234i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f12235j;

    /* renamed from: k  reason: collision with root package name */
    private long f12236k;

    /* renamed from: l  reason: collision with root package name */
    private long f12237l;

    /* renamed from: m  reason: collision with root package name */
    private long f12238m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f12239n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f12240o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f12241p;

    /* renamed from: q  reason: collision with root package name */
    private final Object f12242q;

    /* renamed from: com.yandex.metrica.impl.ob.dh$a */
    /* loaded from: classes2.dex */
    class a implements C0412ah.a {
        a() {
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.dh$b */
    /* loaded from: classes2.dex */
    class b implements a.c {
        b() {
        }

        @Override // dc.a.c
        public void onWaitFinished() {
            C0487dh.this.f12241p = true;
            C0487dh.this.f12226a.a(C0487dh.this.f12232g);
        }
    }

    public C0487dh(Context context, ICommonExecutor iCommonExecutor) {
        this(new C0437bh(context, null, iCommonExecutor), InterfaceC0530fa.b.a(C0512eh.class).a(context), new C0962x2(), iCommonExecutor, dc.f.c().a());
    }

    void a() {
        if (this.f12233h) {
            return;
        }
        this.f12233h = true;
        if (!this.f12241p) {
            this.f12231f.b(this.f12234i.f12191c, this.f12229d, this.f12230e);
        } else {
            this.f12226a.a(this.f12232g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        C0512eh c0512eh = (C0512eh) this.f12227b.read();
        this.f12238m = c0512eh.f12335c;
        this.f12239n = c0512eh.f12336d;
        this.f12240o = c0512eh.f12337e;
    }

    C0487dh(C0437bh c0437bh, ProtobufStateStorage protobufStateStorage, C0962x2 c0962x2, ICommonExecutor iCommonExecutor, dc.a aVar) {
        this.f12241p = false;
        this.f12242q = new Object();
        this.f12226a = c0437bh;
        this.f12227b = protobufStateStorage;
        this.f12232g = new C0412ah(protobufStateStorage, new a());
        this.f12228c = c0962x2;
        this.f12229d = iCommonExecutor;
        this.f12230e = new b();
        this.f12231f = aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
        if (r8.f12226a.b(r9) != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
        if (r9.f().f11293e == true) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(com.yandex.metrica.impl.ob.C0787pi r9) {
        /*
            r8 = this;
            if (r9 != 0) goto L3
            goto L3b
        L3:
            boolean r0 = r8.f12235j
            r1 = 1
            if (r0 != 0) goto L10
            com.yandex.metrica.impl.ob.Sh r0 = r9.f()
            boolean r0 = r0.f11293e
            if (r0 == r1) goto L3c
        L10:
            com.yandex.metrica.impl.ob.ci r0 = r8.f12234i
            if (r0 == 0) goto L3c
            com.yandex.metrica.impl.ob.ci r2 = r9.K()
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L3c
            long r2 = r8.f12236k
            long r4 = r9.B()
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 != 0) goto L3c
            long r2 = r8.f12237l
            long r4 = r9.o()
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 != 0) goto L3c
            com.yandex.metrica.impl.ob.bh r0 = r8.f12226a
            boolean r0 = r0.b(r9)
            if (r0 == 0) goto L3b
            goto L3c
        L3b:
            r1 = 0
        L3c:
            java.lang.Object r0 = r8.f12242q
            monitor-enter(r0)
            if (r9 == 0) goto L5b
            com.yandex.metrica.impl.ob.Sh r2 = r9.f()     // Catch: java.lang.Throwable -> Lae
            boolean r2 = r2.f11293e     // Catch: java.lang.Throwable -> Lae
            r8.f12235j = r2     // Catch: java.lang.Throwable -> Lae
            com.yandex.metrica.impl.ob.ci r2 = r9.K()     // Catch: java.lang.Throwable -> Lae
            r8.f12234i = r2     // Catch: java.lang.Throwable -> Lae
            long r2 = r9.B()     // Catch: java.lang.Throwable -> Lae
            r8.f12236k = r2     // Catch: java.lang.Throwable -> Lae
            long r2 = r9.o()     // Catch: java.lang.Throwable -> Lae
            r8.f12237l = r2     // Catch: java.lang.Throwable -> Lae
        L5b:
            com.yandex.metrica.impl.ob.bh r2 = r8.f12226a     // Catch: java.lang.Throwable -> Lae
            r2.a(r9)     // Catch: java.lang.Throwable -> Lae
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lae
            if (r1 == 0) goto Lad
            java.lang.Object r9 = r8.f12242q
            monitor-enter(r9)
            boolean r0 = r8.f12235j     // Catch: java.lang.Throwable -> Laa
            if (r0 == 0) goto La8
            com.yandex.metrica.impl.ob.ci r0 = r8.f12234i     // Catch: java.lang.Throwable -> Laa
            if (r0 == 0) goto La8
            boolean r1 = r8.f12239n     // Catch: java.lang.Throwable -> Laa
            if (r1 == 0) goto L9a
            boolean r1 = r8.f12240o     // Catch: java.lang.Throwable -> Laa
            if (r1 == 0) goto L88
            com.yandex.metrica.impl.ob.x2 r2 = r8.f12228c     // Catch: java.lang.Throwable -> Laa
            long r3 = r8.f12238m     // Catch: java.lang.Throwable -> Laa
            long r5 = r0.f12192d     // Catch: java.lang.Throwable -> Laa
            java.lang.String r7 = "should retry sdk collecting"
            boolean r0 = r2.a(r3, r5, r7)     // Catch: java.lang.Throwable -> Laa
            if (r0 == 0) goto La8
            r8.a()     // Catch: java.lang.Throwable -> Laa
            goto La8
        L88:
            com.yandex.metrica.impl.ob.x2 r1 = r8.f12228c     // Catch: java.lang.Throwable -> Laa
            long r2 = r8.f12238m     // Catch: java.lang.Throwable -> Laa
            long r4 = r0.f12189a     // Catch: java.lang.Throwable -> Laa
            java.lang.String r6 = "should collect sdk as usual"
            boolean r0 = r1.a(r2, r4, r6)     // Catch: java.lang.Throwable -> Laa
            if (r0 == 0) goto La8
            r8.a()     // Catch: java.lang.Throwable -> Laa
            goto La8
        L9a:
            long r1 = r8.f12236k     // Catch: java.lang.Throwable -> Laa
            long r3 = r8.f12237l     // Catch: java.lang.Throwable -> Laa
            long r1 = r1 - r3
            long r3 = r0.f12190b     // Catch: java.lang.Throwable -> Laa
            int r0 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r0 < 0) goto La8
            r8.a()     // Catch: java.lang.Throwable -> Laa
        La8:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> Laa
            goto Lad
        Laa:
            r0 = move-exception
            monitor-exit(r9)     // Catch: java.lang.Throwable -> Laa
            throw r0
        Lad:
            return
        Lae:
            r9 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lae
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0487dh.b(com.yandex.metrica.impl.ob.pi):void");
    }

    public void a(C0787pi c0787pi) {
        C0512eh c0512eh = (C0512eh) this.f12227b.read();
        this.f12238m = c0512eh.f12335c;
        this.f12239n = c0512eh.f12336d;
        this.f12240o = c0512eh.f12337e;
        b(c0787pi);
    }
}
