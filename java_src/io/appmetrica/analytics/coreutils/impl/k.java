package io.appmetrica.analytics.coreutils.impl;

import android.content.ComponentName;
import android.content.Context;
import kotlin.jvm.internal.n;
import xc.t;
/* loaded from: classes2.dex */
public final class k extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f17705a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ComponentName f17706b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f17707c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f17708d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Context context, ComponentName componentName, int i10, int i11) {
        super(0);
        this.f17705a = context;
        this.f17706b = componentName;
        this.f17707c = i10;
        this.f17708d = i11;
    }

    @Override // id.a
    public final Object invoke() {
        this.f17705a.getPackageManager().setComponentEnabledSetting(this.f17706b, this.f17707c, this.f17708d);
        return t.f32733a;
    }
}
