package com.google.firebase.analytics;

import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class c implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ FirebaseAnalytics f8691a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(FirebaseAnalytics firebaseAnalytics) {
        Objects.requireNonNull(firebaseAnalytics);
        this.f8691a = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        return this.f8691a.k().g();
    }
}
