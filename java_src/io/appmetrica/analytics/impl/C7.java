package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class C7 implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final B7 f18042a;

    public C7() {
        this(null, 1, null);
    }

    public final byte[] a(D7 d72) {
        return MessageNano.toByteArray(this.f18042a.fromModel(d72));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.f18042a.fromModel((D7) obj));
    }

    public C7(B7 b72) {
        this.f18042a = b72;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000d, code lost:
        if (r2 == null) goto L2;
     */
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.appmetrica.analytics.impl.D7 toModel(byte[] r2) {
        /*
            r1 = this;
            if (r2 == 0) goto Lf
            io.appmetrica.analytics.impl.A7 r0 = new io.appmetrica.analytics.impl.A7     // Catch: io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException -> L15
            r0.<init>()     // Catch: io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException -> L15
            io.appmetrica.analytics.protobuf.nano.MessageNano r2 = io.appmetrica.analytics.protobuf.nano.MessageNano.mergeFrom(r0, r2)     // Catch: io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException -> L15
            io.appmetrica.analytics.impl.A7 r2 = (io.appmetrica.analytics.impl.A7) r2     // Catch: io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException -> L15
            if (r2 != 0) goto L1a
        Lf:
            io.appmetrica.analytics.impl.A7 r2 = new io.appmetrica.analytics.impl.A7     // Catch: io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException -> L15
            r2.<init>()     // Catch: io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException -> L15
            goto L1a
        L15:
            io.appmetrica.analytics.impl.A7 r2 = new io.appmetrica.analytics.impl.A7
            r2.<init>()
        L1a:
            io.appmetrica.analytics.impl.B7 r0 = r1.f18042a
            io.appmetrica.analytics.impl.D7 r2 = r0.toModel(r2)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C7.toModel(byte[]):io.appmetrica.analytics.impl.D7");
    }

    public /* synthetic */ C7(B7 b72, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new B7(null, 1, null) : b72);
    }
}
