package io.appmetrica.analytics.coreapi.internal.servicecomponents;

import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
/* loaded from: classes2.dex */
public interface FirstExecutionConditionService {
    FirstExecutionDelayedTask createDelayedTask(String str, ICommonExecutor iCommonExecutor, Runnable runnable);
}
