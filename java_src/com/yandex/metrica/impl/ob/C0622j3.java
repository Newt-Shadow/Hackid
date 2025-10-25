package com.yandex.metrica.impl.ob;

import java.util.Arrays;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.j3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0622j3 implements InterfaceC0691lm<Thread, StackTraceElement[], E6> {
    @Override // com.yandex.metrica.impl.ob.InterfaceC0691lm
    public E6 a(Thread thread, StackTraceElement[] stackTraceElementArr) {
        String str;
        List asList;
        Thread thread2 = thread;
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        String name = thread2.getName();
        int priority = thread2.getPriority();
        long id2 = thread2.getId();
        ThreadGroup threadGroup = thread2.getThreadGroup();
        if (threadGroup != null) {
            str = threadGroup.getName();
        } else {
            str = "";
        }
        String str2 = str;
        Integer valueOf = Integer.valueOf(thread2.getState().ordinal());
        if (stackTraceElementArr2 == null) {
            asList = null;
        } else {
            asList = Arrays.asList(stackTraceElementArr2);
        }
        return new E6(name, priority, id2, str2, valueOf, asList);
    }
}
