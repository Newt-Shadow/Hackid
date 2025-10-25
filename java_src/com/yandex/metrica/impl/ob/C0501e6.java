package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.Tl;
/* renamed from: com.yandex.metrica.impl.ob.e6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0501e6 implements InterfaceC0476d6 {

    /* renamed from: a  reason: collision with root package name */
    private final String f12279a;

    /* renamed from: b  reason: collision with root package name */
    protected final C0454c9 f12280b;

    /* renamed from: c  reason: collision with root package name */
    private Tl.a f12281c;

    public C0501e6(C0454c9 c0454c9, String str) {
        this.f12280b = c0454c9;
        this.f12279a = str;
        Tl.a aVar = new Tl.a();
        try {
            String g10 = c0454c9.g(str);
            if (!TextUtils.isEmpty(g10)) {
                aVar = new Tl.a(g10);
            }
        } catch (Throwable unused) {
        }
        this.f12281c = aVar;
    }

    public C0501e6 a(long j10) {
        a(io.appmetrica.analytics.impl.Hk.f18321h, Long.valueOf(j10));
        return this;
    }

    public C0501e6 b(long j10) {
        a(io.appmetrica.analytics.impl.Hk.f18318e, Long.valueOf(j10));
        return this;
    }

    public Long c() {
        return this.f12281c.a(io.appmetrica.analytics.impl.Hk.f18321h);
    }

    public C0501e6 d(long j10) {
        a(io.appmetrica.analytics.impl.Hk.f18319f, Long.valueOf(j10));
        return this;
    }

    public Long e() {
        return this.f12281c.a(io.appmetrica.analytics.impl.Hk.f18320g);
    }

    public Long f() {
        return this.f12281c.a(io.appmetrica.analytics.impl.Hk.f18319f);
    }

    public Long g() {
        return this.f12281c.a(io.appmetrica.analytics.impl.Hk.f18317d);
    }

    public boolean h() {
        if (this.f12281c.length() > 0) {
            return true;
        }
        return false;
    }

    public Boolean i() {
        Tl.a aVar = this.f12281c;
        aVar.getClass();
        try {
            return Boolean.valueOf(aVar.getBoolean(io.appmetrica.analytics.impl.Hk.f18322i));
        } catch (Throwable unused) {
            return null;
        }
    }

    public C0501e6 a(boolean z10) {
        a(io.appmetrica.analytics.impl.Hk.f18322i, Boolean.valueOf(z10));
        return this;
    }

    public void b() {
        this.f12280b.c(this.f12279a, this.f12281c.toString());
        this.f12280b.d();
    }

    public C0501e6 c(long j10) {
        a(io.appmetrica.analytics.impl.Hk.f18320g, Long.valueOf(j10));
        return this;
    }

    public Long d() {
        return this.f12281c.a(io.appmetrica.analytics.impl.Hk.f18318e);
    }

    public C0501e6 e(long j10) {
        a(io.appmetrica.analytics.impl.Hk.f18317d, Long.valueOf(j10));
        return this;
    }

    private void a(String str, Object obj) {
        try {
            this.f12281c.put(str, obj);
        } catch (Throwable unused) {
        }
    }

    public void a() {
        this.f12281c = new Tl.a();
        b();
    }
}
