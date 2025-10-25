package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ed implements r5 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7495a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f7496b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ pd f7497c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ed(pd pdVar, String str, List list) {
        this.f7495a = str;
        this.f7496b = list;
        Objects.requireNonNull(pdVar);
        this.f7497c = pdVar;
    }

    @Override // com.google.android.gms.measurement.internal.r5
    public final void a(String str, int i10, Throwable th, byte[] bArr, Map map) {
        this.f7497c.A(true, i10, th, bArr, this.f7495a, this.f7496b);
    }
}
