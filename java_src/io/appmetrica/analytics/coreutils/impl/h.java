package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
public final class h extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f17697a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Intent f17698b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f17699c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Context context, Intent intent, int i10) {
        super(0);
        this.f17697a = context;
        this.f17698b = intent;
        this.f17699c = i10;
    }

    @Override // id.a
    public final Object invoke() {
        return this.f17697a.getPackageManager().resolveActivity(this.f17698b, this.f17699c);
    }
}
