package io.appmetrica.analytics.impl;

import android.location.LocationManager;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
/* renamed from: io.appmetrica.analytics.impl.y2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1632y2 implements FunctionWithThrowable {
    @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
    public final Object apply(Object obj) {
        return ((LocationManager) obj).getProviders(true);
    }
}
