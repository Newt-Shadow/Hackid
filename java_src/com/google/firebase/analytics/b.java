package com.google.firebase.analytics;

import java.util.Objects;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class b implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ FirebaseAnalytics f8690a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(FirebaseAnalytics firebaseAnalytics) {
        Objects.requireNonNull(firebaseAnalytics);
        this.f8690a = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        return this.f8690a.k().f();
    }
}
