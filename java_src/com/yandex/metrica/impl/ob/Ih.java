package com.yandex.metrica.impl.ob;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class Ih {

    /* renamed from: a  reason: collision with root package name */
    private long f10422a;

    /* renamed from: b  reason: collision with root package name */
    private long f10423b;

    /* renamed from: c  reason: collision with root package name */
    private final dc.d f10424c;

    /* renamed from: d  reason: collision with root package name */
    private final C0567gm f10425d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ih() {
        this(new dc.c(), new C0567gm());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized double a() {
        return this.f10425d.b(this.f10423b, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized double b() {
        return this.f10425d.b(this.f10422a, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void c() {
        this.f10423b = this.f10424c.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void d() {
        this.f10422a = this.f10424c.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void e() {
        this.f10423b = 0L;
    }

    Ih(dc.d dVar, C0567gm c0567gm) {
        this.f10424c = dVar;
        this.f10425d = c0567gm;
    }
}
