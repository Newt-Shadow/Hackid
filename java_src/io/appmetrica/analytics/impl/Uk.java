package io.appmetrica.analytics.impl;

import android.telephony.TelephonyManager;
import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
/* loaded from: classes2.dex */
public final class Uk implements FunctionWithThrowable {
    @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
    public final Object apply(Object obj) {
        String str;
        String simOperator = ((TelephonyManager) obj).getSimOperator();
        if (!TextUtils.isEmpty(simOperator)) {
            str = simOperator.substring(0, 3);
        } else {
            str = null;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Integer.valueOf(Integer.parseInt(str));
    }
}
