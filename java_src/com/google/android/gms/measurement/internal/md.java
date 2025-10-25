package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class md {

    /* renamed from: a  reason: collision with root package name */
    final String f7771a;

    /* renamed from: b  reason: collision with root package name */
    long f7772b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ md(pd pdVar, String str, byte[] bArr) {
        this(pdVar, str);
    }

    private md(pd pdVar, String str) {
        Objects.requireNonNull(pdVar);
        this.f7771a = str;
        this.f7772b = pdVar.f().elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ md(pd pdVar, byte[] bArr) {
        this(pdVar, pdVar.N0().l0());
    }
}
