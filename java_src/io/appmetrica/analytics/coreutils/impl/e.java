package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
public final class e extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f17689a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f17690b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f17691c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(Context context, String str, int i10) {
        super(0);
        this.f17689a = context;
        this.f17690b = str;
        this.f17691c = i10;
    }

    @Override // id.a
    public final Object invoke() {
        return this.f17689a.getPackageManager().getPackageInfo(this.f17690b, this.f17691c);
    }
}
