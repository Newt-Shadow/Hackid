package io.appmetrica.analytics.impl;

import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: io.appmetrica.analytics.impl.bk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ExecutorC1077bk implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Handler f19439a;

    public ExecutorC1077bk(Handler handler) {
        this.f19439a = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f19439a.post(runnable);
    }
}
