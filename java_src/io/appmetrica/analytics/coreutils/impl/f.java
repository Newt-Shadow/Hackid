package io.appmetrica.analytics.coreutils.impl;

import android.content.ComponentName;
import android.content.Context;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
public final class f extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f17692a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ComponentName f17693b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f17694c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context, ComponentName componentName, int i10) {
        super(0);
        this.f17692a = context;
        this.f17693b = componentName;
        this.f17694c = i10;
    }

    @Override // id.a
    public final Object invoke() {
        return this.f17692a.getPackageManager().getServiceInfo(this.f17693b, this.f17694c);
    }
}
