package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.If;
import java.util.Collection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class Ij extends AbstractC0812qj {

    /* renamed from: a  reason: collision with root package name */
    private final TelephonyManager f10427a;

    /* renamed from: b  reason: collision with root package name */
    private PhoneStateListener f10428b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f10429c;

    /* renamed from: d  reason: collision with root package name */
    private C0787pi f10430d;

    /* renamed from: e  reason: collision with root package name */
    private C0706mc f10431e;

    /* renamed from: f  reason: collision with root package name */
    private final G<Zj> f10432f;

    /* renamed from: g  reason: collision with root package name */
    private final G<Collection<C0907uj>> f10433g;

    /* renamed from: h  reason: collision with root package name */
    private final ICommonExecutor f10434h;

    /* renamed from: i  reason: collision with root package name */
    private final Context f10435i;

    /* renamed from: j  reason: collision with root package name */
    private final C0955wj f10436j;

    /* renamed from: k  reason: collision with root package name */
    private final Uj f10437k;

    /* renamed from: l  reason: collision with root package name */
    private final C0835rj f10438l;

    /* renamed from: m  reason: collision with root package name */
    private final Ed f10439m;

    /* renamed from: n  reason: collision with root package name */
    private C0997yd f10440n;

    /* renamed from: o  reason: collision with root package name */
    private Lj f10441o;

    /* renamed from: p  reason: collision with root package name */
    private final InterfaceC1021zd f10442p;

    /* renamed from: q  reason: collision with root package name */
    private final C0672l3 f10443q;

    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Ij.this.f10428b = new d(Ij.this, null);
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!Ij.this.f10429c) {
                Ij.this.f10429c = true;
                if (Ij.this.f10428b != null && Ij.this.f10427a != null) {
                    try {
                        Ij.this.f10427a.listen(Ij.this.f10428b, 256);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Ij.this.f10429c) {
                Ij.this.f10429c = false;
                Ij.this.f10443q.a(Ij.this);
                if (Ij.this.f10428b != null && Ij.this.f10427a != null) {
                    try {
                        Ij.this.f10427a.listen(Ij.this.f10428b, 0);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    private class d extends PhoneStateListener {
        private d() {
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            super.onSignalStrengthsChanged(signalStrength);
            Ij.a(Ij.this, signalStrength);
        }

        /* synthetic */ d(Ij ij, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Ij(Context context, ICommonExecutor iCommonExecutor) {
        this(context, new Ed(), iCommonExecutor);
    }

    public Context e() {
        return this.f10435i;
    }

    public TelephonyManager f() {
        return this.f10427a;
    }

    synchronized Zj g() {
        C0907uj b10;
        if (this.f10432f.b() || this.f10432f.d()) {
            Zj zj = new Zj(this.f10436j, this.f10437k, this.f10438l);
            C0907uj b11 = zj.b();
            if (b11 != null && b11.p() == null && !this.f10432f.b() && (b10 = this.f10432f.a().b()) != null) {
                zj.b().a(b10.p());
            }
            this.f10432f.a(zj);
        }
        return this.f10432f.a();
    }

    protected Ij(Context context, Ed ed2, ICommonExecutor iCommonExecutor) {
        this(context, ed2, new C0997yd(ed2.a()), iCommonExecutor, A2.a(17) ? new C0859sj() : new C0883tj(), new G1(), C0672l3.a());
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0812qj
    public synchronized void b() {
        this.f10434h.execute(new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean c() {
        boolean z10;
        C0706mc c0706mc = this.f10431e;
        if (c0706mc != null) {
            z10 = c0706mc.f12873l;
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0014, code lost:
        if (r0.f().f11307s != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean d() {
        /*
            r4 = this;
            monitor-enter(r4)
            monitor-enter(r4)     // Catch: java.lang.Throwable -> L1d
            com.yandex.metrica.impl.ob.pi r0 = r4.f10430d     // Catch: java.lang.Throwable -> L1a
            r1 = 1
            r2 = 0
            if (r0 == 0) goto La
            r3 = r1
            goto Lb
        La:
            r3 = r2
        Lb:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L1d
            if (r3 == 0) goto L17
            com.yandex.metrica.impl.ob.Sh r0 = r0.f()     // Catch: java.lang.Throwable -> L1d
            boolean r0 = r0.f11307s     // Catch: java.lang.Throwable -> L1d
            if (r0 == 0) goto L17
            goto L18
        L17:
            r1 = r2
        L18:
            monitor-exit(r4)
            return r1
        L1a:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L1d
            throw r0     // Catch: java.lang.Throwable -> L1d
        L1d:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Ij.d():boolean");
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0812qj
    public synchronized void a() {
        this.f10434h.execute(new b());
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0812qj
    public synchronized void a(InterfaceC0415ak interfaceC0415ak) {
        if (interfaceC0415ak != null) {
            interfaceC0415ak.a(g());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x004f A[Catch: all -> 0x0097, LOOP:0: B:29:0x004f->B:34:0x0066, LOOP_START, PHI: r5 
      PHI: (r5v2 int) = (r5v1 int), (r5v3 int) binds: [B:28:0x004d, B:34:0x0066] A[DONT_GENERATE, DONT_INLINE], TryCatch #3 {, blocks: (B:4:0x0003, B:48:0x0092, B:49:0x0093, B:5:0x0004, B:7:0x000c, B:47:0x008a, B:9:0x0014, B:11:0x0025, B:13:0x002f, B:20:0x003c, B:22:0x003f, B:27:0x0049, B:29:0x004f, B:31:0x0055, B:33:0x0063, B:34:0x0066, B:38:0x006c, B:40:0x0072, B:46:0x0087, B:43:0x007d, B:44:0x0082, B:14:0x0030, B:16:0x0035), top: B:59:0x0003 }] */
    @Override // com.yandex.metrica.impl.ob.AbstractC0812qj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(com.yandex.metrica.impl.ob.InterfaceC0931vj r9) {
        /*
            r8 = this;
            monitor-enter(r8)
            if (r9 == 0) goto L9d
            monitor-enter(r8)     // Catch: java.lang.Throwable -> L9a
            com.yandex.metrica.impl.ob.G<java.util.Collection<com.yandex.metrica.impl.ob.uj>> r0 = r8.f10433g     // Catch: java.lang.Throwable -> L97
            boolean r0 = r0.b()     // Catch: java.lang.Throwable -> L97
            if (r0 != 0) goto L14
            com.yandex.metrica.impl.ob.G<java.util.Collection<com.yandex.metrica.impl.ob.uj>> r0 = r8.f10433g     // Catch: java.lang.Throwable -> L97
            boolean r0 = r0.d()     // Catch: java.lang.Throwable -> L97
            if (r0 == 0) goto L8a
        L14:
            com.yandex.metrica.impl.ob.G<java.util.Collection<com.yandex.metrica.impl.ob.uj>> r0 = r8.f10433g     // Catch: java.lang.Throwable -> L97
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L97
            r1.<init>()     // Catch: java.lang.Throwable -> L97
            r2 = 17
            boolean r2 = com.yandex.metrica.impl.ob.A2.a(r2)     // Catch: java.lang.Throwable -> L97
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L6c
            com.yandex.metrica.impl.ob.zd r2 = r8.f10442p     // Catch: java.lang.Throwable -> L97
            android.content.Context r5 = r8.f10435i     // Catch: java.lang.Throwable -> L97
            boolean r2 = r2.a(r5)     // Catch: java.lang.Throwable -> L97
            if (r2 == 0) goto L6c
            monitor-enter(r8)     // Catch: java.lang.Throwable -> L97
            com.yandex.metrica.impl.ob.mc r2 = r8.f10431e     // Catch: java.lang.Throwable -> L69
            r5 = 0
            if (r2 == 0) goto L3b
            boolean r2 = r2.f12872k     // Catch: java.lang.Throwable -> L69
            if (r2 == 0) goto L3b
            r2 = r4
            goto L3c
        L3b:
            r2 = r5
        L3c:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L97
            if (r2 == 0) goto L6c
            android.telephony.TelephonyManager r2 = r8.f10427a     // Catch: java.lang.Throwable -> L97
            if (r2 == 0) goto L48
            java.util.List r2 = r2.getAllCellInfo()     // Catch: java.lang.Throwable -> L48
            goto L49
        L48:
            r2 = r3
        L49:
            boolean r6 = com.yandex.metrica.impl.ob.A2.b(r2)     // Catch: java.lang.Throwable -> L97
            if (r6 != 0) goto L6c
        L4f:
            int r6 = r2.size()     // Catch: java.lang.Throwable -> L97
            if (r5 >= r6) goto L6c
            java.lang.Object r6 = r2.get(r5)     // Catch: java.lang.Throwable -> L97
            android.telephony.CellInfo r6 = (android.telephony.CellInfo) r6     // Catch: java.lang.Throwable -> L97
            com.yandex.metrica.impl.ob.Lj r7 = r8.f10441o     // Catch: java.lang.Throwable -> L97
            com.yandex.metrica.impl.ob.uj r6 = r7.a(r6)     // Catch: java.lang.Throwable -> L97
            if (r6 == 0) goto L66
            r1.add(r6)     // Catch: java.lang.Throwable -> L97
        L66:
            int r5 = r5 + 1
            goto L4f
        L69:
            r9 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L97
            throw r9     // Catch: java.lang.Throwable -> L97
        L6c:
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L97
            if (r2 >= r4) goto L82
            com.yandex.metrica.impl.ob.Zj r1 = r8.g()     // Catch: java.lang.Throwable -> L97
            com.yandex.metrica.impl.ob.uj r1 = r1.b()     // Catch: java.lang.Throwable -> L97
            if (r1 != 0) goto L7d
            goto L87
        L7d:
            java.util.List r1 = java.util.Collections.singletonList(r1)     // Catch: java.lang.Throwable -> L97
            goto L86
        L82:
            java.util.List r1 = com.yandex.metrica.impl.ob.A2.c(r1)     // Catch: java.lang.Throwable -> L97
        L86:
            r3 = r1
        L87:
            r0.a(r3)     // Catch: java.lang.Throwable -> L97
        L8a:
            com.yandex.metrica.impl.ob.G<java.util.Collection<com.yandex.metrica.impl.ob.uj>> r0 = r8.f10433g     // Catch: java.lang.Throwable -> L97
            java.lang.Object r0 = r0.a()     // Catch: java.lang.Throwable -> L97
            java.util.Collection r0 = (java.util.Collection) r0     // Catch: java.lang.Throwable -> L97
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L9a
            r9.a(r0)     // Catch: java.lang.Throwable -> L9a
            goto L9d
        L97:
            r9 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L9a
            throw r9     // Catch: java.lang.Throwable -> L9a
        L9a:
            r9 = move-exception
            monitor-exit(r8)
            throw r9
        L9d:
            monitor-exit(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Ij.a(com.yandex.metrica.impl.ob.vj):void");
    }

    protected Ij(Context context, Ed ed2, C0997yd c0997yd, ICommonExecutor iCommonExecutor, Lj lj, G1 g12, C0672l3 c0672l3) {
        TelephonyManager telephonyManager;
        this.f10429c = false;
        If.c cVar = G.f10096e;
        long j10 = cVar.f10263a;
        this.f10432f = new G<>(j10, j10 * 2);
        long j11 = cVar.f10263a;
        this.f10433g = new G<>(j11, 2 * j11);
        this.f10435i = context;
        try {
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
        } catch (Throwable unused) {
            telephonyManager = null;
        }
        this.f10427a = telephonyManager;
        this.f10442p = a(c0997yd, g12);
        this.f10434h = iCommonExecutor;
        iCommonExecutor.execute(new a());
        this.f10436j = new C0955wj(this, c0997yd);
        this.f10437k = new Uj(this, c0997yd);
        this.f10438l = new C0835rj(this);
        this.f10439m = ed2;
        this.f10440n = c0997yd;
        this.f10441o = lj;
        this.f10443q = c0672l3;
    }

    static void a(Ij ij, SignalStrength signalStrength) {
        C0907uj b10;
        int evdoDbm;
        synchronized (ij) {
            if (!ij.f10432f.b() && !ij.f10432f.d() && (b10 = ij.f10432f.a().b()) != null) {
                if (signalStrength.isGsm()) {
                    int gsmSignalStrength = signalStrength.getGsmSignalStrength();
                    evdoDbm = 99 == gsmSignalStrength ? -1 : (gsmSignalStrength * 2) - 113;
                } else {
                    int cdmaDbm = signalStrength.getCdmaDbm();
                    evdoDbm = signalStrength.getEvdoDbm();
                    if (-120 == evdoDbm) {
                        evdoDbm = cdmaDbm;
                    } else if (-120 != cdmaDbm) {
                        evdoDbm = Math.min(cdmaDbm, evdoDbm);
                    }
                }
                b10.a(Integer.valueOf(evdoDbm));
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0812qj
    public void a(C0787pi c0787pi) {
        this.f10430d = c0787pi;
        this.f10439m.a(c0787pi);
        this.f10440n.a(this.f10439m.a());
        this.f10441o.a(c0787pi.f());
        if (c0787pi.d() != null) {
            this.f10432f.a(c0787pi.d().f11110a, c0787pi.d().f11110a * 2);
            this.f10433g.a(c0787pi.d().f11110a, c0787pi.d().f11110a * 2);
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0731nc
    public synchronized void a(C0706mc c0706mc) {
        this.f10431e = c0706mc;
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0812qj
    public void a(boolean z10) {
        this.f10439m.a(z10);
        this.f10440n.a(this.f10439m.a());
    }

    private static InterfaceC1021zd a(C0997yd c0997yd, G1 g12) {
        if (A2.a(29)) {
            return g12.c(c0997yd);
        }
        return g12.b(c0997yd);
    }
}
