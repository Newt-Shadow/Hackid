package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import com.yandex.metrica.AppMetricaDeviceIDListener;
import com.yandex.metrica.DeferredDeeplinkListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.YandexMetricaConfig;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* loaded from: classes2.dex */
public class R2 implements O0 {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: f  reason: collision with root package name */
    private static volatile R2 f11170f = null;

    /* renamed from: g  reason: collision with root package name */
    private static volatile boolean f11171g = false;

    /* renamed from: a  reason: collision with root package name */
    private final Context f11172a;

    /* renamed from: b  reason: collision with root package name */
    private final Q2 f11173b;

    /* renamed from: c  reason: collision with root package name */
    private final FutureTask<T0> f11174c;

    /* renamed from: d  reason: collision with root package name */
    private final S0 f11175d;

    /* renamed from: e  reason: collision with root package name */
    private final Im f11176e;

    /* loaded from: classes2.dex */
    class a implements Callable<T0> {
        a() {
        }

        @Override // java.util.concurrent.Callable
        public T0 call() {
            return R2.a(R2.this);
        }
    }

    private R2(Context context, Q2 q22, Im im) {
        this(context, q22, q22.a(context, im), im);
    }

    public static R2 a(Context context) {
        if (f11170f == null) {
            synchronized (R2.class) {
                if (f11170f == null) {
                    f11170f = new R2(context.getApplicationContext(), new Q2(), P.g().d());
                    R2 r22 = f11170f;
                    r22.f11176e.b().execute(new S2(r22));
                }
            }
        }
        return f11170f;
    }

    private static InterfaceC0720n1 f() {
        if (i()) {
            return f11170f.g();
        }
        return P.g().f();
    }

    private T0 g() {
        try {
            return this.f11174c.get();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static synchronized boolean h() {
        boolean z10;
        synchronized (R2.class) {
            z10 = f11171g;
        }
        return z10;
    }

    public static synchronized boolean i() {
        boolean z10;
        synchronized (R2.class) {
            if (f11170f != null && f11170f.f11174c.isDone()) {
                if (f11170f.g().d() != null) {
                    z10 = true;
                }
            }
            z10 = false;
        }
        return z10;
    }

    public static synchronized void j() {
        synchronized (R2.class) {
            f11171g = true;
        }
    }

    public static R2 k() {
        return f11170f;
    }

    public C0645k1 d() {
        return g().d();
    }

    public Eb e() {
        return this.f11175d.d();
    }

    public static void b(boolean z10) {
        f().a(z10);
    }

    public static void c(boolean z10) {
        f().setStatisticsSending(z10);
    }

    R2(Context context, Q2 q22, S0 s02, Im im) {
        this.f11172a = context;
        this.f11173b = q22;
        this.f11175d = s02;
        this.f11176e = im;
        FutureTask<T0> futureTask = new FutureTask<>(new a());
        this.f11174c = futureTask;
        im.b().execute(futureTask);
    }

    public void b(com.yandex.metrica.j jVar) {
        this.f11175d.a(jVar, this);
    }

    public void c(com.yandex.metrica.f fVar) {
        g().c(fVar);
    }

    public void b(YandexMetricaConfig yandexMetricaConfig, com.yandex.metrica.j jVar) {
        g().a(yandexMetricaConfig, jVar);
    }

    public String c() {
        return g().c();
    }

    public void b(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
        g().a(appMetricaDeviceIDListener);
    }

    @Override // com.yandex.metrica.impl.ob.O0
    public N0 b() {
        return g().b();
    }

    public static void a(Location location) {
        f().a(location);
    }

    public static void a(boolean z10) {
        f().b(z10);
    }

    public static void a(String str, String str2) {
        f().c(str, str2);
    }

    public static void a(String str) {
        f().setUserProfileID(str);
    }

    public void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        g().a(deferredDeeplinkParametersListener);
    }

    public void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        g().a(deferredDeeplinkListener);
    }

    public M0 a(com.yandex.metrica.f fVar) {
        return g().a(fVar);
    }

    public String a() {
        return g().a();
    }

    public void a(IIdentifierCallback iIdentifierCallback, List<String> list) {
        g().a(iIdentifierCallback, list);
    }

    public void a(Map<String, Object> map) {
        this.f11175d.a(map);
    }

    static T0 a(R2 r22) {
        return r22.f11173b.a(r22.f11172a, r22.f11175d);
    }
}
