package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class hd implements Callable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7601a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ pd f7602b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hd(pd pdVar, ae aeVar) {
        this.f7601a = aeVar;
        Objects.requireNonNull(pdVar);
        this.f7602b = pdVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        ae aeVar = this.f7601a;
        pd pdVar = this.f7602b;
        d8 g10 = pdVar.g((String) n5.q.k(aeVar.f7236a));
        i6.s sVar = i6.s.ANALYTICS_STORAGE;
        if (g10.o(sVar) && d8.f(aeVar.f7254s, 100).o(sVar)) {
            return pdVar.o0(aeVar).p0();
        }
        pdVar.a().w().a("Analytics storage consent denied. Returning null app instance id");
        return null;
    }
}
