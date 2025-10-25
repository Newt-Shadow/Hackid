package com.google.android.gms.measurement.internal;

import java.lang.Thread;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class p6 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private final String f7866a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ s6 f7867b;

    public p6(s6 s6Var, String str) {
        Objects.requireNonNull(s6Var);
        this.f7867b = s6Var;
        n5.q.k(str);
        this.f7866a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.f7867b.f8322a.a().o().b(this.f7866a, th);
    }
}
