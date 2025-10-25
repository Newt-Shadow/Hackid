package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class J implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final V f21375a;

    public J() {
        this(null, 1, null);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final O fromModel(G g10) {
        O o10 = new O();
        o10.f21390a = g10.f21370a;
        T t10 = g10.f21371b;
        o10.f21391b = t10 != null ? this.f21375a.fromModel(t10) : null;
        return o10;
    }

    public J(V v10) {
        this.f21375a = v10;
    }

    public /* synthetic */ J(V v10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new V(null, null, null, 7, null) : v10);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final G toModel(O o10) {
        return new G(o10.f21390a, this.f21375a.toModel(o10.f21391b));
    }
}
