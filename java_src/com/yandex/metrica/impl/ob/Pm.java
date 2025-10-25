package com.yandex.metrica.impl.ob;

import android.os.Handler;
import android.os.Looper;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.core.api.executors.IHandlerExecutor;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public class Pm {

    /* renamed from: a  reason: collision with root package name */
    private final Om f11123a;

    /* renamed from: b  reason: collision with root package name */
    private volatile ICommonExecutor f11124b;

    /* renamed from: c  reason: collision with root package name */
    private volatile ICommonExecutor f11125c;

    /* renamed from: d  reason: collision with root package name */
    private volatile ICommonExecutor f11126d;

    /* renamed from: e  reason: collision with root package name */
    private volatile IHandlerExecutor f11127e;

    /* renamed from: f  reason: collision with root package name */
    private volatile ICommonExecutor f11128f;

    /* renamed from: g  reason: collision with root package name */
    private volatile ICommonExecutor f11129g;

    /* renamed from: h  reason: collision with root package name */
    private volatile ICommonExecutor f11130h;

    /* renamed from: i  reason: collision with root package name */
    private volatile ICommonExecutor f11131i;

    /* renamed from: j  reason: collision with root package name */
    private volatile Executor f11132j;

    public Pm() {
        this(new Om());
    }

    public ICommonExecutor a() {
        if (this.f11130h == null) {
            synchronized (this) {
                if (this.f11130h == null) {
                    this.f11123a.getClass();
                    this.f11130h = new Jm("YMM-DE");
                }
            }
        }
        return this.f11130h;
    }

    public IHandlerExecutor b() {
        if (this.f11127e == null) {
            synchronized (this) {
                if (this.f11127e == null) {
                    this.f11123a.getClass();
                    this.f11127e = new Jm("YMM-UH-1");
                }
            }
        }
        return this.f11127e;
    }

    public ICommonExecutor c() {
        if (this.f11124b == null) {
            synchronized (this) {
                if (this.f11124b == null) {
                    this.f11123a.getClass();
                    this.f11124b = new Jm("YMM-MC");
                }
            }
        }
        return this.f11124b;
    }

    public ICommonExecutor d() {
        if (this.f11128f == null) {
            synchronized (this) {
                if (this.f11128f == null) {
                    this.f11123a.getClass();
                    this.f11128f = new Jm("YMM-CTH");
                }
            }
        }
        return this.f11128f;
    }

    public ICommonExecutor e() {
        if (this.f11125c == null) {
            synchronized (this) {
                if (this.f11125c == null) {
                    this.f11123a.getClass();
                    this.f11125c = new Jm("YMM-MSTE");
                }
            }
        }
        return this.f11125c;
    }

    public ICommonExecutor f() {
        if (this.f11131i == null) {
            synchronized (this) {
                if (this.f11131i == null) {
                    this.f11123a.getClass();
                    this.f11131i = new Jm("YMM-RTM");
                }
            }
        }
        return this.f11131i;
    }

    public ICommonExecutor g() {
        if (this.f11129g == null) {
            synchronized (this) {
                if (this.f11129g == null) {
                    this.f11123a.getClass();
                    this.f11129g = new Jm("YMM-SIO");
                }
            }
        }
        return this.f11129g;
    }

    public ICommonExecutor h() {
        if (this.f11126d == null) {
            synchronized (this) {
                if (this.f11126d == null) {
                    this.f11123a.getClass();
                    this.f11126d = new Jm("YMM-TP");
                }
            }
        }
        return this.f11126d;
    }

    public Executor i() {
        if (this.f11132j == null) {
            synchronized (this) {
                if (this.f11132j == null) {
                    Om om = this.f11123a;
                    om.getClass();
                    this.f11132j = new Nm(om, new Handler(Looper.getMainLooper()));
                }
            }
        }
        return this.f11132j;
    }

    Pm(Om om) {
        this.f11123a = om;
    }

    public Lm a(Runnable runnable) {
        this.f11123a.getClass();
        return Mm.a("YMM-HMSR", runnable);
    }

    public Lm b(Runnable runnable) {
        this.f11123a.getClass();
        return Mm.a("YMM-IB", runnable);
    }
}
