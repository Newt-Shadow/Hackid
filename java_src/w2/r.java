package w2;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import q2.g;
import s2.c;
import y2.b;
/* loaded from: classes.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private final Context f31697a;

    /* renamed from: b  reason: collision with root package name */
    private final q2.e f31698b;

    /* renamed from: c  reason: collision with root package name */
    private final x2.d f31699c;

    /* renamed from: d  reason: collision with root package name */
    private final x f31700d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f31701e;

    /* renamed from: f  reason: collision with root package name */
    private final y2.b f31702f;

    /* renamed from: g  reason: collision with root package name */
    private final z2.a f31703g;

    /* renamed from: h  reason: collision with root package name */
    private final z2.a f31704h;

    /* renamed from: i  reason: collision with root package name */
    private final x2.c f31705i;

    public r(Context context, q2.e eVar, x2.d dVar, x xVar, Executor executor, y2.b bVar, z2.a aVar, z2.a aVar2, x2.c cVar) {
        this.f31697a = context;
        this.f31698b = eVar;
        this.f31699c = dVar;
        this.f31700d = xVar;
        this.f31701e = executor;
        this.f31702f = bVar;
        this.f31703g = aVar;
        this.f31704h = aVar2;
        this.f31705i = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean l(p2.p pVar) {
        return Boolean.valueOf(this.f31699c.K0(pVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Iterable m(p2.p pVar) {
        return this.f31699c.H0(pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object n(Iterable iterable, p2.p pVar, long j10) {
        this.f31699c.N0(iterable);
        this.f31699c.z0(pVar, this.f31703g.a() + j10);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object o(Iterable iterable) {
        this.f31699c.B(iterable);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object p() {
        this.f31705i.b();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object q(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            this.f31705i.c(((Integer) entry.getValue()).intValue(), c.b.INVALID_PAYLOD, (String) entry.getKey());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object r(p2.p pVar, long j10) {
        this.f31699c.z0(pVar, this.f31703g.a() + j10);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object s(p2.p pVar, int i10) {
        this.f31700d.a(pVar, i10 + 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(final p2.p pVar, final int i10, Runnable runnable) {
        try {
            try {
                y2.b bVar = this.f31702f;
                final x2.d dVar = this.f31699c;
                Objects.requireNonNull(dVar);
                bVar.a(new b.a() { // from class: w2.i
                    @Override // y2.b.a
                    public final Object execute() {
                        return Integer.valueOf(x2.d.this.y());
                    }
                });
                if (!k()) {
                    this.f31702f.a(new b.a() { // from class: w2.j
                        @Override // y2.b.a
                        public final Object execute() {
                            Object s10;
                            s10 = r.this.s(pVar, i10);
                            return s10;
                        }
                    });
                } else {
                    u(pVar, i10);
                }
            } catch (y2.a unused) {
                this.f31700d.a(pVar, i10 + 1);
            }
        } finally {
            runnable.run();
        }
    }

    public p2.i j(q2.m mVar) {
        y2.b bVar = this.f31702f;
        final x2.c cVar = this.f31705i;
        Objects.requireNonNull(cVar);
        return mVar.a(p2.i.a().i(this.f31703g.a()).o(this.f31704h.a()).n("GDT_CLIENT_METRICS").h(new p2.h(n2.c.b("proto"), ((s2.a) bVar.a(new b.a() { // from class: w2.h
            @Override // y2.b.a
            public final Object execute() {
                return x2.c.this.e();
            }
        })).f())).d());
    }

    boolean k() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f31697a.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    public q2.g u(final p2.p pVar, int i10) {
        q2.g b10;
        q2.m mVar = this.f31698b.get(pVar.b());
        long j10 = 0;
        q2.g e10 = q2.g.e(0L);
        while (true) {
            final long j11 = j10;
            while (((Boolean) this.f31702f.a(new b.a() { // from class: w2.k
                @Override // y2.b.a
                public final Object execute() {
                    Boolean l10;
                    l10 = r.this.l(pVar);
                    return l10;
                }
            })).booleanValue()) {
                final Iterable<x2.k> iterable = (Iterable) this.f31702f.a(new b.a() { // from class: w2.l
                    @Override // y2.b.a
                    public final Object execute() {
                        Iterable m10;
                        m10 = r.this.m(pVar);
                        return m10;
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return e10;
                }
                if (mVar == null) {
                    t2.a.b("Uploader", "Unknown backend for %s, deleting event batch for it...", pVar);
                    b10 = q2.g.a();
                } else {
                    ArrayList arrayList = new ArrayList();
                    for (x2.k kVar : iterable) {
                        arrayList.add(kVar.b());
                    }
                    if (pVar.e()) {
                        arrayList.add(j(mVar));
                    }
                    b10 = mVar.b(q2.f.a().b(arrayList).c(pVar.c()).a());
                }
                e10 = b10;
                if (e10.c() == g.a.TRANSIENT_ERROR) {
                    this.f31702f.a(new b.a() { // from class: w2.m
                        @Override // y2.b.a
                        public final Object execute() {
                            Object n10;
                            n10 = r.this.n(iterable, pVar, j11);
                            return n10;
                        }
                    });
                    this.f31700d.b(pVar, i10 + 1, true);
                    return e10;
                }
                this.f31702f.a(new b.a() { // from class: w2.n
                    @Override // y2.b.a
                    public final Object execute() {
                        Object o10;
                        o10 = r.this.o(iterable);
                        return o10;
                    }
                });
                if (e10.c() == g.a.OK) {
                    j10 = Math.max(j11, e10.b());
                    if (pVar.e()) {
                        this.f31702f.a(new b.a() { // from class: w2.o
                            @Override // y2.b.a
                            public final Object execute() {
                                Object p10;
                                p10 = r.this.p();
                                return p10;
                            }
                        });
                    }
                } else if (e10.c() == g.a.INVALID_PAYLOAD) {
                    final HashMap hashMap = new HashMap();
                    for (x2.k kVar2 : iterable) {
                        String n10 = kVar2.b().n();
                        if (!hashMap.containsKey(n10)) {
                            hashMap.put(n10, 1);
                        } else {
                            hashMap.put(n10, Integer.valueOf(((Integer) hashMap.get(n10)).intValue() + 1));
                        }
                    }
                    this.f31702f.a(new b.a() { // from class: w2.p
                        @Override // y2.b.a
                        public final Object execute() {
                            Object q10;
                            q10 = r.this.q(hashMap);
                            return q10;
                        }
                    });
                }
            }
            this.f31702f.a(new b.a() { // from class: w2.q
                @Override // y2.b.a
                public final Object execute() {
                    Object r10;
                    r10 = r.this.r(pVar, j11);
                    return r10;
                }
            });
            return e10;
        }
    }

    public void v(final p2.p pVar, final int i10, final Runnable runnable) {
        this.f31701e.execute(new Runnable() { // from class: w2.g
            @Override // java.lang.Runnable
            public final void run() {
                r.this.t(pVar, i10, runnable);
            }
        });
    }
}
