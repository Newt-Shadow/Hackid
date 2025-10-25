package io.sentry.android.core;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes2.dex */
final class o1 {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f22431a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o1() {
        this(Looper.getMainLooper());
    }

    public Thread a() {
        return this.f22431a.getLooper().getThread();
    }

    public void b(Runnable runnable) {
        this.f22431a.post(runnable);
    }

    o1(Looper looper) {
        this.f22431a = new Handler(looper);
    }
}
