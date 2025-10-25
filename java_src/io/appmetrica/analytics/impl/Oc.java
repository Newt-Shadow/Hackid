package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* loaded from: classes2.dex */
public final class Oc {

    /* renamed from: a  reason: collision with root package name */
    public final Hm f18698a;

    /* renamed from: b  reason: collision with root package name */
    public final Hm f18699b;

    /* renamed from: c  reason: collision with root package name */
    public final D4 f18700c;

    /* renamed from: d  reason: collision with root package name */
    public final PublicLogger f18701d;

    /* renamed from: e  reason: collision with root package name */
    public final String f18702e;

    public Oc(String str, PublicLogger publicLogger) {
        this(new D4(30), new Hm(50, str.concat("map key"), publicLogger), new Hm(4000, str.concat("map value"), publicLogger), str, publicLogger);
    }

    public Oc(D4 d42, Hm hm, Hm hm2, String str, PublicLogger publicLogger) {
        this.f18700c = d42;
        this.f18698a = hm;
        this.f18699b = hm2;
        this.f18702e = str;
        this.f18701d = publicLogger;
    }
}
