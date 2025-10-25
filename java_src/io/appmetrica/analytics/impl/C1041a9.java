package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
/* renamed from: io.appmetrica.analytics.impl.a9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1041a9 {

    /* renamed from: a  reason: collision with root package name */
    public final Y8 f19377a;

    /* renamed from: b  reason: collision with root package name */
    public final Z8 f19378b;

    /* renamed from: c  reason: collision with root package name */
    public final IBinaryDataHelper f19379c;

    public C1041a9(Context context, C1212h5 c1212h5) {
        this(new Z8(), new Y8(), C1288k7.a(context).a(c1212h5));
    }

    public C1041a9(Z8 z82, Y8 y82, IBinaryDataHelper iBinaryDataHelper) {
        this.f19378b = z82;
        this.f19377a = y82;
        this.f19379c = iBinaryDataHelper;
    }
}
