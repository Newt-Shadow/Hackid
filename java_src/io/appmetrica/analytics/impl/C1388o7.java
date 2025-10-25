package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: io.appmetrica.analytics.impl.o7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1388o7 implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final C1363n7 f20281a;

    public C1388o7() {
        this(null, 1, null);
    }

    public final byte[] a(C1413p7 c1413p7) {
        return MessageNano.toByteArray(this.f20281a.fromModel(c1413p7));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.f20281a.fromModel((C1413p7) obj));
    }

    public C1388o7(C1363n7 c1363n7) {
        this.f20281a = c1363n7;
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
    public final io.appmetrica.analytics.impl.C1413p7 toModel(byte[] r2) {
        /*
            r1 = this;
            if (r2 == 0) goto Lf
            io.appmetrica.analytics.impl.y7 r0 = new io.appmetrica.analytics.impl.y7     // Catch: io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException -> L15
            r0.<init>()     // Catch: io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException -> L15
            io.appmetrica.analytics.protobuf.nano.MessageNano r2 = io.appmetrica.analytics.protobuf.nano.MessageNano.mergeFrom(r0, r2)     // Catch: io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException -> L15
            io.appmetrica.analytics.impl.y7 r2 = (io.appmetrica.analytics.impl.C1637y7) r2     // Catch: io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException -> L15
            if (r2 != 0) goto L1a
        Lf:
            io.appmetrica.analytics.impl.y7 r2 = new io.appmetrica.analytics.impl.y7     // Catch: io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException -> L15
            r2.<init>()     // Catch: io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException -> L15
            goto L1a
        L15:
            io.appmetrica.analytics.impl.y7 r2 = new io.appmetrica.analytics.impl.y7
            r2.<init>()
        L1a:
            io.appmetrica.analytics.impl.n7 r0 = r1.f20281a
            io.appmetrica.analytics.impl.p7 r2 = r0.toModel(r2)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1388o7.toModel(byte[]):io.appmetrica.analytics.impl.p7");
    }

    public /* synthetic */ C1388o7(C1363n7 c1363n7, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new C1363n7(null, null, 3, null) : c1363n7);
    }
}
