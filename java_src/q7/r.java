package q7;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.util.Base64;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.SortedSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import m6.Task;
import org.apache.tika.parser.external.ExternalParsersConfigReaderMetKeys;
import q7.h0;
import t7.f0;
import t7.g0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r {

    /* renamed from: t  reason: collision with root package name */
    static final FilenameFilter f28523t = new FilenameFilter() { // from class: q7.p
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            boolean M;
            M = r.M(file, str);
            return M;
        }
    };

    /* renamed from: u  reason: collision with root package name */
    private static final Charset f28524u = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final Context f28525a;

    /* renamed from: b  reason: collision with root package name */
    private final j0 f28526b;

    /* renamed from: c  reason: collision with root package name */
    private final e0 f28527c;

    /* renamed from: d  reason: collision with root package name */
    private final s7.o f28528d;

    /* renamed from: e  reason: collision with root package name */
    private final r7.i f28529e;

    /* renamed from: f  reason: collision with root package name */
    private final o0 f28530f;

    /* renamed from: g  reason: collision with root package name */
    private final w7.g f28531g;

    /* renamed from: h  reason: collision with root package name */
    private final q7.b f28532h;

    /* renamed from: i  reason: collision with root package name */
    private final s7.f f28533i;

    /* renamed from: j  reason: collision with root package name */
    private final n7.a f28534j;

    /* renamed from: k  reason: collision with root package name */
    private final o7.a f28535k;

    /* renamed from: l  reason: collision with root package name */
    private final n f28536l;

    /* renamed from: m  reason: collision with root package name */
    private final h1 f28537m;

    /* renamed from: n  reason: collision with root package name */
    private h0 f28538n;

    /* renamed from: o  reason: collision with root package name */
    private y7.j f28539o = null;

    /* renamed from: p  reason: collision with root package name */
    final m6.l f28540p = new m6.l();

    /* renamed from: q  reason: collision with root package name */
    final m6.l f28541q = new m6.l();

    /* renamed from: r  reason: collision with root package name */
    final m6.l f28542r = new m6.l();

    /* renamed from: s  reason: collision with root package name */
    final AtomicBoolean f28543s = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    class a implements h0.a {
        a() {
        }

        @Override // q7.h0.a
        public void a(y7.j jVar, Thread thread, Throwable th) {
            r.this.I(jVar, thread, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Callable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f28545a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f28546b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Thread f28547c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ y7.j f28548d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ boolean f28549e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a implements m6.k {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f28551a;

            a(String str) {
                this.f28551a = str;
            }

            @Override // m6.k
            /* renamed from: b */
            public Task a(y7.d dVar) {
                String str = null;
                if (dVar == null) {
                    n7.g.f().k("Received null app settings, cannot send reports at crash time.");
                    return m6.n.e(null);
                }
                Task[] taskArr = new Task[2];
                taskArr[0] = r.this.P();
                h1 h1Var = r.this.f28537m;
                r7.e eVar = r.this.f28529e.f28983a;
                if (b.this.f28549e) {
                    str = this.f28551a;
                }
                taskArr[1] = h1Var.B(eVar, str);
                return m6.n.g(taskArr);
            }
        }

        b(long j10, Throwable th, Thread thread, y7.j jVar, boolean z10) {
            this.f28545a = j10;
            this.f28546b = th;
            this.f28547c = thread;
            this.f28548d = jVar;
            this.f28549e = z10;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Task call() {
            long G = r.G(this.f28545a);
            String C = r.this.C();
            if (C == null) {
                n7.g.f().d("Tried to write a fatal exception while no session was open.");
                return m6.n.e(null);
            }
            r.this.f28527c.a();
            r.this.f28537m.w(this.f28546b, this.f28547c, C, G);
            r.this.x(this.f28545a);
            r.this.u(this.f28548d);
            r.this.w(new i().c(), Boolean.valueOf(this.f28549e));
            if (!r.this.f28526b.d()) {
                return m6.n.e(null);
            }
            return this.f28548d.a().q(r.this.f28529e.f28983a, new a(C));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements m6.k {
        c() {
        }

        @Override // m6.k
        /* renamed from: b */
        public Task a(Void r12) {
            return m6.n.e(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements m6.k {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Task f28554a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a implements m6.k {
            a() {
            }

            @Override // m6.k
            /* renamed from: b */
            public Task a(y7.d dVar) {
                if (dVar != null) {
                    r.this.P();
                    r.this.f28537m.A(r.this.f28529e.f28983a);
                    r.this.f28542r.e(null);
                    return m6.n.e(null);
                }
                n7.g.f().k("Received null app settings at app startup. Cannot send cached reports");
                return m6.n.e(null);
            }
        }

        d(Task task) {
            this.f28554a = task;
        }

        @Override // m6.k
        /* renamed from: b */
        public Task a(Boolean bool) {
            if (!bool.booleanValue()) {
                n7.g.f().i("Deleting cached crash reports...");
                r.r(r.this.N());
                r.this.f28537m.z();
                r.this.f28542r.e(null);
                return m6.n.e(null);
            }
            n7.g.f().b("Sending cached crash reports...");
            r.this.f28526b.c(bool.booleanValue());
            return this.f28554a.q(r.this.f28529e.f28983a, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements Callable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f28557a;

        e(long j10) {
            this.f28557a = j10;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() {
            Bundle bundle = new Bundle();
            bundle.putInt(Constants.FATAL, 1);
            bundle.putLong(Constants.TIMESTAMP, this.f28557a);
            r.this.f28535k.a(Constants.FIREBASE_APPLICATION_EXCEPTION, bundle);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(Context context, o0 o0Var, j0 j0Var, w7.g gVar, e0 e0Var, q7.b bVar, s7.o oVar, s7.f fVar, h1 h1Var, n7.a aVar, o7.a aVar2, n nVar, r7.i iVar) {
        this.f28525a = context;
        this.f28530f = o0Var;
        this.f28526b = j0Var;
        this.f28531g = gVar;
        this.f28527c = e0Var;
        this.f28532h = bVar;
        this.f28528d = oVar;
        this.f28533i = fVar;
        this.f28534j = aVar;
        this.f28535k = aVar2;
        this.f28536l = nVar;
        this.f28537m = h1Var;
        this.f28529e = iVar;
    }

    private static boolean B() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String C() {
        SortedSet s10 = this.f28537m.s();
        if (!s10.isEmpty()) {
            return (String) s10.first();
        }
        return null;
    }

    private static long D() {
        return G(System.currentTimeMillis());
    }

    static List E(n7.h hVar, String str, w7.g gVar, byte[] bArr) {
        File q10 = gVar.q(str, "user-data");
        File q11 = gVar.q(str, "keys");
        File q12 = gVar.q(str, "rollouts-state");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new h("logs_file", "logs", bArr));
        arrayList.add(new m0("crash_meta_file", ExternalParsersConfigReaderMetKeys.METADATA_TAG, hVar.g()));
        arrayList.add(new m0("session_meta_file", "session", hVar.f()));
        arrayList.add(new m0("app_meta_file", "app", hVar.a()));
        arrayList.add(new m0("device_meta_file", "device", hVar.c()));
        arrayList.add(new m0("os_meta_file", "os", hVar.b()));
        arrayList.add(S(hVar));
        arrayList.add(new m0("user_meta_file", "user", q10));
        arrayList.add(new m0("keys_file", "keys", q11));
        arrayList.add(new m0("rollouts_file", "rollouts", q12));
        return arrayList;
    }

    private InputStream F(String str) {
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            n7.g.f().k("Couldn't get Class Loader");
            return null;
        }
        return classLoader.getResourceAsStream(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long G(long j10) {
        return j10 / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(String str) {
        w(str, Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean M(File file, String str) {
        return str.startsWith(".ae");
    }

    private Task O(long j10) {
        if (B()) {
            n7.g.f().k("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
            return m6.n.e(null);
        }
        n7.g.f().b("Logging app exception event to Firebase Analytics");
        return m6.n.c(new ScheduledThreadPoolExecutor(1), new e(j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task P() {
        ArrayList arrayList = new ArrayList();
        for (File file : N()) {
            try {
                arrayList.add(O(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException unused) {
                n7.g f10 = n7.g.f();
                f10.k("Could not parse app exception timestamp from file " + file.getName());
            }
            file.delete();
        }
        return m6.n.f(arrayList);
    }

    private static boolean R(String str, File file, f0.a aVar) {
        if (file == null || !file.exists()) {
            n7.g f10 = n7.g.f();
            f10.k("No minidump data found for session " + str);
        }
        if (aVar == null) {
            n7.g f11 = n7.g.f();
            f11.g("No Tombstones data found for session " + str);
        }
        if ((file == null || !file.exists()) && aVar == null) {
            return true;
        }
        return false;
    }

    private static r0 S(n7.h hVar) {
        File e10 = hVar.e();
        if (e10 != null && e10.exists()) {
            return new m0("minidump_file", "minidump", e10);
        }
        return new h("minidump_file", "minidump", new byte[]{0});
    }

    private static byte[] U(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
            }
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private Task b0() {
        if (this.f28526b.d()) {
            n7.g.f().b("Automatic data collection is enabled. Allowing upload.");
            this.f28540p.e(Boolean.FALSE);
            return m6.n.e(Boolean.TRUE);
        }
        n7.g.f().b("Automatic data collection is disabled.");
        n7.g.f().i("Notifying that unsent reports are available.");
        this.f28540p.e(Boolean.TRUE);
        Task r10 = this.f28526b.j().r(new c());
        n7.g.f().b("Waiting for send/deleteUnsentReports to be called.");
        return r7.b.c(r10, this.f28541q.a());
    }

    private void c0(String str) {
        List historicalProcessExitReasons;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            historicalProcessExitReasons = ((ActivityManager) this.f28525a.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
            if (historicalProcessExitReasons.size() != 0) {
                this.f28537m.y(str, historicalProcessExitReasons, new s7.f(this.f28531g, str), s7.o.k(str, this.f28531g, this.f28529e));
                return;
            }
            n7.g f10 = n7.g.f();
            f10.i("No ApplicationExitInfo available. Session: " + str);
            return;
        }
        n7.g f11 = n7.g.f();
        f11.i("ANR feature enabled, but device is API " + i10);
    }

    private static g0.a o(o0 o0Var, q7.b bVar) {
        return g0.a.b(o0Var.f(), bVar.f28393f, bVar.f28394g, o0Var.a().c(), k0.b(bVar.f28391d).f(), bVar.f28395h);
    }

    private static g0.b p(Context context) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return g0.b.c(j.k(), Build.MODEL, Runtime.getRuntime().availableProcessors(), j.b(context), statFs.getBlockCount() * statFs.getBlockSize(), j.x(), j.l(), Build.MANUFACTURER, Build.PRODUCT);
    }

    private static g0.c q() {
        return g0.c.a(Build.VERSION.RELEASE, Build.VERSION.CODENAME, j.y());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void v(boolean z10, y7.j jVar, boolean z11) {
        String str;
        r7.i.c();
        ArrayList arrayList = new ArrayList(this.f28537m.s());
        if (arrayList.size() <= z10) {
            n7.g.f().i("No open sessions to be closed.");
            return;
        }
        String str2 = (String) arrayList.get(z10 ? 1 : 0);
        if (z11 && jVar.b().f33033b.f33041b) {
            c0(str2);
        } else {
            n7.g.f().i("ANR feature disabled.");
        }
        if (z11 && this.f28534j.c(str2)) {
            z(str2);
        }
        if (z10 != 0) {
            str = (String) arrayList.get(0);
        } else {
            this.f28536l.e(null);
            str = null;
        }
        this.f28537m.m(D(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(String str, Boolean bool) {
        long D = D();
        n7.g f10 = n7.g.f();
        f10.b("Opening a new session with ID " + str);
        this.f28534j.d(str, String.format(Locale.US, "Crashlytics Android SDK/%s", d0.s()), D, t7.g0.b(o(this.f28530f, this.f28532h), q(), p(this.f28525a)));
        if (bool.booleanValue() && str != null) {
            this.f28528d.p(str);
        }
        this.f28533i.e(str);
        this.f28536l.e(str);
        this.f28537m.t(str, D);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(long j10) {
        try {
            w7.g gVar = this.f28531g;
            if (!gVar.g(".ae" + j10).createNewFile()) {
                throw new IOException("Create new file failed.");
            }
        } catch (IOException e10) {
            n7.g.f().l("Could not create app exception marker file.", e10);
        }
    }

    private void z(String str) {
        n7.g f10 = n7.g.f();
        f10.i("Finalizing native report for session " + str);
        n7.h a10 = this.f28534j.a(str);
        File e10 = a10.e();
        f0.a d10 = a10.d();
        if (R(str, e10, d10)) {
            n7.g.f().k("No native core present");
            return;
        }
        long lastModified = e10.lastModified();
        s7.f fVar = new s7.f(this.f28531g, str);
        File k10 = this.f28531g.k(str);
        if (!k10.isDirectory()) {
            n7.g.f().k("Couldn't create directory to store native session files, aborting.");
            return;
        }
        x(lastModified);
        List E = E(a10, str, this.f28531g, fVar.b());
        s0.b(k10, E);
        n7.g.f().b("CrashlyticsController#finalizePreviousNativeSession");
        this.f28537m.l(str, E, d10);
        fVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean A(y7.j jVar) {
        r7.i.c();
        if (K()) {
            n7.g.f().k("Skipping session finalization because a crash has already occurred.");
            return false;
        }
        n7.g.f().i("Finalizing previously open sessions.");
        try {
            v(true, jVar, true);
            n7.g.f().i("Closed all previously open sessions.");
            return true;
        } catch (Exception e10) {
            n7.g.f().e("Unable to finalize previously open sessions.", e10);
            return false;
        }
    }

    String H() {
        String r10 = j.r(this.f28525a);
        if (r10 != null) {
            n7.g.f().b("Read version control info from string resource");
            return Base64.encodeToString(r10.getBytes(f28524u), 0);
        }
        InputStream F = F("META-INF/version-control-info.textproto");
        if (F != null) {
            try {
                n7.g.f().b("Read version control info from file");
                String encodeToString = Base64.encodeToString(U(F), 0);
                F.close();
                return encodeToString;
            } catch (Throwable th) {
                try {
                    F.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (F != null) {
            F.close();
        }
        n7.g.f().g("No version control information found");
        return null;
    }

    void I(y7.j jVar, Thread thread, Throwable th) {
        J(jVar, thread, th, false);
    }

    synchronized void J(y7.j jVar, Thread thread, Throwable th, boolean z10) {
        n7.g f10 = n7.g.f();
        f10.b("Handling uncaught exception \"" + th + "\" from thread " + thread.getName());
        if (!z10) {
            v8.a.b();
        }
        Task h10 = this.f28529e.f28983a.h(new b(System.currentTimeMillis(), th, thread, jVar, z10));
        if (!z10) {
            try {
                k1.b(h10);
            } catch (TimeoutException unused) {
                n7.g.f().d("Cannot send reports. Timed out while fetching settings.");
            } catch (Exception e10) {
                n7.g.f().e("Error handling uncaught exception", e10);
            }
        }
    }

    boolean K() {
        h0 h0Var = this.f28538n;
        if (h0Var != null && h0Var.a()) {
            return true;
        }
        return false;
    }

    List N() {
        return this.f28531g.h(f28523t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q(Thread thread, Throwable th) {
        y7.j jVar = this.f28539o;
        if (jVar == null) {
            n7.g.f().k("settingsProvider not set");
        } else {
            J(jVar, thread, th, true);
        }
    }

    void T(final String str) {
        this.f28529e.f28983a.g(new Runnable() { // from class: q7.q
            @Override // java.lang.Runnable
            public final void run() {
                r.this.L(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void V() {
        try {
            String H = H();
            if (H != null) {
                Y("com.crashlytics.version-control-info", H);
                n7.g.f().g("Saved version control info");
            }
        } catch (IOException e10) {
            n7.g.f().l("Unable to save version control info", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task W() {
        this.f28541q.e(Boolean.TRUE);
        return this.f28542r.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void X(String str, String str2) {
        try {
            this.f28528d.n(str, str2);
        } catch (IllegalArgumentException e10) {
            Context context = this.f28525a;
            if (context != null && j.v(context)) {
                throw e10;
            }
            n7.g.f().d("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Y(String str, String str2) {
        try {
            this.f28528d.o(str, str2);
        } catch (IllegalArgumentException e10) {
            Context context = this.f28525a;
            if (context != null && j.v(context)) {
                throw e10;
            }
            n7.g.f().d("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Z(String str) {
        this.f28528d.q(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a0(Task task) {
        if (!this.f28537m.p()) {
            n7.g.f().i("No crash reports are available to be sent.");
            this.f28540p.e(Boolean.FALSE);
            return;
        }
        n7.g.f().i("Crash reports are available to be sent.");
        b0().q(this.f28529e.f28983a, new d(task));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d0(Thread thread, Throwable th, Map map) {
        long currentTimeMillis = System.currentTimeMillis();
        if (!K()) {
            long G = G(currentTimeMillis);
            String C = C();
            if (C == null) {
                n7.g.f().k("Tried to write a non-fatal exception while no session was open.");
                return;
            }
            this.f28537m.x(th, thread, new s7.c(C, G, map));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e0(long j10, String str) {
        if (!K()) {
            this.f28533i.g(j10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task n() {
        if (!this.f28543s.compareAndSet(false, true)) {
            n7.g.f().k("checkForUnsentReports should only be called once per execution.");
            return m6.n.e(Boolean.FALSE);
        }
        return this.f28540p.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task s() {
        this.f28541q.e(Boolean.FALSE);
        return this.f28542r.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean t() {
        r7.i.c();
        if (!this.f28527c.c()) {
            String C = C();
            if (C != null && this.f28534j.c(C)) {
                return true;
            }
            return false;
        }
        n7.g.f().i("Found previous crash marker.");
        this.f28527c.d();
        return true;
    }

    void u(y7.j jVar) {
        v(false, jVar, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(String str, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, y7.j jVar) {
        this.f28539o = jVar;
        T(str);
        h0 h0Var = new h0(new a(), jVar, uncaughtExceptionHandler, this.f28534j);
        this.f28538n = h0Var;
        Thread.setDefaultUncaughtExceptionHandler(h0Var);
    }
}
