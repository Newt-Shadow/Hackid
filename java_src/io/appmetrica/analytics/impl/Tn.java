package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
/* loaded from: classes2.dex */
public final class Tn implements Wa {
    @Override // io.appmetrica.analytics.impl.Wa
    public final String a(Context context) {
        ProtobufStateStorage<Object> a10;
        Ul ul;
        try {
            Cm a11 = Bm.a(Ul.class);
            if (a11 != null && (a10 = a11.a(context, a11.c(context))) != null && (ul = (Ul) a10.read()) != null) {
                return ul.f19071a;
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
