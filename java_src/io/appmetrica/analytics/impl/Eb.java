package io.appmetrica.analytics.impl;

import java.util.Set;
/* loaded from: classes2.dex */
public final class Eb implements Ta {

    /* renamed from: a  reason: collision with root package name */
    public final Ta f18163a;

    public Eb(Ta ta2) {
        this.f18163a = ta2;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final Ta a(String str, String str2) {
        this.f18163a.a(str, str2);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final void b() {
        this.f18163a.b();
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final boolean getBoolean(String str, boolean z10) {
        return this.f18163a.getBoolean(str, z10);
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final int getInt(String str, int i10) {
        return this.f18163a.getInt(str, i10);
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final long getLong(String str, long j10) {
        return this.f18163a.getLong(str, j10);
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final String getString(String str, String str2) {
        return this.f18163a.getString(str, str2);
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final Ta remove(String str) {
        this.f18163a.remove(str);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final Ta a(String str, long j10) {
        this.f18163a.a(str, j10);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final Ta a(int i10, String str) {
        this.f18163a.a(i10, str);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final Ta a(String str, boolean z10) {
        this.f18163a.a(str, z10);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final Ta a(String str, float f10) {
        this.f18163a.a(str, f10);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final boolean a(String str) {
        return this.f18163a.a(str);
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final Set a() {
        return this.f18163a.a();
    }
}
