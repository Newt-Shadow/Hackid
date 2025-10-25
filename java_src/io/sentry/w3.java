package io.sentry;

import io.sentry.d3;
import io.sentry.f6;
import io.sentry.s5;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class w3 implements w0, io.sentry.metrics.b {

    /* renamed from: b  reason: collision with root package name */
    private final s5 f23898b;

    /* renamed from: c  reason: collision with root package name */
    private final io.sentry.transport.q f23899c;

    /* renamed from: e  reason: collision with root package name */
    private final p0 f23901e;

    /* renamed from: d  reason: collision with root package name */
    private final b f23900d = new b();

    /* renamed from: a  reason: collision with root package name */
    private boolean f23897a = true;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b implements Comparator {
        private b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(e eVar, e eVar2) {
            return eVar.l().compareTo(eVar2.l());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w3(s5 s5Var) {
        p0 a10;
        this.f23898b = (s5) io.sentry.util.q.c(s5Var, "SentryOptions is required.");
        c1 transportFactory = s5Var.getTransportFactory();
        if (transportFactory instanceof k2) {
            transportFactory = new io.sentry.a();
            s5Var.setTransportFactory(transportFactory);
        }
        this.f23899c = transportFactory.a(s5Var, new b3(s5Var).a());
        if (s5Var.isEnableMetrics()) {
            a10 = new v1(s5Var, this);
        } else {
            a10 = io.sentry.metrics.f.a();
        }
        this.f23901e = a10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(z4 z4Var, c0 c0Var, f6 f6Var) {
        f6.b bVar;
        String str;
        boolean z10 = false;
        if (f6Var != null) {
            String str2 = null;
            if (z4Var.x0()) {
                bVar = f6.b.Crashed;
            } else {
                bVar = null;
            }
            z10 = (f6.b.Crashed == bVar || z4Var.y0()) ? true : true;
            if (z4Var.K() != null && z4Var.K().l() != null && z4Var.K().l().containsKey("user-agent")) {
                str = (String) z4Var.K().l().get("user-agent");
            } else {
                str = null;
            }
            Object g10 = io.sentry.util.j.g(c0Var);
            if (g10 instanceof io.sentry.hints.a) {
                str2 = ((io.sentry.hints.a) g10).g();
                bVar = f6.b.Abnormal;
            }
            if (f6Var.q(bVar, str, z10, str2) && f6Var.m()) {
                f6Var.c();
                return;
            }
            return;
        }
        this.f23898b.getLogger().c(j5.INFO, "Session is null on scope.withSession", new Object[0]);
    }

    private z4 B(z4 z4Var, c0 c0Var, List list) {
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            y yVar = (y) it.next();
            try {
                boolean z10 = yVar instanceof c;
                boolean h10 = io.sentry.util.j.h(c0Var, io.sentry.hints.c.class);
                if (h10 && z10) {
                    z4Var = yVar.b(z4Var, c0Var);
                    continue;
                } else if (!h10 && !z10) {
                    z4Var = yVar.b(z4Var, c0Var);
                    continue;
                }
            } catch (Throwable th) {
                this.f23898b.getLogger().a(j5.ERROR, th, "An exception occurred while processing event by processor: %s", yVar.getClass().getName());
                continue;
            }
            if (z4Var == null) {
                this.f23898b.getLogger().c(j5.DEBUG, "Event was dropped by a processor: %s", yVar.getClass().getName());
                this.f23898b.getClientReportRecorder().a(io.sentry.clientreport.f.EVENT_PROCESSOR, i.Error);
                break;
            }
        }
        return z4Var;
    }

    private t5 C(t5 t5Var, c0 c0Var, List list) {
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            y yVar = (y) it.next();
            try {
                t5Var = yVar.a(t5Var, c0Var);
                continue;
            } catch (Throwable th) {
                this.f23898b.getLogger().a(j5.ERROR, th, "An exception occurred while processing replay event by processor: %s", yVar.getClass().getName());
                continue;
            }
            if (t5Var == null) {
                this.f23898b.getLogger().c(j5.DEBUG, "Replay event was dropped by a processor: %s", yVar.getClass().getName());
                this.f23898b.getClientReportRecorder().a(io.sentry.clientreport.f.EVENT_PROCESSOR, i.Replay);
                break;
            }
        }
        return t5Var;
    }

    private io.sentry.protocol.y D(io.sentry.protocol.y yVar, c0 c0Var, List list) {
        int size;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            y yVar2 = (y) it.next();
            int size2 = yVar.q0().size();
            try {
                yVar = yVar2.c(yVar, c0Var);
            } catch (Throwable th) {
                this.f23898b.getLogger().a(j5.ERROR, th, "An exception occurred while processing transaction by processor: %s", yVar2.getClass().getName());
            }
            if (yVar == null) {
                size = 0;
            } else {
                size = yVar.q0().size();
            }
            if (yVar == null) {
                this.f23898b.getLogger().c(j5.DEBUG, "Transaction was dropped by a processor: %s", yVar2.getClass().getName());
                io.sentry.clientreport.h clientReportRecorder = this.f23898b.getClientReportRecorder();
                io.sentry.clientreport.f fVar = io.sentry.clientreport.f.EVENT_PROCESSOR;
                clientReportRecorder.a(fVar, i.Transaction);
                this.f23898b.getClientReportRecorder().c(fVar, i.Span, size2 + 1);
                break;
            } else if (size < size2) {
                int i10 = size2 - size;
                this.f23898b.getLogger().c(j5.DEBUG, "%d spans were dropped by a processor: %s", Integer.valueOf(i10), yVar2.getClass().getName());
                this.f23898b.getClientReportRecorder().c(io.sentry.clientreport.f.EVENT_PROCESSOR, i.Span, i10);
            }
        }
        return yVar;
    }

    private boolean E() {
        io.sentry.util.t a10;
        if (this.f23898b.getSampleRate() == null) {
            a10 = null;
        } else {
            a10 = io.sentry.util.v.a();
        }
        if (this.f23898b.getSampleRate() == null || a10 == null || this.f23898b.getSampleRate().doubleValue() >= a10.c()) {
            return true;
        }
        return false;
    }

    private io.sentry.protocol.r F(a4 a4Var, c0 c0Var) {
        s5.c beforeEnvelopeCallback = this.f23898b.getBeforeEnvelopeCallback();
        if (beforeEnvelopeCallback != null) {
            try {
                beforeEnvelopeCallback.a(a4Var, c0Var);
            } catch (Throwable th) {
                this.f23898b.getLogger().b(j5.ERROR, "The BeforeEnvelope callback threw an exception.", th);
            }
        }
        if (c0Var == null) {
            this.f23899c.y0(a4Var);
        } else {
            this.f23899c.V(a4Var, c0Var);
        }
        io.sentry.protocol.r a10 = a4Var.b().a();
        if (a10 == null) {
            return io.sentry.protocol.r.f23462b;
        }
        return a10;
    }

    private boolean G(t3 t3Var, c0 c0Var) {
        if (io.sentry.util.j.u(c0Var)) {
            return true;
        }
        this.f23898b.getLogger().c(j5.DEBUG, "Event was cached so not applying scope: %s", t3Var.G());
        return false;
    }

    private boolean H(f6 f6Var, f6 f6Var2) {
        boolean z10;
        boolean z11;
        if (f6Var2 == null) {
            return false;
        }
        if (f6Var == null) {
            return true;
        }
        f6.b l10 = f6Var2.l();
        f6.b bVar = f6.b.Crashed;
        if (l10 == bVar && f6Var.l() != bVar) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return true;
        }
        if (f6Var2.e() > 0 && f6Var.e() <= 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            return false;
        }
        return true;
    }

    private void I(t3 t3Var, Collection collection) {
        List B = t3Var.B();
        if (B != null && !collection.isEmpty()) {
            B.addAll(collection);
            Collections.sort(B, this.f23900d);
        }
    }

    private void h(u0 u0Var, c0 c0Var) {
        if (u0Var != null) {
            c0Var.a(u0Var.x());
        }
    }

    private t3 j(t3 t3Var, u0 u0Var) {
        if (u0Var != null) {
            if (t3Var.K() == null) {
                t3Var.a0(u0Var.H());
            }
            if (t3Var.Q() == null) {
                t3Var.f0(u0Var.G());
            }
            if (t3Var.N() == null) {
                t3Var.e0(new HashMap(u0Var.w()));
            } else {
                for (Map.Entry entry : u0Var.w().entrySet()) {
                    if (!t3Var.N().containsKey(entry.getKey())) {
                        t3Var.N().put((String) entry.getKey(), (String) entry.getValue());
                    }
                }
            }
            if (t3Var.B() == null) {
                t3Var.R(new ArrayList(u0Var.l()));
            } else {
                I(t3Var, u0Var.l());
            }
            if (t3Var.H() == null) {
                t3Var.X(new HashMap(u0Var.getExtras()));
            } else {
                for (Map.Entry entry2 : u0Var.getExtras().entrySet()) {
                    if (!t3Var.H().containsKey(entry2.getKey())) {
                        t3Var.H().put((String) entry2.getKey(), entry2.getValue());
                    }
                }
            }
            io.sentry.protocol.c C = t3Var.C();
            Iterator it = new io.sentry.protocol.c(u0Var.y()).entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry3 = (Map.Entry) it.next();
                if (!C.containsKey(entry3.getKey())) {
                    C.put((String) entry3.getKey(), entry3.getValue());
                }
            }
        }
        return t3Var;
    }

    private z4 k(z4 z4Var, u0 u0Var, c0 c0Var) {
        if (u0Var != null) {
            j(z4Var, u0Var);
            if (z4Var.v0() == null) {
                z4Var.G0(u0Var.J());
            }
            if (z4Var.q0() == null) {
                z4Var.A0(u0Var.F());
            }
            if (u0Var.m() != null) {
                z4Var.B0(u0Var.m());
            }
            z0 i10 = u0Var.i();
            if (z4Var.C().f() == null) {
                if (i10 == null) {
                    z4Var.C().n(y6.q(u0Var.t()));
                } else {
                    z4Var.C().n(i10.o());
                }
            }
            return B(z4Var, c0Var, u0Var.I());
        }
        return z4Var;
    }

    private t5 n(t5 t5Var, u0 u0Var) {
        if (u0Var != null) {
            if (t5Var.K() == null) {
                t5Var.a0(u0Var.H());
            }
            if (t5Var.Q() == null) {
                t5Var.f0(u0Var.G());
            }
            if (t5Var.N() == null) {
                t5Var.e0(new HashMap(u0Var.w()));
            } else {
                for (Map.Entry entry : u0Var.w().entrySet()) {
                    if (!t5Var.N().containsKey(entry.getKey())) {
                        t5Var.N().put((String) entry.getKey(), (String) entry.getValue());
                    }
                }
            }
            io.sentry.protocol.c C = t5Var.C();
            Iterator it = new io.sentry.protocol.c(u0Var.y()).entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry2 = (Map.Entry) it.next();
                if (!C.containsKey(entry2.getKey())) {
                    C.put((String) entry2.getKey(), entry2.getValue());
                }
            }
            z0 i10 = u0Var.i();
            if (t5Var.C().f() == null) {
                if (i10 == null) {
                    t5Var.C().n(y6.q(u0Var.t()));
                } else {
                    t5Var.C().n(i10.o());
                }
            }
        }
        return t5Var;
    }

    private a4 p(t3 t3Var, List list, f6 f6Var, v6 v6Var, u2 u2Var) {
        io.sentry.protocol.r rVar;
        ArrayList arrayList = new ArrayList();
        if (t3Var != null) {
            arrayList.add(x4.y(this.f23898b.getSerializer(), t3Var));
            rVar = t3Var.G();
        } else {
            rVar = null;
        }
        if (f6Var != null) {
            arrayList.add(x4.C(this.f23898b.getSerializer(), f6Var));
        }
        if (u2Var != null) {
            arrayList.add(x4.A(u2Var, this.f23898b.getMaxTraceFileSize(), this.f23898b.getSerializer()));
            if (rVar == null) {
                rVar = new io.sentry.protocol.r(u2Var.B());
            }
        }
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(x4.w(this.f23898b.getSerializer(), this.f23898b.getLogger(), (io.sentry.b) it.next(), this.f23898b.getMaxAttachmentSize()));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new a4(new b4(rVar, this.f23898b.getSdkVersion(), v6Var), arrayList);
    }

    private a4 q(t5 t5Var, z2 z2Var, v6 v6Var, boolean z10) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(x4.B(this.f23898b.getSerializer(), this.f23898b.getLogger(), t5Var, z2Var, z10));
        return new a4(new b4(t5Var.G(), this.f23898b.getSessionReplay().i(), v6Var), arrayList);
    }

    private z4 r(z4 z4Var, c0 c0Var) {
        s5.d beforeSend = this.f23898b.getBeforeSend();
        if (beforeSend != null) {
            try {
                return beforeSend.execute(z4Var, c0Var);
            } catch (Throwable th) {
                this.f23898b.getLogger().b(j5.ERROR, "The BeforeSend callback threw an exception. It will be added as breadcrumb and continue.", th);
                return null;
            }
        }
        return z4Var;
    }

    private t5 s(t5 t5Var, c0 c0Var) {
        s5.e beforeSendReplay = this.f23898b.getBeforeSendReplay();
        if (beforeSendReplay != null) {
            try {
                return beforeSendReplay.a(t5Var, c0Var);
            } catch (Throwable th) {
                this.f23898b.getLogger().b(j5.ERROR, "The BeforeSendReplay callback threw an exception. It will be added as breadcrumb and continue.", th);
                return null;
            }
        }
        return t5Var;
    }

    private io.sentry.protocol.y t(io.sentry.protocol.y yVar, c0 c0Var) {
        this.f23898b.getBeforeSendTransaction();
        return yVar;
    }

    private List w(List list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            io.sentry.b bVar = (io.sentry.b) it.next();
            if (bVar.j()) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    private void x(u0 u0Var, c0 c0Var) {
        a1 s10 = u0Var.s();
        if (s10 != null && io.sentry.util.j.h(c0Var, io.sentry.hints.q.class)) {
            Object g10 = io.sentry.util.j.g(c0Var);
            if (g10 instanceof io.sentry.hints.f) {
                ((io.sentry.hints.f) g10).h(s10.m());
                s10.e(p6.ABORTED, false, c0Var);
                return;
            }
            s10.e(p6.ABORTED, false, null);
        }
    }

    private List y(c0 c0Var) {
        List e10 = c0Var.e();
        io.sentry.b g10 = c0Var.g();
        if (g10 != null) {
            e10.add(g10);
        }
        io.sentry.b i10 = c0Var.i();
        if (i10 != null) {
            e10.add(i10);
        }
        io.sentry.b h10 = c0Var.h();
        if (h10 != null) {
            e10.add(h10);
        }
        return e10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void z(f6 f6Var) {
    }

    f6 J(final z4 z4Var, final c0 c0Var, u0 u0Var) {
        if (io.sentry.util.j.u(c0Var)) {
            if (u0Var != null) {
                return u0Var.u(new d3.b() { // from class: io.sentry.v3
                    @Override // io.sentry.d3.b
                    public final void a(f6 f6Var) {
                        w3.this.A(z4Var, c0Var, f6Var);
                    }
                });
            }
            this.f23898b.getLogger().c(j5.INFO, "Scope is null on client.captureEvent", new Object[0]);
        }
        return null;
    }

    @Override // io.sentry.w0
    public void a(f6 f6Var, c0 c0Var) {
        io.sentry.util.q.c(f6Var, "Session is required.");
        if (f6Var.h() != null && !f6Var.h().isEmpty()) {
            try {
                u(a4.a(this.f23898b.getSerializer(), f6Var, this.f23898b.getSdkVersion()), c0Var);
                return;
            } catch (IOException e10) {
                this.f23898b.getLogger().b(j5.ERROR, "Failed to capture session.", e10);
                return;
            }
        }
        this.f23898b.getLogger().c(j5.WARNING, "Sessions can't be captured without setting a release.", new Object[0]);
    }

    @Override // io.sentry.w0
    public io.sentry.protocol.r b(t5 t5Var, u0 u0Var, c0 c0Var) {
        io.sentry.protocol.r rVar;
        v6 i10;
        io.sentry.util.q.c(t5Var, "SessionReplay is required.");
        if (c0Var == null) {
            c0Var = new c0();
        }
        if (G(t5Var, c0Var)) {
            n(t5Var, u0Var);
        }
        ILogger logger = this.f23898b.getLogger();
        j5 j5Var = j5.DEBUG;
        logger.c(j5Var, "Capturing session replay: %s", t5Var.G());
        io.sentry.protocol.r rVar2 = io.sentry.protocol.r.f23462b;
        if (t5Var.G() != null) {
            rVar = t5Var.G();
        } else {
            rVar = rVar2;
        }
        t5 C = C(t5Var, c0Var, this.f23898b.getEventProcessors());
        if (C != null && (C = s(C, c0Var)) == null) {
            this.f23898b.getLogger().c(j5Var, "Event was dropped by beforeSendReplay", new Object[0]);
            this.f23898b.getClientReportRecorder().a(io.sentry.clientreport.f.BEFORE_SEND, i.Replay);
        }
        if (C == null) {
            return rVar2;
        }
        if (u0Var != null) {
            try {
                a1 s10 = u0Var.s();
                if (s10 != null) {
                    i10 = s10.a();
                } else {
                    i10 = io.sentry.util.a0.g(u0Var, this.f23898b).i();
                }
            } catch (IOException e10) {
                this.f23898b.getLogger().a(j5.WARNING, e10, "Capturing event %s failed.", rVar);
                return io.sentry.protocol.r.f23462b;
            }
        } else {
            i10 = null;
        }
        a4 q10 = q(C, c0Var.f(), i10, io.sentry.util.j.h(c0Var, io.sentry.hints.c.class));
        c0Var.b();
        this.f23899c.V(q10, c0Var);
        return rVar;
    }

    @Override // io.sentry.metrics.b
    public io.sentry.protocol.r c(io.sentry.metrics.a aVar) {
        io.sentry.protocol.r v10 = v(new a4(new b4(new io.sentry.protocol.r(), this.f23898b.getSdkVersion(), null), Collections.singleton(x4.z(aVar))));
        if (v10 == null) {
            return io.sentry.protocol.r.f23462b;
        }
        return v10;
    }

    @Override // io.sentry.w0
    public io.sentry.protocol.r d(io.sentry.protocol.y yVar, v6 v6Var, u0 u0Var, c0 c0Var, u2 u2Var) {
        c0 c0Var2;
        io.sentry.protocol.r rVar;
        io.sentry.protocol.y yVar2;
        int size;
        io.sentry.util.q.c(yVar, "Transaction is required.");
        if (c0Var == null) {
            c0Var2 = new c0();
        } else {
            c0Var2 = c0Var;
        }
        if (G(yVar, c0Var2)) {
            h(u0Var, c0Var2);
        }
        ILogger logger = this.f23898b.getLogger();
        j5 j5Var = j5.DEBUG;
        logger.c(j5Var, "Capturing transaction: %s", yVar.G());
        io.sentry.protocol.r rVar2 = io.sentry.protocol.r.f23462b;
        if (yVar.G() != null) {
            rVar = yVar.G();
        } else {
            rVar = rVar2;
        }
        if (G(yVar, c0Var2)) {
            yVar2 = (io.sentry.protocol.y) j(yVar, u0Var);
            if (yVar2 != null && u0Var != null) {
                yVar2 = D(yVar2, c0Var2, u0Var.I());
            }
            if (yVar2 == null) {
                this.f23898b.getLogger().c(j5Var, "Transaction was dropped by applyScope", new Object[0]);
            }
        } else {
            yVar2 = yVar;
        }
        if (yVar2 != null) {
            yVar2 = D(yVar2, c0Var2, this.f23898b.getEventProcessors());
        }
        if (yVar2 == null) {
            this.f23898b.getLogger().c(j5Var, "Transaction was dropped by Event processors.", new Object[0]);
            return rVar2;
        }
        int size2 = yVar2.q0().size();
        io.sentry.protocol.y t10 = t(yVar2, c0Var2);
        if (t10 == null) {
            size = 0;
        } else {
            size = t10.q0().size();
        }
        if (t10 == null) {
            this.f23898b.getLogger().c(j5Var, "Transaction was dropped by beforeSendTransaction.", new Object[0]);
            io.sentry.clientreport.h clientReportRecorder = this.f23898b.getClientReportRecorder();
            io.sentry.clientreport.f fVar = io.sentry.clientreport.f.BEFORE_SEND;
            clientReportRecorder.a(fVar, i.Transaction);
            this.f23898b.getClientReportRecorder().c(fVar, i.Span, size2 + 1);
            return rVar2;
        }
        if (size < size2) {
            int i10 = size2 - size;
            this.f23898b.getLogger().c(j5Var, "%d spans were dropped by beforeSendTransaction.", Integer.valueOf(i10));
            this.f23898b.getClientReportRecorder().c(io.sentry.clientreport.f.BEFORE_SEND, i.Span, i10);
        }
        try {
            a4 p10 = p(t10, w(y(c0Var2)), null, v6Var, u2Var);
            c0Var2.b();
            if (p10 != null) {
                return F(p10, c0Var2);
            }
            return rVar;
        } catch (io.sentry.exception.b | IOException e10) {
            this.f23898b.getLogger().a(j5.WARNING, e10, "Capturing transaction %s failed.", rVar);
            return io.sentry.protocol.r.f23462b;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x0199  */
    @Override // io.sentry.w0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.sentry.protocol.r e(io.sentry.z4 r12, io.sentry.u0 r13, io.sentry.c0 r14) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.w3.e(io.sentry.z4, io.sentry.u0, io.sentry.c0):io.sentry.protocol.r");
    }

    @Override // io.sentry.w0
    public void i(boolean z10) {
        long shutdownTimeoutMillis;
        this.f23898b.getLogger().c(j5.INFO, "Closing SentryClient.", new Object[0]);
        try {
            this.f23901e.close();
        } catch (IOException e10) {
            this.f23898b.getLogger().b(j5.WARNING, "Failed to close the metrics aggregator.", e10);
        }
        if (z10) {
            shutdownTimeoutMillis = 0;
        } else {
            try {
                shutdownTimeoutMillis = this.f23898b.getShutdownTimeoutMillis();
            } catch (IOException e11) {
                this.f23898b.getLogger().b(j5.WARNING, "Failed to close the connection to the Sentry Server.", e11);
            }
        }
        o(shutdownTimeoutMillis);
        this.f23899c.i(z10);
        for (y yVar : this.f23898b.getEventProcessors()) {
            if (yVar instanceof Closeable) {
                try {
                    ((Closeable) yVar).close();
                } catch (IOException e12) {
                    this.f23898b.getLogger().c(j5.WARNING, "Failed to close the event processor {}.", yVar, e12);
                }
            }
        }
        this.f23897a = false;
    }

    @Override // io.sentry.w0
    public io.sentry.transport.z l() {
        return this.f23899c.l();
    }

    @Override // io.sentry.w0
    public boolean m() {
        return this.f23899c.m();
    }

    @Override // io.sentry.w0
    public void o(long j10) {
        this.f23899c.o(j10);
    }

    @Override // io.sentry.w0
    public io.sentry.protocol.r u(a4 a4Var, c0 c0Var) {
        io.sentry.util.q.c(a4Var, "SentryEnvelope is required.");
        if (c0Var == null) {
            c0Var = new c0();
        }
        try {
            c0Var.b();
            return F(a4Var, c0Var);
        } catch (IOException e10) {
            this.f23898b.getLogger().b(j5.ERROR, "Failed to capture envelope.", e10);
            return io.sentry.protocol.r.f23462b;
        }
    }
}
