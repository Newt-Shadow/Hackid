package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.NetworkTask;
/* loaded from: classes2.dex */
public final class Qn implements NetworkTask.ShouldTryNextHostCondition {
    @Override // io.appmetrica.analytics.networktasks.internal.NetworkTask.ShouldTryNextHostCondition
    public final boolean shouldTryNextHost(int i10) {
        return !(i10 == 400);
    }
}
