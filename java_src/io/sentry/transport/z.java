package io.sentry.transport;

import io.sentry.a4;
import io.sentry.c0;
import io.sentry.j5;
import io.sentry.s5;
import io.sentry.util.j;
import io.sentry.x4;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public final class z implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final p f23736a;

    /* renamed from: b  reason: collision with root package name */
    private final s5 f23737b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f23738c;

    /* renamed from: d  reason: collision with root package name */
    private final List f23739d;

    /* renamed from: e  reason: collision with root package name */
    private Timer f23740e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f23741f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            z.this.w();
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void e(z zVar);
    }

    public z(p pVar, s5 s5Var) {
        this.f23738c = new ConcurrentHashMap();
        this.f23739d = new CopyOnWriteArrayList();
        this.f23740e = null;
        this.f23741f = new Object();
        this.f23736a = pVar;
        this.f23737b = s5Var;
    }

    private void f(io.sentry.i iVar, Date date) {
        Date date2 = (Date) this.f23738c.get(iVar);
        if (date2 == null || date.after(date2)) {
            this.f23738c.put(iVar, date);
            w();
            synchronized (this.f23741f) {
                if (this.f23740e == null) {
                    this.f23740e = new Timer(true);
                }
                this.f23740e.schedule(new a(), date);
            }
        }
    }

    private io.sentry.i h(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1963501277:
                if (str.equals("attachment")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1639516637:
                if (str.equals("replay_video")) {
                    c10 = 1;
                    break;
                }
                break;
            case -892481627:
                if (str.equals("statsd")) {
                    c10 = 2;
                    break;
                }
                break;
            case -309425751:
                if (str.equals("profile")) {
                    c10 = 3;
                    break;
                }
                break;
            case 96891546:
                if (str.equals("event")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1536888764:
                if (str.equals("check_in")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1984987798:
                if (str.equals("session")) {
                    c10 = 6;
                    break;
                }
                break;
            case 2141246174:
                if (str.equals("transaction")) {
                    c10 = 7;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return io.sentry.i.Attachment;
            case 1:
                return io.sentry.i.Replay;
            case 2:
                return io.sentry.i.MetricBucket;
            case 3:
                return io.sentry.i.Profile;
            case 4:
                return io.sentry.i.Error;
            case 5:
                return io.sentry.i.Monitor;
            case 6:
                return io.sentry.i.Session;
            case 7:
                return io.sentry.i.Transaction;
            default:
                return io.sentry.i.Unknown;
        }
    }

    private boolean q(String str) {
        return j(h(str));
    }

    private static void v(c0 c0Var, final boolean z10) {
        io.sentry.util.j.o(c0Var, io.sentry.hints.p.class, new j.a() { // from class: io.sentry.transport.x
            @Override // io.sentry.util.j.a
            public final void accept(Object obj) {
                ((io.sentry.hints.p) obj).c(false);
            }
        });
        io.sentry.util.j.o(c0Var, io.sentry.hints.k.class, new j.a() { // from class: io.sentry.transport.y
            @Override // io.sentry.util.j.a
            public final void accept(Object obj) {
                ((io.sentry.hints.k) obj).d(z10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        for (b bVar : this.f23739d) {
            bVar.e(this);
        }
    }

    private long x(String str) {
        if (str != null) {
            try {
                return (long) (Double.parseDouble(str) * 1000.0d);
            } catch (NumberFormatException unused) {
            }
        }
        return 60000L;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void E(java.lang.String r17, java.lang.String r18, int r19) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.transport.z.E(java.lang.String, java.lang.String, int):void");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f23741f) {
            Timer timer = this.f23740e;
            if (timer != null) {
                timer.cancel();
                this.f23740e = null;
            }
        }
        this.f23739d.clear();
    }

    public void e(b bVar) {
        this.f23739d.add(bVar);
    }

    public a4 g(a4 a4Var, c0 c0Var) {
        ArrayList arrayList = null;
        for (x4 x4Var : a4Var.c()) {
            if (q(x4Var.G().b().getItemType())) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(x4Var);
                this.f23737b.getClientReportRecorder().e(io.sentry.clientreport.f.RATELIMIT_BACKOFF, x4Var);
            }
        }
        if (arrayList != null) {
            this.f23737b.getLogger().c(j5.INFO, "%d items will be dropped due rate limiting.", Integer.valueOf(arrayList.size()));
            ArrayList arrayList2 = new ArrayList();
            for (x4 x4Var2 : a4Var.c()) {
                if (!arrayList.contains(x4Var2)) {
                    arrayList2.add(x4Var2);
                }
            }
            if (arrayList2.isEmpty()) {
                this.f23737b.getLogger().c(j5.INFO, "Envelope discarded due all items rate limited.", new Object[0]);
                v(c0Var, false);
                return null;
            }
            return new a4(a4Var.b(), arrayList2);
        }
        return a4Var;
    }

    public boolean j(io.sentry.i iVar) {
        Date date;
        Date date2 = new Date(this.f23736a.a());
        Date date3 = (Date) this.f23738c.get(io.sentry.i.All);
        if (date3 != null && !date2.after(date3)) {
            return true;
        }
        if (io.sentry.i.Unknown.equals(iVar) || (date = (Date) this.f23738c.get(iVar)) == null) {
            return false;
        }
        return !date2.after(date);
    }

    public boolean k() {
        Date date = new Date(this.f23736a.a());
        for (io.sentry.i iVar : this.f23738c.keySet()) {
            Date date2 = (Date) this.f23738c.get(iVar);
            if (date2 != null && !date.after(date2)) {
                return true;
            }
        }
        return false;
    }

    public void z(b bVar) {
        this.f23739d.remove(bVar);
    }

    public z(s5 s5Var) {
        this(n.b(), s5Var);
    }
}
