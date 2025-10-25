package com.google.android.exoplayer2.source.dash;

import android.os.Handler;
import android.os.Message;
import b3.e3;
import b3.x1;
import b3.y1;
import d4.l0;
import f4.f;
import g3.b0;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import x4.h;
import y4.e0;
import y4.q0;
/* loaded from: classes.dex */
public final class e implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final x4.b f5683a;

    /* renamed from: b  reason: collision with root package name */
    private final b f5684b;

    /* renamed from: f  reason: collision with root package name */
    private h4.c f5688f;

    /* renamed from: g  reason: collision with root package name */
    private long f5689g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f5690h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f5691i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f5692j;

    /* renamed from: e  reason: collision with root package name */
    private final TreeMap f5687e = new TreeMap();

    /* renamed from: d  reason: collision with root package name */
    private final Handler f5686d = q0.x(this);

    /* renamed from: c  reason: collision with root package name */
    private final v3.b f5685c = new v3.b();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f5693a;

        /* renamed from: b  reason: collision with root package name */
        public final long f5694b;

        public a(long j10, long j11) {
            this.f5693a = j10;
            this.f5694b = j11;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a();

        void b(long j10);
    }

    /* loaded from: classes.dex */
    public final class c implements b0 {

        /* renamed from: a  reason: collision with root package name */
        private final l0 f5695a;

        /* renamed from: b  reason: collision with root package name */
        private final y1 f5696b = new y1();

        /* renamed from: c  reason: collision with root package name */
        private final t3.d f5697c = new t3.d();

        /* renamed from: d  reason: collision with root package name */
        private long f5698d = -9223372036854775807L;

        c(x4.b bVar) {
            this.f5695a = l0.l(bVar);
        }

        private t3.d g() {
            this.f5697c.l();
            if (this.f5695a.S(this.f5696b, this.f5697c, 0, false) == -4) {
                this.f5697c.x();
                return this.f5697c;
            }
            return null;
        }

        private void k(long j10, long j11) {
            e.this.f5686d.sendMessage(e.this.f5686d.obtainMessage(1, new a(j10, j11)));
        }

        private void l() {
            while (this.f5695a.K(false)) {
                t3.d g10 = g();
                if (g10 != null) {
                    long j10 = g10.f15291e;
                    t3.a a10 = e.this.f5685c.a(g10);
                    if (a10 != null) {
                        v3.a aVar = (v3.a) a10.d(0);
                        if (e.h(aVar.f31197a, aVar.f31198b)) {
                            m(j10, aVar);
                        }
                    }
                }
            }
            this.f5695a.s();
        }

        private void m(long j10, v3.a aVar) {
            long f10 = e.f(aVar);
            if (f10 == -9223372036854775807L) {
                return;
            }
            k(j10, f10);
        }

        @Override // g3.b0
        public void a(e0 e0Var, int i10, int i11) {
            this.f5695a.b(e0Var, i10);
        }

        @Override // g3.b0
        public void c(x1 x1Var) {
            this.f5695a.c(x1Var);
        }

        @Override // g3.b0
        public int d(h hVar, int i10, boolean z10, int i11) {
            return this.f5695a.e(hVar, i10, z10);
        }

        @Override // g3.b0
        public void f(long j10, int i10, int i11, int i12, b0.a aVar) {
            this.f5695a.f(j10, i10, i11, i12, aVar);
            l();
        }

        public boolean h(long j10) {
            return e.this.j(j10);
        }

        public void i(f fVar) {
            long j10 = this.f5698d;
            if (j10 == -9223372036854775807L || fVar.f15785h > j10) {
                this.f5698d = fVar.f15785h;
            }
            e.this.m(fVar);
        }

        public boolean j(f fVar) {
            boolean z10;
            long j10 = this.f5698d;
            if (j10 != -9223372036854775807L && j10 < fVar.f15784g) {
                z10 = true;
            } else {
                z10 = false;
            }
            return e.this.n(z10);
        }

        public void n() {
            this.f5695a.T();
        }
    }

    public e(h4.c cVar, b bVar, x4.b bVar2) {
        this.f5688f = cVar;
        this.f5684b = bVar;
        this.f5683a = bVar2;
    }

    private Map.Entry e(long j10) {
        return this.f5687e.ceilingEntry(Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long f(v3.a aVar) {
        try {
            return q0.H0(q0.D(aVar.f31201e));
        } catch (e3 unused) {
            return -9223372036854775807L;
        }
    }

    private void g(long j10, long j11) {
        Long l10 = (Long) this.f5687e.get(Long.valueOf(j11));
        if (l10 == null) {
            this.f5687e.put(Long.valueOf(j11), Long.valueOf(j10));
        } else if (l10.longValue() > j10) {
            this.f5687e.put(Long.valueOf(j11), Long.valueOf(j10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean h(String str, String str2) {
        if ("urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || "2".equals(str2) || "3".equals(str2))) {
            return true;
        }
        return false;
    }

    private void i() {
        if (!this.f5690h) {
            return;
        }
        this.f5691i = true;
        this.f5690h = false;
        this.f5684b.a();
    }

    private void l() {
        this.f5684b.b(this.f5689g);
    }

    private void p() {
        Iterator it = this.f5687e.entrySet().iterator();
        while (it.hasNext()) {
            if (((Long) ((Map.Entry) it.next()).getKey()).longValue() < this.f5688f.f16767h) {
                it.remove();
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.f5692j) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        a aVar = (a) message.obj;
        g(aVar.f5693a, aVar.f5694b);
        return true;
    }

    boolean j(long j10) {
        h4.c cVar = this.f5688f;
        boolean z10 = false;
        if (!cVar.f16763d) {
            return false;
        }
        if (this.f5691i) {
            return true;
        }
        Map.Entry e10 = e(cVar.f16767h);
        if (e10 != null && ((Long) e10.getValue()).longValue() < j10) {
            this.f5689g = ((Long) e10.getKey()).longValue();
            l();
            z10 = true;
        }
        if (z10) {
            i();
        }
        return z10;
    }

    public c k() {
        return new c(this.f5683a);
    }

    void m(f fVar) {
        this.f5690h = true;
    }

    boolean n(boolean z10) {
        if (!this.f5688f.f16763d) {
            return false;
        }
        if (this.f5691i) {
            return true;
        }
        if (!z10) {
            return false;
        }
        i();
        return true;
    }

    public void o() {
        this.f5692j = true;
        this.f5686d.removeCallbacksAndMessages(null);
    }

    public void q(h4.c cVar) {
        this.f5691i = false;
        this.f5689g = -9223372036854775807L;
        this.f5688f = cVar;
        p();
    }
}
