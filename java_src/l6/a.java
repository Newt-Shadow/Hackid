package l6;

import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.g;
import com.google.android.gms.common.util.o;
import e6.h;
import e6.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import n5.q;
/* loaded from: classes.dex */
public class a {

    /* renamed from: r  reason: collision with root package name */
    private static final long f25328r = TimeUnit.DAYS.toMillis(366);

    /* renamed from: s  reason: collision with root package name */
    private static volatile ScheduledExecutorService f25329s = null;

    /* renamed from: t  reason: collision with root package name */
    private static final Object f25330t = new Object();

    /* renamed from: u  reason: collision with root package name */
    private static volatile e f25331u = new c();

    /* renamed from: a  reason: collision with root package name */
    private final Object f25332a;

    /* renamed from: b  reason: collision with root package name */
    private final PowerManager.WakeLock f25333b;

    /* renamed from: c  reason: collision with root package name */
    private int f25334c;

    /* renamed from: d  reason: collision with root package name */
    private Future f25335d;

    /* renamed from: e  reason: collision with root package name */
    private long f25336e;

    /* renamed from: f  reason: collision with root package name */
    private final Set f25337f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f25338g;

    /* renamed from: h  reason: collision with root package name */
    private int f25339h;

    /* renamed from: i  reason: collision with root package name */
    e6.b f25340i;

    /* renamed from: j  reason: collision with root package name */
    private com.google.android.gms.common.util.d f25341j;

    /* renamed from: k  reason: collision with root package name */
    private WorkSource f25342k;

    /* renamed from: l  reason: collision with root package name */
    private final String f25343l;

    /* renamed from: m  reason: collision with root package name */
    private final String f25344m;

    /* renamed from: n  reason: collision with root package name */
    private final Context f25345n;

    /* renamed from: o  reason: collision with root package name */
    private final Map f25346o;

    /* renamed from: p  reason: collision with root package name */
    private AtomicInteger f25347p;

    /* renamed from: q  reason: collision with root package name */
    private final ScheduledExecutorService f25348q;

    public a(Context context, int i10, String str) {
        String str2;
        String packageName = context.getPackageName();
        this.f25332a = new Object();
        this.f25334c = 0;
        this.f25337f = new HashSet();
        this.f25338g = true;
        this.f25341j = g.b();
        this.f25346o = new HashMap();
        this.f25347p = new AtomicInteger(0);
        q.l(context, "WakeLock: context must not be null");
        q.f(str, "WakeLock: wakeLockName must not be empty");
        this.f25345n = context.getApplicationContext();
        this.f25344m = str;
        this.f25340i = null;
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                str2 = "*gcore*:".concat(valueOf);
            } else {
                str2 = new String("*gcore*:");
            }
            this.f25343l = str2;
        } else {
            this.f25343l = str;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager != null) {
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(i10, str);
            this.f25333b = newWakeLock;
            if (com.google.android.gms.common.util.q.c(context)) {
                WorkSource b10 = com.google.android.gms.common.util.q.b(context, o.a(packageName) ? context.getPackageName() : packageName);
                this.f25342k = b10;
                if (b10 != null) {
                    i(newWakeLock, b10);
                }
            }
            ScheduledExecutorService scheduledExecutorService = f25329s;
            if (scheduledExecutorService == null) {
                synchronized (f25330t) {
                    scheduledExecutorService = f25329s;
                    if (scheduledExecutorService == null) {
                        h.a();
                        scheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
                        f25329s = scheduledExecutorService;
                    }
                }
            }
            this.f25348q = scheduledExecutorService;
            return;
        }
        StringBuilder sb2 = new StringBuilder(29);
        sb2.append((CharSequence) "expected a non-null reference", 0, 29);
        throw new i(sb2.toString());
    }

    public static /* synthetic */ void e(a aVar) {
        synchronized (aVar.f25332a) {
            if (!aVar.b()) {
                return;
            }
            Log.e("WakeLock", String.valueOf(aVar.f25343l).concat(" ** IS FORCE-RELEASED ON TIMEOUT **"));
            aVar.g();
            if (!aVar.b()) {
                return;
            }
            aVar.f25334c = 1;
            aVar.h(0);
        }
    }

    private final String f(String str) {
        if (this.f25338g) {
            TextUtils.isEmpty(null);
        }
        return null;
    }

    private final void g() {
        if (this.f25337f.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f25337f);
        this.f25337f.clear();
        if (arrayList.size() <= 0) {
            return;
        }
        android.support.v4.media.session.b.a(arrayList.get(0));
        throw null;
    }

    private final void h(int i10) {
        synchronized (this.f25332a) {
            if (!b()) {
                return;
            }
            if (this.f25338g) {
                int i11 = this.f25334c - 1;
                this.f25334c = i11;
                if (i11 > 0) {
                    return;
                }
            } else {
                this.f25334c = 0;
            }
            g();
            for (d dVar : this.f25346o.values()) {
                dVar.f25350a = 0;
            }
            this.f25346o.clear();
            Future future = this.f25335d;
            if (future != null) {
                future.cancel(false);
                this.f25335d = null;
                this.f25336e = 0L;
            }
            this.f25339h = 0;
            if (this.f25333b.isHeld()) {
                try {
                    this.f25333b.release();
                    if (this.f25340i != null) {
                        this.f25340i = null;
                    }
                } catch (RuntimeException e10) {
                    if (e10.getClass().equals(RuntimeException.class)) {
                        Log.e("WakeLock", String.valueOf(this.f25343l).concat(" failed to release!"), e10);
                        if (this.f25340i != null) {
                            this.f25340i = null;
                        }
                    } else {
                        throw e10;
                    }
                }
            } else {
                Log.e("WakeLock", String.valueOf(this.f25343l).concat(" should be held!"));
            }
        }
    }

    private static void i(PowerManager.WakeLock wakeLock, WorkSource workSource) {
        try {
            wakeLock.setWorkSource(workSource);
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e10) {
            Log.wtf("WakeLock", e10.toString());
        }
    }

    public void a(long j10) {
        this.f25347p.incrementAndGet();
        long j11 = Long.MAX_VALUE;
        long max = Math.max(Math.min(Long.MAX_VALUE, f25328r), 1L);
        if (j10 > 0) {
            max = Math.min(j10, max);
        }
        synchronized (this.f25332a) {
            if (!b()) {
                this.f25340i = e6.b.a(false, null);
                this.f25333b.acquire();
                this.f25341j.elapsedRealtime();
            }
            this.f25334c++;
            this.f25339h++;
            f(null);
            d dVar = (d) this.f25346o.get(null);
            if (dVar == null) {
                dVar = new d(null);
                this.f25346o.put(null, dVar);
            }
            dVar.f25350a++;
            long elapsedRealtime = this.f25341j.elapsedRealtime();
            if (Long.MAX_VALUE - elapsedRealtime > max) {
                j11 = elapsedRealtime + max;
            }
            if (j11 > this.f25336e) {
                this.f25336e = j11;
                Future future = this.f25335d;
                if (future != null) {
                    future.cancel(false);
                }
                this.f25335d = this.f25348q.schedule(new Runnable() { // from class: l6.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.e(a.this);
                    }
                }, max, TimeUnit.MILLISECONDS);
            }
        }
    }

    public boolean b() {
        boolean z10;
        synchronized (this.f25332a) {
            if (this.f25334c > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    public void c() {
        if (this.f25347p.decrementAndGet() < 0) {
            Log.e("WakeLock", String.valueOf(this.f25343l).concat(" release without a matched acquire!"));
        }
        synchronized (this.f25332a) {
            f(null);
            if (this.f25346o.containsKey(null)) {
                d dVar = (d) this.f25346o.get(null);
                if (dVar != null) {
                    int i10 = dVar.f25350a - 1;
                    dVar.f25350a = i10;
                    if (i10 == 0) {
                        this.f25346o.remove(null);
                    }
                }
            } else {
                Log.w("WakeLock", String.valueOf(this.f25343l).concat(" counter does not exist"));
            }
            h(0);
        }
    }

    public void d(boolean z10) {
        synchronized (this.f25332a) {
            this.f25338g = z10;
        }
    }
}
