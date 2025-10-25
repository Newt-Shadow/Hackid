package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
/* loaded from: classes2.dex */
public final class Pl {

    /* renamed from: a  reason: collision with root package name */
    public final ProtobufStateStorage f18792a;

    /* renamed from: b  reason: collision with root package name */
    public final co f18793b;

    public Pl(ProtobufStateStorage protobufStateStorage, co coVar) {
        this.f18792a = protobufStateStorage;
        this.f18793b = coVar;
    }

    public Pl(Context context) {
        this(Bm.a(Ul.class).a(context), C1665za.j().B().a());
    }
}
