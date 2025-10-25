package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import android.os.ResultReceiver;
/* loaded from: classes2.dex */
public class P4 extends M4 {
    public P4(F3 f32) {
        super(f32);
    }

    @Override // com.yandex.metrica.impl.ob.M4
    public boolean a(C0445c0 c0445c0, C0723n4 c0723n4) {
        ResultReceiver resultReceiver;
        Bundle l10 = c0445c0.l();
        if (l10 != null) {
            resultReceiver = (ResultReceiver) l10.getParcelable("com.yandex.metrica.impl.referrer.common.ReferrerResultReceiver");
        } else {
            resultReceiver = null;
        }
        a().a(resultReceiver);
        return false;
    }
}
