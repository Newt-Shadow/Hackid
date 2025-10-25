package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* loaded from: classes2.dex */
public final class Ni {

    /* renamed from: a  reason: collision with root package name */
    public final Revenue f18646a;

    /* renamed from: b  reason: collision with root package name */
    public final Fm f18647b;

    /* renamed from: c  reason: collision with root package name */
    public final Nm f18648c;

    /* renamed from: d  reason: collision with root package name */
    public final Nm f18649d;

    /* renamed from: e  reason: collision with root package name */
    public final PublicLogger f18650e;

    public Ni(Revenue revenue, PublicLogger publicLogger) {
        this.f18650e = publicLogger;
        this.f18646a = revenue;
        this.f18647b = new Fm(30720, "revenue payload", publicLogger);
        this.f18648c = new Nm(new Fm(184320, "receipt data", publicLogger), "<truncated data was not sent, exceeded the limit of 180kb>");
        this.f18649d = new Nm(new Hm(1000, "receipt signature", publicLogger), "<truncated data was not sent, exceeded the limit of 180kb>");
    }
}
