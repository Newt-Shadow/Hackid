package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import h6.a;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e implements a.InterfaceC0182a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f8705a;

    public e(f fVar) {
        Objects.requireNonNull(fVar);
        this.f8705a = fVar;
    }

    @Override // i6.x
    public final void a(String str, String str2, Bundle bundle, long j10) {
        if (str != null && b.c(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(Constants.NAME, str2);
            bundle2.putLong("timestampInMillis", j10);
            bundle2.putBundle("params", bundle);
            this.f8705a.a().a(3, bundle2);
        }
    }
}
