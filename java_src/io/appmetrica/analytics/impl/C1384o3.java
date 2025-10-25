package io.appmetrica.analytics.impl;

import android.content.Context;
/* renamed from: io.appmetrica.analytics.impl.o3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1384o3 extends Bi {
    public C1384o3(Context context, String str) {
        super(context, str, "bool");
    }

    @Override // io.appmetrica.analytics.impl.Bi
    public final Object a(int i10) {
        return Boolean.valueOf(this.f18017a.getResources().getBoolean(i10));
    }

    public final Boolean b(int i10) {
        return Boolean.valueOf(this.f18017a.getResources().getBoolean(i10));
    }
}
