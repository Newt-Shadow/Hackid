package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.IMetricaService;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0745o1;
import com.yandex.metrica.impl.ob.J;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class U1 implements C0745o1.c, ec.k {

    /* renamed from: a  reason: collision with root package name */
    private final P0 f11471a;

    /* renamed from: b  reason: collision with root package name */
    private final C0745o1 f11472b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f11473c;

    /* renamed from: d  reason: collision with root package name */
    private final ICommonExecutor f11474d;

    /* renamed from: e  reason: collision with root package name */
    private final C0725n6 f11475e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends g {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ A3 f11476b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(A3 a32) {
            super(U1.this, null);
            this.f11476b = a32;
        }

        @Override // com.yandex.metrica.impl.ob.U1.g
        void a(IMetricaService iMetricaService) {
            P0 p02 = U1.this.f11471a;
            A3 a32 = this.f11476b;
            ((T1) p02).getClass();
            Bundle bundle = new Bundle();
            synchronized (a32) {
                bundle.putParcelable("PROCESS_CFG_OBJ", a32);
            }
            iMetricaService.b(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends g {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ A3 f11478b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(A3 a32) {
            super(U1.this, null);
            this.f11478b = a32;
        }

        @Override // com.yandex.metrica.impl.ob.U1.g
        void a(IMetricaService iMetricaService) {
            P0 p02 = U1.this.f11471a;
            A3 a32 = this.f11478b;
            ((T1) p02).getClass();
            Bundle bundle = new Bundle();
            synchronized (a32) {
                bundle.putParcelable("PROCESS_CFG_OBJ", a32);
            }
            iMetricaService.a(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends d {

        /* renamed from: d  reason: collision with root package name */
        private boolean f11480d;

        /* renamed from: e  reason: collision with root package name */
        private final Xl f11481e;

        c(f fVar, Xl xl) {
            super(fVar);
            this.f11480d = false;
            this.f11481e = xl;
        }

        @Override // com.yandex.metrica.impl.ob.U1.g
        boolean b() {
            f fVar = this.f11483b;
            if (fVar.b().f12105h == 0) {
                Context a10 = ((T1) U1.this.f11471a).a();
                Intent a11 = C0721n2.a(a10);
                fVar.b().f12102e = EnumC0396a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT.b();
                a11.putExtras(fVar.b().b(fVar.a().c()));
                try {
                    a10.startService(a11);
                    return false;
                } catch (Throwable unused) {
                    U1.this.f11475e.a(fVar);
                    return false;
                }
            }
            U1.this.f11475e.a(fVar);
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
            if (r2.endsWith(":Metrica") != false) goto L16;
         */
        @Override // com.yandex.metrica.impl.ob.U1.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public synchronized java.lang.Void a() {
            /*
                r6 = this;
                monitor-enter(r6)
                boolean r0 = r6.f11480d     // Catch: java.lang.Throwable -> L51
                r1 = 0
                if (r0 == 0) goto L8
                monitor-exit(r6)
                return r1
            L8:
                r0 = 1
                r6.f11480d = r0     // Catch: java.lang.Throwable -> L51
                com.yandex.metrica.impl.ob.Xl r2 = r6.f11481e     // Catch: java.lang.Throwable -> L51
                java.lang.String r3 = "Metrica"
                r2.getClass()     // Catch: java.lang.Throwable -> L51
                java.lang.String r4 = r2.b()     // Catch: java.lang.Throwable -> L38
                boolean r4 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L38
                if (r4 != 0) goto L38
                java.lang.String r2 = r2.b()     // Catch: java.lang.Throwable -> L38
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L38
                r4.<init>()     // Catch: java.lang.Throwable -> L38
                java.lang.String r5 = ":"
                r4.append(r5)     // Catch: java.lang.Throwable -> L38
                r4.append(r3)     // Catch: java.lang.Throwable -> L38
                java.lang.String r3 = r4.toString()     // Catch: java.lang.Throwable -> L38
                boolean r2 = r2.endsWith(r3)     // Catch: java.lang.Throwable -> L38
                if (r2 == 0) goto L38
                goto L39
            L38:
                r0 = 0
            L39:
                if (r0 == 0) goto L42
                com.yandex.metrica.impl.ob.U1$f r0 = r6.f11483b     // Catch: java.lang.Throwable -> L51
                r6.a(r0)     // Catch: java.lang.Throwable -> L51
                monitor-exit(r6)
                return r1
            L42:
                com.yandex.metrica.impl.ob.U1 r0 = com.yandex.metrica.impl.ob.U1.this     // Catch: java.lang.Throwable -> L51
                com.yandex.metrica.impl.ob.o1 r0 = com.yandex.metrica.impl.ob.U1.b(r0)     // Catch: java.lang.Throwable -> L51
                r0.g()     // Catch: java.lang.Throwable -> L51
                java.lang.Void r0 = super.call()     // Catch: java.lang.Throwable -> L51
                monitor-exit(r6)
                return r0
            L51:
                r0 = move-exception
                monitor-exit(r6)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.U1.c.a():java.lang.Void");
        }

        void a(f fVar) {
            U1.this.f11475e.a(fVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends g {

        /* renamed from: b  reason: collision with root package name */
        final f f11483b;

        d(f fVar) {
            super(U1.this, null);
            this.f11483b = fVar;
        }

        @Override // com.yandex.metrica.impl.ob.U1.g
        void a(Throwable th) {
        }

        @Override // com.yandex.metrica.impl.ob.U1.g, java.util.concurrent.Callable
        public /* bridge */ /* synthetic */ Void call() {
            return call();
        }

        @Override // com.yandex.metrica.impl.ob.U1.g
        void a(IMetricaService iMetricaService) {
            f fVar = this.f11483b;
            ((T1) U1.this.f11471a).a(iMetricaService, fVar.e(), fVar.f11486b);
        }
    }

    /* loaded from: classes2.dex */
    public interface e {
        C0445c0 a(C0445c0 c0445c0);
    }

    /* loaded from: classes2.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        private C0445c0 f11485a;

        /* renamed from: b  reason: collision with root package name */
        private Q1 f11486b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f11487c = false;

        /* renamed from: d  reason: collision with root package name */
        private e f11488d;

        /* renamed from: e  reason: collision with root package name */
        private HashMap<J.a, Integer> f11489e;

        public f(C0445c0 c0445c0, Q1 q12) {
            this.f11485a = c0445c0;
            this.f11486b = new Q1(new A3(q12.a()), new CounterConfiguration(q12.b()), q12.e());
        }

        public C0445c0 b() {
            return this.f11485a;
        }

        public HashMap<J.a, Integer> c() {
            return this.f11489e;
        }

        public boolean d() {
            return this.f11487c;
        }

        C0445c0 e() {
            e eVar = this.f11488d;
            if (eVar != null) {
                return eVar.a(this.f11485a);
            }
            return this.f11485a;
        }

        public String toString() {
            return "ReportToSend{mReport=" + this.f11485a + ", mEnvironment=" + this.f11486b + ", mCrash=" + this.f11487c + ", mAction=" + this.f11488d + ", mTrimmedFields=" + this.f11489e + '}';
        }

        public f a(e eVar) {
            this.f11488d = eVar;
            return this;
        }

        public f a(HashMap<J.a, Integer> hashMap) {
            this.f11489e = hashMap;
            return this;
        }

        public f a(boolean z10) {
            this.f11487c = z10;
            return this;
        }

        public Q1 a() {
            return this.f11486b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public abstract class g implements Callable<Void> {
        private g() {
        }

        abstract void a(IMetricaService iMetricaService);

        void a(Throwable th) {
        }

        boolean b() {
            U1.this.f11472b.b();
            synchronized (U1.this.f11473c) {
                if (!U1.this.f11472b.e()) {
                    try {
                        U1.this.f11473c.wait(5000L, 0);
                    } catch (InterruptedException unused) {
                        U1.this.f11473c.notifyAll();
                    }
                }
            }
            return true;
        }

        /* synthetic */ g(U1 u12, a aVar) {
            this();
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() {
            int i10 = 0;
            do {
                try {
                    IMetricaService d10 = U1.this.f11472b.d();
                    if (d10 != null) {
                        try {
                            a(d10);
                            return null;
                        } catch (RemoteException unused) {
                        }
                    }
                    i10++;
                    if (!b() || C1.a()) {
                        break;
                    }
                } catch (Throwable th) {
                    a(th);
                    return null;
                }
            } while (i10 < 2);
            return null;
        }
    }

    /* loaded from: classes2.dex */
    class h extends g {

        /* renamed from: b  reason: collision with root package name */
        private final int f11491b;

        /* renamed from: c  reason: collision with root package name */
        private final Bundle f11492c;

        h(U1 u12, int i10, Bundle bundle) {
            super(u12, null);
            this.f11491b = i10;
            this.f11492c = bundle;
        }

        @Override // com.yandex.metrica.impl.ob.U1.g
        void a(IMetricaService iMetricaService) {
            iMetricaService.a(this.f11491b, this.f11492c);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public U1(com.yandex.metrica.impl.ob.P0 r4) {
        /*
            r3 = this;
            com.yandex.metrica.impl.ob.P r0 = com.yandex.metrica.impl.ob.P.g()
            com.yandex.metrica.impl.ob.Im r0 = r0.d()
            com.yandex.metrica.core.api.executors.ICommonExecutor r0 = r0.d()
            com.yandex.metrica.impl.ob.n6 r1 = new com.yandex.metrica.impl.ob.n6
            com.yandex.metrica.impl.ob.T1 r4 = (com.yandex.metrica.impl.ob.T1) r4
            android.content.Context r2 = r4.a()
            r1.<init>(r2)
            r3.<init>(r4, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.U1.<init>(com.yandex.metrica.impl.ob.P0):void");
    }

    @Override // com.yandex.metrica.impl.ob.C0745o1.c
    public void onServiceConnected() {
        synchronized (this.f11473c) {
            this.f11473c.notifyAll();
        }
    }

    @Override // com.yandex.metrica.impl.ob.C0745o1.c
    public void onServiceDisconnected() {
    }

    public Future<Void> queuePauseUserSession(A3 a32) {
        return this.f11474d.submit(new b(a32));
    }

    public Future<Void> queueReport(f fVar) {
        Callable dVar;
        ICommonExecutor iCommonExecutor = this.f11474d;
        if (fVar.d()) {
            dVar = new c(fVar, P.g().h());
        } else {
            dVar = new d(fVar);
        }
        return iCommonExecutor.submit(dVar);
    }

    public Future<Void> queueResumeUserSession(A3 a32) {
        return this.f11474d.submit(new a(a32));
    }

    public void reportData(int i10, Bundle bundle) {
        this.f11474d.submit(new h(this, i10, bundle));
    }

    public void sendCrash(f fVar) {
        c cVar = new c(fVar, P.g().h());
        if (this.f11472b.e()) {
            try {
                this.f11474d.submit(cVar).get(4L, TimeUnit.SECONDS);
            } catch (Throwable unused) {
            }
        }
        if (!cVar.f11480d) {
            try {
                cVar.a();
            } catch (Throwable unused2) {
            }
        }
    }

    public U1(P0 p02, ICommonExecutor iCommonExecutor, C0725n6 c0725n6) {
        this.f11473c = new Object();
        this.f11471a = p02;
        this.f11474d = iCommonExecutor;
        this.f11475e = c0725n6;
        C0745o1 c10 = ((T1) p02).c();
        this.f11472b = c10;
        c10.a(this);
    }
}
