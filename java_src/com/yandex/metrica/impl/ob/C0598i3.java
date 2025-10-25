package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.i3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0598i3 implements InterfaceC0741nm<Thread, E6> {
    @Override // com.yandex.metrica.impl.ob.InterfaceC0741nm
    public E6 a(Thread thread) {
        String name = thread.getName();
        int priority = thread.getPriority();
        long id2 = thread.getId();
        ThreadGroup threadGroup = thread.getThreadGroup();
        return new E6(name, priority, id2, threadGroup != null ? threadGroup.getName() : "", null, null);
    }
}
