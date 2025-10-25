package io.appmetrica.analytics.impl;

import android.content.Context;
/* loaded from: classes2.dex */
public final class Em extends Bi {
    public Em(Context context, String str) {
        super(context, str, "array");
    }

    @Override // io.appmetrica.analytics.impl.Bi
    public final Object a(int i10) {
        return this.f18017a.getResources().getStringArray(i10);
    }

    public final String[] b(int i10) {
        return this.f18017a.getResources().getStringArray(i10);
    }
}
