package io.appmetrica.analytics.coreutils.impl;

import android.content.ComponentName;
import android.content.Context;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
public final class a extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f17679a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ComponentName f17680b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f17681c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, ComponentName componentName, int i10) {
        super(0);
        this.f17679a = context;
        this.f17680b = componentName;
        this.f17681c = i10;
    }

    @Override // id.a
    public final Object invoke() {
        return this.f17679a.getPackageManager().getActivityInfo(this.f17680b, this.f17681c);
    }
}
