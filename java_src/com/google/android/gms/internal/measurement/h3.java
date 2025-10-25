package com.google.android.gms.internal.measurement;

import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h3 implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadFactory f6420a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h3(a4 a4Var) {
        Objects.requireNonNull(a4Var);
        this.f6420a = Executors.defaultThreadFactory();
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f6420a.newThread(runnable);
        newThread.setName("ScionFrontendApi");
        return newThread;
    }
}
