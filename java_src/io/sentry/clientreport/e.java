package io.sentry.clientreport;

import io.sentry.a4;
import io.sentry.i5;
import io.sentry.j5;
import io.sentry.protocol.y;
import io.sentry.s5;
import io.sentry.x4;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2.dex */
public final class e implements h {

    /* renamed from: a  reason: collision with root package name */
    private final i f22995a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final s5 f22996b;

    public e(s5 s5Var) {
        this.f22996b = s5Var;
    }

    private io.sentry.i f(i5 i5Var) {
        if (i5.Event.equals(i5Var)) {
            return io.sentry.i.Error;
        }
        if (i5.Session.equals(i5Var)) {
            return io.sentry.i.Session;
        }
        if (i5.Transaction.equals(i5Var)) {
            return io.sentry.i.Transaction;
        }
        if (i5.UserFeedback.equals(i5Var)) {
            return io.sentry.i.UserReport;
        }
        if (i5.Profile.equals(i5Var)) {
            return io.sentry.i.Profile;
        }
        if (i5.Statsd.equals(i5Var)) {
            return io.sentry.i.MetricBucket;
        }
        if (i5.Attachment.equals(i5Var)) {
            return io.sentry.i.Attachment;
        }
        if (i5.CheckIn.equals(i5Var)) {
            return io.sentry.i.Monitor;
        }
        if (i5.ReplayVideo.equals(i5Var)) {
            return io.sentry.i.Replay;
        }
        return io.sentry.i.Default;
    }

    private void g(String str, String str2, Long l10) {
        this.f22995a.b(new d(str, str2), l10);
    }

    private void i(c cVar) {
        if (cVar == null) {
            return;
        }
        for (g gVar : cVar.a()) {
            g(gVar.c(), gVar.a(), gVar.b());
        }
    }

    @Override // io.sentry.clientreport.h
    public void a(f fVar, io.sentry.i iVar) {
        c(fVar, iVar, 1L);
    }

    @Override // io.sentry.clientreport.h
    public void b(f fVar, a4 a4Var) {
        if (a4Var == null) {
            return;
        }
        try {
            for (x4 x4Var : a4Var.c()) {
                e(fVar, x4Var);
            }
        } catch (Throwable th) {
            this.f22996b.getLogger().a(j5.ERROR, th, "Unable to record lost envelope.", new Object[0]);
        }
    }

    @Override // io.sentry.clientreport.h
    public void c(f fVar, io.sentry.i iVar, long j10) {
        try {
            g(fVar.getReason(), iVar.getCategory(), Long.valueOf(j10));
        } catch (Throwable th) {
            this.f22996b.getLogger().a(j5.ERROR, th, "Unable to record lost event.", new Object[0]);
        }
    }

    @Override // io.sentry.clientreport.h
    public a4 d(a4 a4Var) {
        c h10 = h();
        if (h10 == null) {
            return a4Var;
        }
        try {
            this.f22996b.getLogger().c(j5.DEBUG, "Attaching client report to envelope.", new Object[0]);
            ArrayList arrayList = new ArrayList();
            for (x4 x4Var : a4Var.c()) {
                arrayList.add(x4Var);
            }
            arrayList.add(x4.x(this.f22996b.getSerializer(), h10));
            return new a4(a4Var.b(), arrayList);
        } catch (Throwable th) {
            this.f22996b.getLogger().a(j5.ERROR, th, "Unable to attach client report to envelope.", new Object[0]);
            return a4Var;
        }
    }

    @Override // io.sentry.clientreport.h
    public void e(f fVar, x4 x4Var) {
        y H;
        if (x4Var == null) {
            return;
        }
        try {
            i5 b10 = x4Var.G().b();
            if (i5.ClientReport.equals(b10)) {
                try {
                    i(x4Var.D(this.f22996b.getSerializer()));
                    return;
                } catch (Exception unused) {
                    this.f22996b.getLogger().c(j5.ERROR, "Unable to restore counts from previous client report.", new Object[0]);
                    return;
                }
            }
            io.sentry.i f10 = f(b10);
            if (f10.equals(io.sentry.i.Transaction) && (H = x4Var.H(this.f22996b.getSerializer())) != null) {
                g(fVar.getReason(), io.sentry.i.Span.getCategory(), Long.valueOf(H.q0().size() + 1));
            }
            g(fVar.getReason(), f10.getCategory(), 1L);
        } catch (Throwable th) {
            this.f22996b.getLogger().a(j5.ERROR, th, "Unable to record lost envelope item.", new Object[0]);
        }
    }

    c h() {
        Date c10 = io.sentry.j.c();
        List a10 = this.f22995a.a();
        if (a10.isEmpty()) {
            return null;
        }
        return new c(c10, a10);
    }
}
