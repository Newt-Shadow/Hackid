package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* loaded from: classes2.dex */
public class P {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: j  reason: collision with root package name */
    private static volatile P f11009j;

    /* renamed from: a  reason: collision with root package name */
    private final Xl f11010a;

    /* renamed from: b  reason: collision with root package name */
    private final C0669l0 f11011b;

    /* renamed from: c  reason: collision with root package name */
    private final Im f11012c;

    /* renamed from: d  reason: collision with root package name */
    private final C1009z1 f11013d;

    /* renamed from: e  reason: collision with root package name */
    private final C0792q f11014e;

    /* renamed from: f  reason: collision with root package name */
    private final C0746o2 f11015f;

    /* renamed from: g  reason: collision with root package name */
    private final C0395a0 f11016g;

    /* renamed from: h  reason: collision with root package name */
    private final C0768p f11017h;

    /* renamed from: i  reason: collision with root package name */
    private final C1024zg f11018i;

    private P() {
        this(new Xl(), new C0792q(), new Im());
    }

    public static P g() {
        if (f11009j == null) {
            synchronized (P.class) {
                if (f11009j == null) {
                    f11009j = new P(new Xl(), new C0792q(), new Im());
                }
            }
        }
        return f11009j;
    }

    public C0768p a() {
        return this.f11017h;
    }

    public C0792q b() {
        return this.f11014e;
    }

    public ICommonExecutor c() {
        return this.f11012c.a();
    }

    public Im d() {
        return this.f11012c;
    }

    public C0395a0 e() {
        return this.f11016g;
    }

    public C0669l0 f() {
        return this.f11011b;
    }

    public Xl h() {
        return this.f11010a;
    }

    public C1009z1 i() {
        return this.f11013d;
    }

    public InterfaceC0442bm j() {
        return this.f11010a;
    }

    public C1024zg k() {
        return this.f11018i;
    }

    public C0746o2 l() {
        return this.f11015f;
    }

    private P(Xl xl, C0792q c0792q, Im im) {
        this(xl, c0792q, im, new C0768p(c0792q, im.a()));
    }

    private P(Xl xl, C0792q c0792q, Im im, C0768p c0768p) {
        this(xl, new C0669l0(), im, c0768p, new C1009z1(xl), c0792q, new C0746o2(c0792q, im.a(), c0768p), new C0395a0(c0792q), new C1024zg());
    }

    P(Xl xl, C0669l0 c0669l0, Im im, C0768p c0768p, C1009z1 c1009z1, C0792q c0792q, C0746o2 c0746o2, C0395a0 c0395a0, C1024zg c1024zg) {
        this.f11010a = xl;
        this.f11011b = c0669l0;
        this.f11012c = im;
        this.f11017h = c0768p;
        this.f11013d = c1009z1;
        this.f11014e = c0792q;
        this.f11015f = c0746o2;
        this.f11016g = c0395a0;
        this.f11018i = c1024zg;
    }
}
