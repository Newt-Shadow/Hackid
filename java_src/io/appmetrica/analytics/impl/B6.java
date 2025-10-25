package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Function;
/* loaded from: classes2.dex */
public final class B6 implements Function {
    @Override // io.appmetrica.analytics.coreapi.internal.backport.Function
    /* renamed from: a */
    public final C1105cn apply(Thread thread) {
        String str;
        String name = thread.getName();
        int priority = thread.getPriority();
        long id2 = thread.getId();
        ThreadGroup threadGroup = thread.getThreadGroup();
        if (threadGroup != null) {
            str = threadGroup.getName();
        } else {
            str = "";
        }
        return new C1105cn(name, priority, id2, str, null, null);
    }
}
