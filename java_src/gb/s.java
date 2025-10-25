package gb;

import android.content.Context;
import android.content.pm.PackageInfo;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.ProcessLifecycleOwner;
import eb.h;
import java.util.LinkedHashMap;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class s implements DefaultLifecycleObserver, eb.g {

    /* renamed from: k  reason: collision with root package name */
    private static final a f16367k = new a(null);

    /* renamed from: l  reason: collision with root package name */
    private static volatile boolean f16368l;

    /* renamed from: m  reason: collision with root package name */
    private static volatile boolean f16369m;

    /* renamed from: a  reason: collision with root package name */
    private final Context f16370a;

    /* renamed from: b  reason: collision with root package name */
    private final fb.b f16371b;

    /* renamed from: c  reason: collision with root package name */
    private final gb.b f16372c;

    /* renamed from: d  reason: collision with root package name */
    private final androidx.lifecycle.i f16373d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f16374e;

    /* renamed from: f  reason: collision with root package name */
    private Timer f16375f;

    /* renamed from: g  reason: collision with root package name */
    private TimerTask f16376g;

    /* renamed from: h  reason: collision with root package name */
    private final AtomicLong f16377h;

    /* renamed from: i  reason: collision with root package name */
    private final long f16378i;

    /* renamed from: j  reason: collision with root package name */
    private eb.h f16379j;

    /* loaded from: classes.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            eb.h hVar = s.this.f16379j;
            if (hVar != null) {
                hVar.e();
            }
        }
    }

    public s(Context context, fb.b config, gb.b mainHandler, androidx.lifecycle.i lifecycle) {
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(config, "config");
        kotlin.jvm.internal.m.e(mainHandler, "mainHandler");
        kotlin.jvm.internal.m.e(lifecycle, "lifecycle");
        this.f16370a = context;
        this.f16371b = config;
        this.f16372c = mainHandler;
        this.f16373d = lifecycle;
        this.f16374e = new Object();
        this.f16375f = new Timer(true);
        this.f16377h = new AtomicLong(0L);
        this.f16378i = 1800000L;
    }

    private final void g() {
        this.f16373d.a(this);
    }

    private final void h() {
        synchronized (this.f16374e) {
            TimerTask timerTask = this.f16376g;
            if (timerTask != null) {
                timerTask.cancel();
            }
            this.f16376g = null;
            xc.t tVar = xc.t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(s this$0) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        this$0.g();
    }

    private final void j() {
        this.f16373d.c(this);
    }

    private final void k() {
        synchronized (this.f16374e) {
            h();
            b bVar = new b();
            this.f16376g = bVar;
            this.f16375f.schedule(bVar, this.f16378i);
            xc.t tVar = xc.t.f32733a;
        }
    }

    private final void l() {
        eb.h hVar;
        h();
        long currentTimeMillis = this.f16371b.f().currentTimeMillis();
        long j10 = this.f16377h.get();
        if ((j10 == 0 || j10 + this.f16378i <= currentTimeMillis) && (hVar = this.f16379j) != null) {
            hVar.f();
        }
        this.f16377h.set(currentTimeMillis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(s this$0) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        this$0.j();
    }

    @Override // eb.g
    public void b() {
        try {
            f16369m = false;
            this.f16379j = null;
            if (o.m(this.f16372c)) {
                j();
            } else {
                this.f16372c.a().post(new Runnable() { // from class: gb.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.m(s.this);
                    }
                });
            }
        } catch (Throwable th) {
            lb.i o10 = this.f16371b.o();
            o10.a("Failed to uninstall PostHogLifecycleObserverIntegration: " + th);
        }
    }

    @Override // eb.g
    public void c(eb.h postHog) {
        kotlin.jvm.internal.m.e(postHog, "postHog");
        if (f16369m) {
            return;
        }
        f16369m = true;
        try {
            this.f16379j = postHog;
            if (o.m(this.f16372c)) {
                g();
            } else {
                this.f16372c.a().post(new Runnable() { // from class: gb.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.i(s.this);
                    }
                });
            }
        } catch (Throwable th) {
            lb.i o10 = this.f16371b.o();
            o10.a("Failed to install PostHogLifecycleObserverIntegration: " + th);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(androidx.lifecycle.m owner) {
        kotlin.jvm.internal.m.e(owner, "owner");
        l();
        if (this.f16371b.g0()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("from_background", Boolean.valueOf(f16368l));
            if (!f16368l) {
                PackageInfo i10 = o.i(this.f16370a, this.f16371b);
                if (i10 != null) {
                    String str = i10.versionName;
                    kotlin.jvm.internal.m.d(str, "packageInfo.versionName");
                    linkedHashMap.put("version", str);
                    linkedHashMap.put("build", Long.valueOf(o.r(i10)));
                }
                f16368l = true;
            }
            eb.h hVar = this.f16379j;
            if (hVar != null) {
                h.a.a(hVar, "Application Opened", null, linkedHashMap, null, null, null, 58, null);
            }
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(androidx.lifecycle.m owner) {
        eb.h hVar;
        kotlin.jvm.internal.m.e(owner, "owner");
        if (this.f16371b.g0() && (hVar = this.f16379j) != null) {
            h.a.a(hVar, "Application Backgrounded", null, null, null, null, null, 62, null);
        }
        this.f16377h.set(this.f16371b.f().currentTimeMillis());
        k();
    }

    public /* synthetic */ s(Context context, fb.b bVar, gb.b bVar2, androidx.lifecycle.i iVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, bVar, bVar2, (i10 & 8) != 0 ? ProcessLifecycleOwner.f2918i.a().getLifecycle() : iVar);
    }
}
