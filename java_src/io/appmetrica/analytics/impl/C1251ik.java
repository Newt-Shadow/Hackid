package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
/* renamed from: io.appmetrica.analytics.impl.ik  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1251ik implements Uc {
    @Override // io.appmetrica.analytics.impl.Uc
    public final void a(Context context) {
        Cm a10 = Bm.a(Ul.class);
        ProtobufStateStorage<Object> a11 = a10.a(context, a10.d(context));
        Ul ul = (Ul) a11.read();
        Tl a12 = ul.a(ul.f19083m);
        a12.f19015o = 0L;
        a11.save(new Ul(a12));
    }
}
