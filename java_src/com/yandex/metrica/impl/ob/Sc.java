package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.networktasks.api.NetworkServiceLocator;
import dc.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class Sc implements Fc {

    /* renamed from: a  reason: collision with root package name */
    private final Context f11261a;

    /* renamed from: b  reason: collision with root package name */
    private C0787pi f11262b;

    /* renamed from: c  reason: collision with root package name */
    private volatile C0706mc f11263c;

    /* renamed from: d  reason: collision with root package name */
    private final U7 f11264d;

    /* renamed from: e  reason: collision with root package name */
    private final T7 f11265e;

    /* renamed from: f  reason: collision with root package name */
    private final dc.d f11266f;

    /* renamed from: g  reason: collision with root package name */
    private final C0533fd f11267g;

    /* renamed from: h  reason: collision with root package name */
    private final dc.a f11268h;

    /* renamed from: i  reason: collision with root package name */
    private final a.c f11269i;

    /* renamed from: j  reason: collision with root package name */
    private final ICommonExecutor f11270j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f11271k;

    /* loaded from: classes2.dex */
    class a implements a.c {
        a() {
        }

        @Override // dc.a.c
        public void onWaitFinished() {
            Sc.this.f11271k = true;
            Sc.a(Sc.this);
        }
    }

    public Sc(Context context, C0787pi c0787pi, C0706mc c0706mc, U7 u72, T7 t72, ICommonExecutor iCommonExecutor) {
        this(context, c0787pi, c0706mc, u72, t72, iCommonExecutor, new dc.c(), new C0533fd(), dc.f.c().a());
    }

    static void a(Sc sc2) {
        C0706mc c0706mc = sc2.f11263c;
        if (c0706mc != null) {
            NetworkServiceLocator.a().b().c(sc2.f11267g.a(sc2.f11261a, sc2.f11262b, c0706mc, sc2));
        }
    }

    Sc(Context context, C0787pi c0787pi, C0706mc c0706mc, U7 u72, T7 t72, ICommonExecutor iCommonExecutor, dc.d dVar, C0533fd c0533fd, dc.a aVar) {
        this.f11271k = false;
        this.f11261a = context;
        this.f11263c = c0706mc;
        this.f11262b = c0787pi;
        this.f11264d = u72;
        this.f11265e = t72;
        this.f11270j = iCommonExecutor;
        this.f11266f = dVar;
        this.f11267g = c0533fd;
        this.f11268h = aVar;
        this.f11269i = new a();
    }

    @Override // com.yandex.metrica.impl.ob.Fc
    public void a() {
        if (a(this.f11264d) || a(this.f11265e)) {
            if (!this.f11271k) {
                this.f11268h.b(dc.a.f15131c, this.f11270j, this.f11269i);
                return;
            }
            C0706mc c0706mc = this.f11263c;
            if (c0706mc != null) {
                NetworkServiceLocator.a().b().c(this.f11267g.a(this.f11261a, this.f11262b, c0706mc, this));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(com.yandex.metrica.impl.ob.J7 r10) {
        /*
            r9 = this;
            com.yandex.metrica.impl.ob.mc r0 = r9.f11263c
            r1 = 0
            if (r0 == 0) goto L3f
            com.yandex.metrica.impl.ob.mc r0 = r9.f11263c
            r2 = 1
            if (r0 == 0) goto L1c
            int r0 = r0.f12864c
            long r3 = (long) r0
            long r5 = r10.c()
            int r0 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r0 < 0) goto L17
            r0 = r2
            goto L18
        L17:
            r0 = r1
        L18:
            if (r0 == 0) goto L1c
            r0 = r2
            goto L1d
        L1c:
            r0 = r1
        L1d:
            if (r0 != 0) goto L3e
            com.yandex.metrica.impl.ob.mc r0 = r9.f11263c
            if (r0 == 0) goto L3b
            long r3 = r0.f12866e
            dc.d r0 = r9.f11266f
            long r5 = r0.currentTimeMillis()
            long r7 = r10.b()
            long r5 = r5 - r7
            int r10 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r10 <= 0) goto L36
            r10 = r2
            goto L37
        L36:
            r10 = r1
        L37:
            if (r10 == 0) goto L3b
            r10 = r2
            goto L3c
        L3b:
            r10 = r1
        L3c:
            if (r10 == 0) goto L3f
        L3e:
            r1 = r2
        L3f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Sc.a(com.yandex.metrica.impl.ob.J7):boolean");
    }

    public void a(C0787pi c0787pi) {
        this.f11262b = c0787pi;
    }

    public void a(C0706mc c0706mc) {
        this.f11263c = c0706mc;
    }
}
