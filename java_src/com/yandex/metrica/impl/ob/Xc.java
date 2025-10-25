package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class Xc implements J0 {

    /* renamed from: a  reason: collision with root package name */
    private final C0504e9 f11780a;

    /* renamed from: b  reason: collision with root package name */
    private final C0962x2 f11781b;

    /* renamed from: c  reason: collision with root package name */
    private Xb f11782c;

    /* renamed from: d  reason: collision with root package name */
    private final H2 f11783d;

    /* renamed from: e  reason: collision with root package name */
    private final dc.d f11784e;

    /* renamed from: f  reason: collision with root package name */
    private final a f11785f;

    /* renamed from: g  reason: collision with root package name */
    private final Wc f11786g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {
        a() {
        }
    }

    public Xc(Context context, Xb xb2) {
        this(xb2, H2.a(context));
    }

    public void a(Xb xb2) {
        if (A2.a(this.f11782c, xb2)) {
            return;
        }
        this.f11782c = xb2;
        if (xb2 == null || !xb2.f11778a.f11152a) {
            return;
        }
        this.f11786g.a(this.f11783d.b());
    }

    public void b() {
        Xb xb2 = this.f11782c;
        if (xb2 != null && xb2.f11779b != null && this.f11781b.b(this.f11780a.f(0L), this.f11782c.f11779b.f11693b, "last wifi scan attempt time")) {
            this.f11785f.getClass();
            CountDownLatch countDownLatch = new CountDownLatch(1);
            if (this.f11783d.a(countDownLatch, this.f11786g)) {
                this.f11780a.k(this.f11784e.currentTimeSeconds());
                try {
                    countDownLatch.await(5L, TimeUnit.SECONDS);
                } catch (Throwable unused) {
                }
            }
        }
    }

    private Xc(Xb xb2, H2 h22) {
        this(h22, F0.g().s(), new C0962x2(), new dc.c(), new a(), xb2, new Wc(null, h22.a()));
    }

    Xc(H2 h22, C0504e9 c0504e9, C0962x2 c0962x2, dc.d dVar, a aVar, Xb xb2, Wc wc2) {
        this.f11783d = h22;
        this.f11780a = c0504e9;
        this.f11781b = c0962x2;
        this.f11785f = aVar;
        this.f11782c = xb2;
        this.f11784e = dVar;
        this.f11786g = wc2;
    }

    @Override // com.yandex.metrica.impl.ob.J0
    public void a() {
        Xb xb2 = this.f11782c;
        if (xb2 == null || !xb2.f11778a.f11152a) {
            return;
        }
        this.f11786g.a(this.f11783d.b());
    }
}
