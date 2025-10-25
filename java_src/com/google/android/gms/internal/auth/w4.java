package com.google.android.gms.internal.auth;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
final class w4 extends q4 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ m6.l f6195a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w4(b bVar, m6.l lVar) {
        this.f6195a = lVar;
    }

    @Override // com.google.android.gms.internal.auth.r4
    public final void Q0(Status status, Bundle bundle) {
        b.z(status, bundle, this.f6195a);
    }
}
