package io.appmetrica.analytics.impl;

import android.content.Context;
import android.text.TextUtils;
import io.appmetrica.analytics.internal.IdentifiersResult;
/* loaded from: classes2.dex */
public final class Sn implements Wa {
    @Override // io.appmetrica.analytics.impl.Wa
    public final String a(Context context) {
        IdentifiersResult q10 = new Te(C1288k7.a(context.getApplicationContext()).a()).q();
        if (!TextUtils.isEmpty(q10.f21091id)) {
            return q10.f21091id;
        }
        return null;
    }
}
