package lb;

import com.posthog.PostHogEvent;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private final eb.d f25466a;

    /* renamed from: b  reason: collision with root package name */
    private final lb.c f25467b;

    /* renamed from: c  reason: collision with root package name */
    private final lb.d f25468c;

    /* renamed from: d  reason: collision with root package name */
    private final String f25469d;

    /* renamed from: e  reason: collision with root package name */
    private final ExecutorService f25470e;

    /* renamed from: f  reason: collision with root package name */
    private final yc.f f25471f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f25472g;

    /* renamed from: h  reason: collision with root package name */
    private final Object f25473h;

    /* renamed from: i  reason: collision with root package name */
    private Date f25474i;

    /* renamed from: j  reason: collision with root package name */
    private int f25475j;

    /* renamed from: k  reason: collision with root package name */
    private final int f25476k;

    /* renamed from: l  reason: collision with root package name */
    private final int f25477l;

    /* renamed from: m  reason: collision with root package name */
    private volatile Timer f25478m;

    /* renamed from: n  reason: collision with root package name */
    private volatile TimerTask f25479n;

    /* renamed from: o  reason: collision with root package name */
    private AtomicBoolean f25480o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f25481p;

    /* loaded from: classes.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f25482a;

        static {
            int[] iArr = new int[lb.d.values().length];
            try {
                iArr[lb.d.BATCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[lb.d.SNAPSHOT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f25482a = iArr;
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends com.google.gson.reflect.a<PostHogEvent> {
    }

    /* loaded from: classes.dex */
    public static final class c extends com.google.gson.reflect.a<PostHogEvent> {
    }

    /* loaded from: classes.dex */
    public static final class d extends TimerTask {
        public d() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (q.this.f25480o.get()) {
                q.this.f25466a.o().a("Queue is flushing.");
            } else {
                q.this.m();
            }
        }
    }

    public q(eb.d config, lb.c api, lb.d endpoint, String str, ExecutorService executor) {
        kotlin.jvm.internal.m.e(config, "config");
        kotlin.jvm.internal.m.e(api, "api");
        kotlin.jvm.internal.m.e(endpoint, "endpoint");
        kotlin.jvm.internal.m.e(executor, "executor");
        this.f25466a = config;
        this.f25467b = api;
        this.f25468c = endpoint;
        this.f25469d = str;
        this.f25470e = executor;
        this.f25471f = new yc.f();
        this.f25472g = new Object();
        this.f25473h = new Object();
        this.f25476k = 5;
        this.f25477l = 30;
        this.f25480o = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(q this$0, PostHogEvent event) {
        boolean z10;
        Object removeFirst;
        BufferedWriter bufferedWriter;
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(event, "$event");
        if (this$0.f25471f.size() >= this$0.f25466a.q()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            try {
                synchronized (this$0.f25472g) {
                    removeFirst = this$0.f25471f.removeFirst();
                    xc.t tVar = xc.t.f32733a;
                }
                e0.a((File) removeFirst, this$0.f25466a);
                this$0.f25466a.o().a("Queue is full, the oldest event " + ((File) removeFirst).getName() + " is dropped.");
            } catch (NoSuchElementException unused) {
            }
        }
        String str = this$0.f25469d;
        if (str != null) {
            File file = new File(str, this$0.f25466a.b());
            if (!this$0.f25481p) {
                file.mkdirs();
                this$0.f25481p = true;
            }
            UUID uuid = event.getUuid();
            if (uuid == null) {
                uuid = nb.a.f26549a.c();
            }
            File file2 = new File(file, uuid + ".event");
            synchronized (this$0.f25472g) {
                this$0.f25471f.add(file2);
            }
            try {
                this$0.f25466a.h();
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                b0 E = this$0.f25466a.E();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream, rd.d.f29089b);
                if (outputStreamWriter instanceof BufferedWriter) {
                    bufferedWriter = (BufferedWriter) outputStreamWriter;
                } else {
                    bufferedWriter = new BufferedWriter(outputStreamWriter, 8192);
                }
                E.b().A(event, new b().d(), bufferedWriter);
                bufferedWriter.flush();
                xc.t tVar2 = xc.t.f32733a;
                gd.b.a(fileOutputStream, null);
                this$0.f25466a.o().a("Queued Event " + event.getEvent() + ": " + file2.getName() + '.');
                this$0.p();
            } catch (Throwable th) {
                this$0.f25466a.o().a("Event " + event.getEvent() + ": " + file2.getName() + " failed to parse: " + th + '.');
                e0.a(file2, this$0.f25466a);
            }
        }
    }

    private final void g() {
        BufferedReader bufferedReader;
        List<File> w10 = w();
        ArrayList arrayList = new ArrayList();
        for (File file : w10) {
            try {
                this.f25466a.h();
                FileInputStream fileInputStream = new FileInputStream(file);
                b0 E = this.f25466a.E();
                InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, rd.d.f29089b);
                if (inputStreamReader instanceof BufferedReader) {
                    bufferedReader = (BufferedReader) inputStreamReader;
                } else {
                    bufferedReader = new BufferedReader(inputStreamReader, 8192);
                }
                PostHogEvent postHogEvent = (PostHogEvent) E.b().k(bufferedReader, new c().d());
                if (postHogEvent != null) {
                    arrayList.add(postHogEvent);
                } else {
                    k(this, file, null, 2, null);
                    xc.t tVar = xc.t.f32733a;
                }
                gd.b.a(fileInputStream, null);
            } catch (Throwable th) {
                j(file, th);
            }
        }
        try {
            try {
                if (!arrayList.isEmpty()) {
                    i o10 = this.f25466a.o();
                    o10.a("Flushing " + arrayList.size() + " events.");
                    int i10 = a.f25482a[this.f25468c.ordinal()];
                    if (i10 != 1) {
                        if (i10 == 2) {
                            this.f25467b.l(arrayList);
                        }
                    } else {
                        this.f25467b.d(arrayList);
                    }
                    i o11 = this.f25466a.o();
                    o11.a("Flushed " + arrayList.size() + " events successfully.");
                }
                synchronized (this.f25472g) {
                    this.f25471f.removeAll(w10);
                }
                for (File file2 : w10) {
                    e0.a(file2, this.f25466a);
                }
            } catch (IOException e10) {
                if (e0.f(e10)) {
                    this.f25466a.o().a("Flushing failed because of a network error, let's try again soon.");
                } else {
                    i o12 = this.f25466a.o();
                    o12.a("Flushing failed: " + e10);
                }
                throw e10;
            } catch (e e11) {
                r.b(e11, this.f25466a);
                throw e11;
            }
        } catch (Throwable th2) {
            if (1 != 0) {
                synchronized (this.f25472g) {
                    this.f25471f.removeAll(w10);
                    for (File file3 : w10) {
                        e0.a(file3, this.f25466a);
                    }
                }
            }
            throw th2;
        }
    }

    private final void h(boolean z10) {
        if (z10) {
            this.f25474i = this.f25466a.f().b(Math.min(this.f25475j * this.f25476k, this.f25477l));
        }
    }

    private final boolean i() {
        boolean z10;
        Date date = this.f25474i;
        if (date != null && date.after(this.f25466a.f().c())) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            return true;
        }
        this.f25466a.o().a("Queue is paused until " + this.f25474i);
        return false;
    }

    private final void j(File file, Throwable th) {
        synchronized (this.f25472g) {
            this.f25471f.remove(file);
        }
        e0.a(file, this.f25466a);
        i o10 = this.f25466a.o();
        o10.a("File: " + file.getName() + " failed to parse: " + th + '.');
    }

    static /* synthetic */ void k(q qVar, File file, Throwable th, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            th = null;
        }
        qVar.j(file, th);
    }

    private final void l() {
        boolean z10;
        if (!s()) {
            this.f25480o.set(false);
            return;
        }
        try {
            g();
            this.f25475j = 0;
            h(false);
        } catch (Throwable th) {
            try {
                this.f25466a.o().a("Flushing failed: " + th + '.');
                z10 = true;
                try {
                    this.f25475j++;
                    h(true);
                } catch (Throwable th2) {
                    th = th2;
                    h(z10);
                    this.f25480o.set(false);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                z10 = false;
            }
        }
        this.f25480o.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(q this$0) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        if (!this$0.s()) {
            this$0.f25480o.set(false);
            return;
        }
        while (true) {
            boolean z10 = true;
            try {
                if (!(!this$0.f25471f.isEmpty())) {
                    break;
                }
                this$0.g();
            } catch (Throwable th) {
                try {
                    this$0.f25466a.o().a("Flushing failed: " + th + '.');
                    try {
                        this$0.f25475j++;
                        this$0.h(true);
                    } catch (Throwable th2) {
                        th = th2;
                        this$0.h(z10);
                        this$0.f25480o.set(false);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    z10 = false;
                }
            }
        }
        this$0.f25475j = 0;
        this$0.h(false);
        this$0.f25480o.set(false);
    }

    private final void o() {
        if (!i()) {
            this.f25466a.o().a("Cannot flush the Queue.");
        } else if (this.f25480o.getAndSet(true)) {
            this.f25466a.o().a("Queue is flushing.");
        } else {
            l();
        }
    }

    private final void p() {
        if (r(this.f25466a.i())) {
            o();
        }
    }

    private final long q() {
        return this.f25466a.j() * 1000;
    }

    private final boolean r(int i10) {
        if (this.f25471f.size() >= i10) {
            return true;
        }
        if (this.f25471f.size() > 0) {
            i o10 = this.f25466a.o();
            o10.a("Cannot flush the Queue yet, below the threshold: " + i10);
            return false;
        }
        return false;
    }

    private final boolean s() {
        boolean z10;
        k r10 = this.f25466a.r();
        if (r10 != null && !r10.a()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            return true;
        }
        this.f25466a.o().a("Network isn't connected.");
        return false;
    }

    private final void v() {
        TimerTask timerTask = this.f25479n;
        if (timerTask != null) {
            timerTask.cancel();
        }
        Timer timer = this.f25478m;
        if (timer != null) {
            timer.cancel();
        }
    }

    private final List w() {
        List i02;
        synchronized (this.f25472g) {
            i02 = yc.w.i0(this.f25471f, this.f25466a.p());
            xc.t tVar = xc.t.f32733a;
        }
        return i02;
    }

    public final void e(final PostHogEvent event) {
        kotlin.jvm.internal.m.e(event, "event");
        e0.b(this.f25470e, new Runnable() { // from class: lb.p
            @Override // java.lang.Runnable
            public final void run() {
                q.f(q.this, event);
            }
        });
    }

    public final void m() {
        if (!r(1)) {
            return;
        }
        if (this.f25480o.getAndSet(true)) {
            this.f25466a.o().a("Queue is flushing.");
        } else {
            e0.b(this.f25470e, new Runnable() { // from class: lb.o
                @Override // java.lang.Runnable
                public final void run() {
                    q.n(q.this);
                }
            });
        }
    }

    public final void t() {
        synchronized (this.f25473h) {
            v();
            Timer timer = new Timer(true);
            long q10 = q();
            long q11 = q();
            d dVar = new d();
            timer.schedule(dVar, q10, q11);
            this.f25479n = dVar;
            this.f25478m = timer;
            xc.t tVar = xc.t.f32733a;
        }
    }

    public final void u() {
        synchronized (this.f25473h) {
            v();
            xc.t tVar = xc.t.f32733a;
        }
    }
}
