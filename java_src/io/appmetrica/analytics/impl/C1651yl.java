package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.StartupParamsCallback;
/* renamed from: io.appmetrica.analytics.impl.yl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1651yl implements L6 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ StartupParamsCallback f20997a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1676zl f20998b;

    public C1651yl(C1676zl c1676zl, StartupParamsCallback startupParamsCallback) {
        this.f20998b = c1676zl;
        this.f20997a = startupParamsCallback;
    }

    @Override // io.appmetrica.analytics.impl.L6
    public final void a(int i10, Bundle bundle) {
        this.f20998b.b(bundle, this.f20997a);
    }
}
