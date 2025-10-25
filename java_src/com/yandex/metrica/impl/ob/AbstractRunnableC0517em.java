package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.em  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractRunnableC0517em implements Runnable {
    public abstract void a();

    @Override // java.lang.Runnable
    public void run() {
        try {
            a();
        } catch (Throwable unused) {
        }
    }
}
