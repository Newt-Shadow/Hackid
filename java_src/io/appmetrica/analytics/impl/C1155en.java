package io.appmetrica.analytics.impl;

import java.lang.Thread;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: io.appmetrica.analytics.impl.en  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1155en implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    public final CopyOnWriteArrayList f19603a = new CopyOnWriteArrayList();

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        for (Thread.UncaughtExceptionHandler uncaughtExceptionHandler : this.f19603a) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }
}
