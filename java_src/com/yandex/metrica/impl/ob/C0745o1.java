package com.yandex.metrica.impl.ob;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.yandex.metrica.IMetricaService;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.o1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0745o1 {

    /* renamed from: j  reason: collision with root package name */
    public static final long f13035j = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: a  reason: collision with root package name */
    private final Context f13036a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f13037b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f13038c;

    /* renamed from: d  reason: collision with root package name */
    private final List<c> f13039d;

    /* renamed from: e  reason: collision with root package name */
    private IMetricaService f13040e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f13041f;

    /* renamed from: g  reason: collision with root package name */
    private final C1009z1 f13042g;

    /* renamed from: h  reason: collision with root package name */
    private final Runnable f13043h;

    /* renamed from: i  reason: collision with root package name */
    private final ServiceConnection f13044i;

    /* renamed from: com.yandex.metrica.impl.ob.o1$a */
    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0745o1.a(C0745o1.this);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.o1$b */
    /* loaded from: classes2.dex */
    class b implements ServiceConnection {
        b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (C0745o1.this) {
                C0745o1.this.f13040e = IMetricaService.a.a(iBinder);
            }
            C0745o1.b(C0745o1.this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (C0745o1.this) {
                C0745o1.this.f13040e = null;
            }
            C0745o1.c(C0745o1.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.o1$c */
    /* loaded from: classes2.dex */
    public interface c {
        void onServiceConnected();

        void onServiceDisconnected();
    }

    public C0745o1(Context context, ICommonExecutor iCommonExecutor) {
        this(context, iCommonExecutor, P.g().i());
    }

    static void c(C0745o1 c0745o1) {
        for (c cVar : c0745o1.f13039d) {
            cVar.onServiceDisconnected();
        }
    }

    public void b() {
        synchronized (this) {
            if (this.f13040e != null) {
                return;
            }
            Intent a10 = C0721n2.a(this.f13036a);
            try {
                this.f13042g.a(this.f13036a);
                this.f13036a.bindService(a10, this.f13044i, 1);
            } catch (Throwable unused) {
            }
        }
    }

    public synchronized IMetricaService d() {
        return this.f13040e;
    }

    public synchronized boolean e() {
        boolean z10;
        if (this.f13040e != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        synchronized (this.f13041f) {
            this.f13037b.remove(this.f13043h);
        }
    }

    public void g() {
        ICommonExecutor iCommonExecutor = this.f13037b;
        synchronized (this.f13041f) {
            iCommonExecutor.remove(this.f13043h);
            if (!this.f13038c) {
                iCommonExecutor.executeDelayed(this.f13043h, f13035j);
            }
        }
    }

    static void a(C0745o1 c0745o1) {
        synchronized (c0745o1) {
            if (c0745o1.f13036a != null && c0745o1.e()) {
                try {
                    c0745o1.f13040e = null;
                    c0745o1.f13036a.unbindService(c0745o1.f13044i);
                } catch (Throwable unused) {
                }
            }
            c0745o1.f13040e = null;
            for (c cVar : c0745o1.f13039d) {
                cVar.onServiceDisconnected();
            }
        }
    }

    C0745o1(Context context, ICommonExecutor iCommonExecutor, C1009z1 c1009z1) {
        this.f13039d = new CopyOnWriteArrayList();
        this.f13040e = null;
        this.f13041f = new Object();
        this.f13043h = new a();
        this.f13044i = new b();
        this.f13036a = context.getApplicationContext();
        this.f13037b = iCommonExecutor;
        this.f13038c = false;
        this.f13042g = c1009z1;
    }

    public void c() {
        synchronized (this.f13041f) {
            this.f13038c = true;
            f();
        }
    }

    public void a(c cVar) {
        this.f13039d.add(cVar);
    }

    static void b(C0745o1 c0745o1) {
        for (c cVar : c0745o1.f13039d) {
            cVar.onServiceConnected();
        }
    }

    public void a() {
        synchronized (this.f13041f) {
            this.f13038c = false;
            g();
        }
    }
}
