package com.yandex.metrica.impl.ob;

import java.util.concurrent.Callable;
/* renamed from: com.yandex.metrica.impl.ob.dm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractCallableC0492dm<T> implements Callable<T> {
    public abstract T a();

    @Override // java.util.concurrent.Callable
    public T call() {
        try {
            return a();
        } catch (Throwable unused) {
            return null;
        }
    }
}
