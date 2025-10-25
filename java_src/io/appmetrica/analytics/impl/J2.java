package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ExternalAttribution;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* loaded from: classes2.dex */
public class J2 implements ExternalAttribution {

    /* renamed from: a  reason: collision with root package name */
    public final M9 f18421a;

    public J2(M9 m92) {
        this.f18421a = m92;
    }

    @Override // io.appmetrica.analytics.ExternalAttribution
    public final byte[] toBytes() {
        return MessageNano.toByteArray(this.f18421a);
    }

    public final String toString() {
        return "ExternalAttribution(type=`" + W9.a(this.f18421a.f18587a) + "`value=`" + new String(this.f18421a.f18588b, rd.d.f29089b) + "`)";
    }
}
