package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
public final class g extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f17695a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f17696b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(Context context, String str) {
        super(0);
        this.f17695a = context;
        this.f17696b = str;
    }

    @Override // id.a
    public final Object invoke() {
        return Boolean.valueOf(this.f17695a.getPackageManager().hasSystemFeature(this.f17696b));
    }
}
