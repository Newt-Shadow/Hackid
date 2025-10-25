package com.yandex.metrica.impl.ob;

import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.fm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0542fm implements Q0 {

    /* renamed from: a  reason: collision with root package name */
    private volatile long f12430a;

    /* renamed from: b  reason: collision with root package name */
    private C0504e9 f12431b;

    /* renamed from: c  reason: collision with root package name */
    private dc.d f12432c;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.fm$b */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        static C0542fm f12433a = new C0542fm();
    }

    public static C0542fm c() {
        return b.f12433a;
    }

    @Override // com.yandex.metrica.impl.ob.Q0
    public synchronized long a() {
        return this.f12430a;
    }

    public synchronized void b() {
        this.f12431b.c(false);
        this.f12431b.d();
    }

    public synchronized void d() {
        C0504e9 s10 = F0.g().s();
        dc.c cVar = new dc.c();
        this.f12431b = s10;
        this.f12430a = s10.b(0);
        this.f12432c = cVar;
    }

    public synchronized boolean e() {
        return this.f12431b.a(true);
    }

    private C0542fm() {
    }

    public synchronized void a(long j10, Long l10) {
        this.f12430a = (j10 - this.f12432c.currentTimeMillis()) / 1000;
        boolean z10 = true;
        if (this.f12431b.a(true)) {
            if (l10 != null) {
                long abs = Math.abs(j10 - this.f12432c.currentTimeMillis());
                C0504e9 c0504e9 = this.f12431b;
                if (abs <= TimeUnit.SECONDS.toMillis(l10.longValue())) {
                    z10 = false;
                }
                c0504e9.c(z10);
            } else {
                this.f12431b.c(false);
            }
        }
        this.f12431b.l(this.f12430a);
        this.f12431b.d();
    }
}
