package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
public final class b extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f17682a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f17683b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f17684c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context, String str, int i10) {
        super(0);
        this.f17682a = context;
        this.f17683b = str;
        this.f17684c = i10;
    }

    @Override // id.a
    public final Object invoke() {
        return this.f17682a.getPackageManager().getApplicationInfo(this.f17683b, this.f17684c);
    }
}
