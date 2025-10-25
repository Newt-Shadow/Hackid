package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
public final class j extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f17702a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Intent f17703b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f17704c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Context context, Intent intent, int i10) {
        super(0);
        this.f17702a = context;
        this.f17703b = intent;
        this.f17704c = i10;
    }

    @Override // id.a
    public final Object invoke() {
        return this.f17702a.getPackageManager().resolveService(this.f17703b, this.f17704c);
    }
}
