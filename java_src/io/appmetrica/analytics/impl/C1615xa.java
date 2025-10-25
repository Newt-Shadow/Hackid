package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.BiFunction;
import java.util.Arrays;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.xa  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1615xa implements BiFunction {
    @Override // io.appmetrica.analytics.coreapi.internal.backport.BiFunction
    /* renamed from: a */
    public final C1105cn apply(Thread thread, StackTraceElement[] stackTraceElementArr) {
        String str;
        List asList;
        String name = thread.getName();
        int priority = thread.getPriority();
        long id2 = thread.getId();
        ThreadGroup threadGroup = thread.getThreadGroup();
        if (threadGroup != null) {
            str = threadGroup.getName();
        } else {
            str = "";
        }
        String str2 = str;
        Integer valueOf = Integer.valueOf(thread.getState().ordinal());
        if (stackTraceElementArr == null) {
            asList = null;
        } else {
            asList = Arrays.asList(stackTraceElementArr);
        }
        return new C1105cn(name, priority, id2, str2, valueOf, asList);
    }
}
