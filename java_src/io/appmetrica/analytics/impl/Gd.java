package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* loaded from: classes2.dex */
public abstract class Gd implements Kn, InterfaceC1283k2 {

    /* renamed from: a  reason: collision with root package name */
    public final String f18265a;

    /* renamed from: b  reason: collision with root package name */
    public final int f18266b;

    /* renamed from: c  reason: collision with root package name */
    public final Yn f18267c;

    /* renamed from: d  reason: collision with root package name */
    public final S2 f18268d;

    /* renamed from: e  reason: collision with root package name */
    public PublicLogger f18269e = PublicLogger.getAnonymousInstance();

    public Gd(int i10, String str, Yn yn, S2 s22) {
        this.f18266b = i10;
        this.f18265a = str;
        this.f18267c = yn;
        this.f18268d = s22;
    }

    public final Ln a() {
        Ln ln = new Ln();
        ln.f18564b = this.f18266b;
        ln.f18563a = this.f18265a.getBytes();
        ln.f18566d = new Nn();
        ln.f18565c = new Mn();
        return ln;
    }

    @Override // io.appmetrica.analytics.impl.Kn
    public abstract /* synthetic */ void a(Jn jn);

    public final S2 b() {
        return this.f18268d;
    }

    public final String c() {
        return this.f18265a;
    }

    public final Yn d() {
        return this.f18267c;
    }

    public final int e() {
        return this.f18266b;
    }

    public final boolean f() {
        Wn a10 = this.f18267c.a(this.f18265a);
        if (a10.f19201a) {
            return true;
        }
        PublicLogger publicLogger = this.f18269e;
        publicLogger.warning("Attribute " + this.f18265a + " of type " + ((String) AbstractC1553un.f20754a.get(this.f18266b)) + " is skipped because " + a10.f19202b, new Object[0]);
        return false;
    }

    public final void a(PublicLogger publicLogger) {
        this.f18269e = publicLogger;
    }
}
