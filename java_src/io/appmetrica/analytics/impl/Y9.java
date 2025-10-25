package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
/* loaded from: classes2.dex */
public final class Y9 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19288a;

    /* renamed from: b  reason: collision with root package name */
    public final Gm f19289b;

    /* renamed from: c  reason: collision with root package name */
    public final C1384o3 f19290c;

    /* renamed from: d  reason: collision with root package name */
    public final SafePackageManager f19291d;

    public Y9(Context context, Gm gm, C1384o3 c1384o3, SafePackageManager safePackageManager) {
        this.f19288a = context;
        this.f19289b = gm;
        this.f19290c = c1384o3;
        this.f19291d = safePackageManager;
    }

    public Y9(Context context) {
        this(context, new Gm(context, "io.appmetrica.analytics.build_id"), new C1384o3(context, "io.appmetrica.analytics.is_offline"), new SafePackageManager());
    }
}
