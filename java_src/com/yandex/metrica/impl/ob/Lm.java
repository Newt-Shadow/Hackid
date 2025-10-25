package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.IInterruptionSafeThread;
/* loaded from: classes2.dex */
public class Lm extends Thread implements IInterruptionSafeThread {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f10767a;

    public Lm() {
        this.f10767a = true;
    }

    public synchronized boolean isRunning() {
        return this.f10767a;
    }

    public synchronized void stopRunning() {
        this.f10767a = false;
        interrupt();
    }

    public Lm(Runnable runnable, String str) {
        super(runnable, str);
        this.f10767a = true;
    }

    public Lm(String str) {
        super(str);
        this.f10767a = true;
    }
}
