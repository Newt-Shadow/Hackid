package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import h6.a;
import i6.t;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c implements a.InterfaceC0182a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f8700a;

    public c(d dVar) {
        Objects.requireNonNull(dVar);
        this.f8700a = dVar;
    }

    @Override // i6.x
    public final void a(String str, String str2, Bundle bundle, long j10) {
        d dVar = this.f8700a;
        if (!dVar.f8701a.contains(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        int i10 = b.f8699g;
        String a10 = t.a(str2);
        if (a10 != null) {
            str2 = a10;
        }
        bundle2.putString("events", str2);
        dVar.a().a(2, bundle2);
    }
}
