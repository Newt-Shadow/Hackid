package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class B7 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final C1295ke f17987a;

    public B7() {
        this(null, 1, null);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final A7 fromModel(D7 d72) {
        A7 a72 = new A7();
        Long l10 = d72.f18078a;
        if (l10 != null) {
            a72.f17938a = l10.longValue();
        }
        Long l11 = d72.f18079b;
        if (l11 != null) {
            a72.f17939b = l11.longValue();
        }
        Boolean bool = d72.f18080c;
        if (bool != null) {
            a72.f17940c = this.f17987a.fromModel(Boolean.valueOf(bool.booleanValue())).intValue();
        }
        return a72;
    }

    public B7(C1295ke c1295ke) {
        this.f17987a = c1295ke;
    }

    public /* synthetic */ B7(C1295ke c1295ke, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new C1295ke() : c1295ke);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final D7 toModel(A7 a72) {
        A7 a73 = new A7();
        Long valueOf = Long.valueOf(a72.f17938a);
        if (valueOf.longValue() == a73.f17938a) {
            valueOf = null;
        }
        Long valueOf2 = Long.valueOf(a72.f17939b);
        return new D7(valueOf, valueOf2.longValue() != a73.f17939b ? valueOf2 : null, this.f17987a.a(a72.f17940c));
    }
}
