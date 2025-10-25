package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class Cb extends InterruptionSafeThread {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Db f18047a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Cb(Db db2, String str) {
        super(str);
        this.f18047a = db2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        HashMap hashMap;
        synchronized (this.f18047a.f18083a) {
            Db.a(this.f18047a);
            this.f18047a.f18087e = true;
            this.f18047a.f18083a.notifyAll();
        }
        while (isRunning()) {
            synchronized (this) {
                if (this.f18047a.f18084b.size() == 0) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                }
                hashMap = new HashMap(this.f18047a.f18084b);
                this.f18047a.f18084b.clear();
            }
            if (hashMap.size() > 0) {
                Db.a(this.f18047a, hashMap);
                hashMap.clear();
            }
        }
    }
}
