package com.yandex.metrica.impl.ob;

import android.os.HandlerThread;
import com.yandex.metrica.core.api.executors.IInterruptionSafeThread;
/* loaded from: classes2.dex */
public class Km extends HandlerThread implements IInterruptionSafeThread {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f10633a;

    public Km(String str) {
        super(str);
        this.f10633a = true;
    }

    public synchronized boolean isRunning() {
        return this.f10633a;
    }

    public synchronized void stopRunning() {
        this.f10633a = false;
        interrupt();
    }
}
