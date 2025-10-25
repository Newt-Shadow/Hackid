package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.ResultReceiver;
/* renamed from: io.appmetrica.analytics.impl.yi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1648yi extends R4 {
    public C1648yi(O4 o42) {
        super(o42);
    }

    @Override // io.appmetrica.analytics.impl.R4
    public final boolean a(C1138e6 c1138e6, L4 l42) {
        ResultReceiver resultReceiver;
        Bundle bundle = c1138e6.f19583m;
        if (bundle != null) {
            resultReceiver = (ResultReceiver) bundle.getParcelable("io.appmetrica.analytics.impl.referrer.common.ReferrerResultReceiver");
        } else {
            resultReceiver = null;
        }
        this.f18876a.f18693k.a(new N4(resultReceiver));
        return false;
    }
}
