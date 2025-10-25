package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class H implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final J f21372a;

    public H() {
        this(null, 1, null);
    }

    public final byte[] a(G g10) {
        return MessageNano.toByteArray(this.f21372a.fromModel(g10));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.f21372a.fromModel((G) obj));
    }

    public H(J j10) {
        this.f21372a = j10;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final G toModel(byte[] bArr) {
        O o10;
        try {
            o10 = (O) MessageNano.mergeFrom(new O(), bArr);
        } catch (Throwable unused) {
            o10 = new O();
        }
        return this.f21372a.toModel(o10);
    }

    public /* synthetic */ H(J j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new J(null, 1, null) : j10);
    }
}
