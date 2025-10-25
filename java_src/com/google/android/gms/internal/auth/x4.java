package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;
import m5.f;
/* loaded from: classes.dex */
final class x4 extends f.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ m6.l f6202a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x4(b bVar, m6.l lVar) {
        this.f6202a = lVar;
    }

    @Override // m5.f
    public final void I(Status status) {
        b.z(status, null, this.f6202a);
    }
}
