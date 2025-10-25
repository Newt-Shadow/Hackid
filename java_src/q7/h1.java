package q7;

import android.app.ApplicationExitInfo;
import android.content.Context;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.concurrent.Executor;
import m6.Task;
import t7.f0;
/* loaded from: classes.dex */
public class h1 {

    /* renamed from: a  reason: collision with root package name */
    private final f0 f28453a;

    /* renamed from: b  reason: collision with root package name */
    private final w7.e f28454b;

    /* renamed from: c  reason: collision with root package name */
    private final x7.b f28455c;

    /* renamed from: d  reason: collision with root package name */
    private final s7.f f28456d;

    /* renamed from: e  reason: collision with root package name */
    private final s7.o f28457e;

    /* renamed from: f  reason: collision with root package name */
    private final o0 f28458f;

    /* renamed from: g  reason: collision with root package name */
    private final r7.i f28459g;

    h1(f0 f0Var, w7.e eVar, x7.b bVar, s7.f fVar, s7.o oVar, o0 o0Var, r7.i iVar) {
        this.f28453a = f0Var;
        this.f28454b = eVar;
        this.f28455c = bVar;
        this.f28456d = fVar;
        this.f28457e = oVar;
        this.f28458f = o0Var;
        this.f28459g = iVar;
    }

    private f0.e.d d(f0.e.d dVar, s7.f fVar, s7.o oVar) {
        return e(dVar, fVar, oVar, Collections.emptyMap());
    }

    private f0.e.d e(f0.e.d dVar, s7.f fVar, s7.o oVar, Map map) {
        f0.e.d.b h10 = dVar.h();
        String c10 = fVar.c();
        if (c10 != null) {
            h10.d(f0.e.d.AbstractC0334d.a().b(c10).a());
        } else {
            n7.g.f().i("No log data to include with this event.");
        }
        List o10 = o(oVar.f(map));
        List o11 = o(oVar.g());
        if (!o10.isEmpty() || !o11.isEmpty()) {
            h10.b(dVar.b().i().e(o10).g(o11).a());
        }
        return h10.a();
    }

    private f0.e.d f(f0.e.d dVar, Map map) {
        return g(e(dVar, this.f28456d, this.f28457e, map), this.f28457e);
    }

    private f0.e.d g(f0.e.d dVar, s7.o oVar) {
        List h10 = oVar.h();
        if (h10.isEmpty()) {
            return dVar;
        }
        f0.e.d.b h11 = dVar.h();
        h11.e(f0.e.d.f.a().b(h10).a());
        return h11.a();
    }

    private static f0.a h(ApplicationExitInfo applicationExitInfo) {
        String applicationExitInfo2;
        int importance;
        String processName;
        int reason;
        long timestamp;
        int pid;
        long pss;
        long rss;
        InputStream traceInputStream;
        String str = null;
        try {
            traceInputStream = applicationExitInfo.getTraceInputStream();
            if (traceInputStream != null) {
                str = i(traceInputStream);
            }
        } catch (IOException e10) {
            n7.g f10 = n7.g.f();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not get input trace in application exit info: ");
            applicationExitInfo2 = applicationExitInfo.toString();
            sb2.append(applicationExitInfo2);
            sb2.append(" Error: ");
            sb2.append(e10);
            f10.k(sb2.toString());
        }
        f0.a.b a10 = f0.a.a();
        importance = applicationExitInfo.getImportance();
        f0.a.b c10 = a10.c(importance);
        processName = applicationExitInfo.getProcessName();
        f0.a.b e11 = c10.e(processName);
        reason = applicationExitInfo.getReason();
        f0.a.b g10 = e11.g(reason);
        timestamp = applicationExitInfo.getTimestamp();
        f0.a.b i10 = g10.i(timestamp);
        pid = applicationExitInfo.getPid();
        f0.a.b d10 = i10.d(pid);
        pss = applicationExitInfo.getPss();
        f0.a.b f11 = d10.f(pss);
        rss = applicationExitInfo.getRss();
        return f11.h(rss).j(str).a();
    }

    public static String i(InputStream inputStream) {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[8192];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String byteArrayOutputStream2 = byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
                    byteArrayOutputStream.close();
                    bufferedInputStream.close();
                    return byteArrayOutputStream2;
                }
            }
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static h1 j(Context context, o0 o0Var, w7.g gVar, b bVar, s7.f fVar, s7.o oVar, z7.d dVar, y7.j jVar, t0 t0Var, n nVar, r7.i iVar) {
        return new h1(new f0(context, o0Var, bVar, dVar, jVar), new w7.e(gVar, jVar, nVar), x7.b.b(context, jVar, t0Var), fVar, oVar, o0Var, iVar);
    }

    private g0 k(g0 g0Var) {
        if (g0Var.b().h() != null && g0Var.b().g() != null) {
            return g0Var;
        }
        n0 d10 = this.f28458f.d(true);
        return g0.a(g0Var.b().t(d10.b()).s(d10.a()), g0Var.d(), g0Var.c());
    }

    private ApplicationExitInfo n(String str, List list) {
        long timestamp;
        int reason;
        long q10 = this.f28454b.q(str);
        for (Object obj : list) {
            ApplicationExitInfo a10 = d1.a(obj);
            timestamp = a10.getTimestamp();
            if (timestamp >= q10) {
                reason = a10.getReason();
                if (reason == 6) {
                    return a10;
                }
            } else {
                return null;
            }
        }
        return null;
    }

    private static List o(Map map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add(f0.c.a().b((String) entry.getKey()).c((String) entry.getValue()).a());
        }
        Collections.sort(arrayList, new Comparator() { // from class: q7.g1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int q10;
                q10 = h1.q((f0.c) obj, (f0.c) obj2);
                return q10;
            }
        });
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int q(f0.c cVar, f0.c cVar2) {
        return cVar.b().compareTo(cVar2.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(f0.e.d dVar, s7.c cVar, boolean z10) {
        n7.g.f().b("disk worker: log non-fatal event to persistence");
        this.f28454b.y(dVar, cVar.b(), z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean u(Task task) {
        if (task.p()) {
            g0 g0Var = (g0) task.l();
            n7.g f10 = n7.g.f();
            f10.b("Crashlytics report successfully enqueued to DataTransport: " + g0Var.d());
            File c10 = g0Var.c();
            if (c10.delete()) {
                n7.g f11 = n7.g.f();
                f11.b("Deleted report file: " + c10.getPath());
                return true;
            }
            n7.g f12 = n7.g.f();
            f12.k("Crashlytics could not delete report file: " + c10.getPath());
            return true;
        }
        n7.g.f().l("Crashlytics report could not be enqueued to DataTransport", task.k());
        return false;
    }

    private void v(Throwable th, Thread thread, String str, final s7.c cVar, boolean z10) {
        final boolean equals = str.equals("crash");
        final f0.e.d f10 = f(this.f28453a.d(th, thread, str, cVar.c(), 4, 8, z10), cVar.a());
        if (!z10) {
            this.f28459g.f28984b.g(new Runnable() { // from class: q7.f1
                @Override // java.lang.Runnable
                public final void run() {
                    h1.this.r(f10, cVar, equals);
                }
            });
        } else {
            this.f28454b.y(f10, cVar.b(), equals);
        }
    }

    public Task A(Executor executor) {
        return B(executor, null);
    }

    public Task B(Executor executor, String str) {
        boolean z10;
        List<g0> w10 = this.f28454b.w();
        ArrayList arrayList = new ArrayList();
        for (g0 g0Var : w10) {
            if (str == null || str.equals(g0Var.d())) {
                x7.b bVar = this.f28455c;
                g0 k10 = k(g0Var);
                if (str != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                arrayList.add(bVar.c(k10, z10).g(executor, new m6.c() { // from class: q7.e1
                    @Override // m6.c
                    public final Object a(Task task) {
                        boolean u10;
                        u10 = h1.this.u(task);
                        return Boolean.valueOf(u10);
                    }
                }));
            }
        }
        return m6.n.f(arrayList);
    }

    public void l(String str, List list, f0.a aVar) {
        n7.g.f().b("SessionReportingCoordinator#finalizeSessionWithNativeEvent");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            f0.d.b b10 = ((r0) it.next()).b();
            if (b10 != null) {
                arrayList.add(b10);
            }
        }
        this.f28454b.l(str, f0.d.a().b(Collections.unmodifiableList(arrayList)).a(), aVar);
    }

    public void m(long j10, String str) {
        this.f28454b.k(str, j10);
    }

    public boolean p() {
        return this.f28454b.r();
    }

    public SortedSet s() {
        return this.f28454b.p();
    }

    public void t(String str, long j10) {
        this.f28454b.z(this.f28453a.e(str, j10));
    }

    public void w(Throwable th, Thread thread, String str, long j10) {
        n7.g f10 = n7.g.f();
        f10.i("Persisting fatal event for session " + str);
        v(th, thread, "crash", new s7.c(str, j10), true);
    }

    public void x(Throwable th, Thread thread, s7.c cVar) {
        n7.g f10 = n7.g.f();
        f10.i("Persisting non-fatal event for session " + cVar.b());
        v(th, thread, "error", cVar, false);
    }

    public void y(String str, List list, s7.f fVar, s7.o oVar) {
        ApplicationExitInfo n10 = n(str, list);
        if (n10 == null) {
            n7.g f10 = n7.g.f();
            f10.i("No relevant ApplicationExitInfo occurred during session: " + str);
            return;
        }
        f0.e.d c10 = this.f28453a.c(h(n10));
        n7.g f11 = n7.g.f();
        f11.b("Persisting anr for session " + str);
        this.f28454b.y(g(d(c10, fVar, oVar), oVar), str, true);
    }

    public void z() {
        this.f28454b.i();
    }
}
