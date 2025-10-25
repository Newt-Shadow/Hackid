package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
/* loaded from: classes2.dex */
public final class G6 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final Cg f18263a;

    public G6() {
        this(new Cg());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1337m6 fromModel(F6 f62) {
        C1337m6 fromModel = this.f18263a.fromModel(f62.f18214a);
        fromModel.f20089g = 1;
        C1312l6 c1312l6 = new C1312l6();
        fromModel.f20090h = c1312l6;
        c1312l6.f20010a = StringUtils.correctIllFormedString(f62.f18215b);
        return fromModel;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        C1337m6 c1337m6 = (C1337m6) obj;
        throw new UnsupportedOperationException();
    }

    public G6(Cg cg) {
        this.f18263a = cg;
    }

    public final F6 a(C1337m6 c1337m6) {
        throw new UnsupportedOperationException();
    }
}
