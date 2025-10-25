package com.google.android.gms.measurement.internal;

import android.util.Log;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e8 implements i6.m {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ w6 f7480a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e8(f8 f8Var, w6 w6Var) {
        this.f7480a = w6Var;
        Objects.requireNonNull(f8Var);
    }

    @Override // i6.m
    public final boolean zza() {
        return Log.isLoggable(this.f7480a.a().z(), 3);
    }
}
