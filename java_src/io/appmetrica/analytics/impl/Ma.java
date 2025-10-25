package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsHolder;
import io.appmetrica.analytics.coreapi.internal.identifiers.SimpleAdvertisingIdGetter;
/* loaded from: classes2.dex */
public interface Ma extends SimpleAdvertisingIdGetter, Vl {
    AdvertisingIdsHolder a();

    AdvertisingIdsHolder a(Fi fi);

    @Override // io.appmetrica.analytics.impl.Vl
    /* synthetic */ void a(Ql ql);

    void b(boolean z10);

    AdvertisingIdsHolder getIdentifiers();

    void init();
}
