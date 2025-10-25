package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class fd implements r5 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7544a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ sd f7545b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ pd f7546c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fd(pd pdVar, String str, sd sdVar) {
        this.f7544a = str;
        this.f7545b = sdVar;
        Objects.requireNonNull(pdVar);
        this.f7546c = pdVar;
    }

    @Override // com.google.android.gms.measurement.internal.r5
    public final void a(String str, int i10, Throwable th, byte[] bArr, Map map) {
        this.f7546c.v(this.f7544a, i10, th, bArr, this.f7545b);
    }
}
