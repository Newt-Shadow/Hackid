package io.appmetrica.analytics.impl;

import android.os.UserManager;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
/* loaded from: classes2.dex */
public final class Dn implements FunctionWithThrowable {
    @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
    public final Object apply(Object obj) {
        return Boolean.valueOf(((UserManager) obj).isUserUnlocked());
    }
}
