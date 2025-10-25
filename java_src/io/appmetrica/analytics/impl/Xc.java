package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionResolutionStrategy;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.cache.CachedDataProvider;
import io.appmetrica.analytics.coreutils.internal.permission.AlwaysAllowPermissionStrategy;
import io.appmetrica.analytics.coreutils.internal.permission.SinglePermissionStrategy;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class Xc implements Xm {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19235a;

    /* renamed from: b  reason: collision with root package name */
    public final PermissionResolutionStrategy f19236b;

    /* renamed from: c  reason: collision with root package name */
    public final CellularNetworkTypeExtractor f19237c;

    /* renamed from: d  reason: collision with root package name */
    public final CachedDataProvider.CachedData f19238d;

    public Xc(Context context) {
        PermissionResolutionStrategy alwaysAllowPermissionStrategy;
        this.f19235a = context;
        if (AndroidUtils.isApiAchieved(29)) {
            alwaysAllowPermissionStrategy = new SinglePermissionStrategy(C1665za.j().i(), "android.permission.READ_PHONE_STATE");
        } else {
            alwaysAllowPermissionStrategy = new AlwaysAllowPermissionStrategy();
        }
        this.f19236b = alwaysAllowPermissionStrategy;
        this.f19237c = new CellularNetworkTypeExtractor(context);
        long millis = TimeUnit.SECONDS.toMillis(20L);
        this.f19238d = new CachedDataProvider.CachedData(millis, millis * 2, "mobile-connection");
    }

    @Override // io.appmetrica.analytics.impl.Xm
    /* renamed from: b */
    public final synchronized Wc a() {
        Wc wc2;
        String str;
        wc2 = (Wc) this.f19238d.getData();
        if (wc2 == null || this.f19238d.shouldUpdateData()) {
            if (this.f19236b.hasNecessaryPermissions(this.f19235a)) {
                str = this.f19237c.getNetworkType();
            } else {
                str = CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE;
            }
            wc2 = new Wc(str);
            this.f19238d.setData(wc2);
        }
        return wc2;
    }
}
