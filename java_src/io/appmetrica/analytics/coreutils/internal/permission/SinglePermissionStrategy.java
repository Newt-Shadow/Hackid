package io.appmetrica.analytics.coreutils.internal.permission;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionResolutionStrategy;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
/* loaded from: classes2.dex */
public final class SinglePermissionStrategy implements PermissionResolutionStrategy {

    /* renamed from: a  reason: collision with root package name */
    private final PermissionExtractor f17735a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17736b;

    public SinglePermissionStrategy(PermissionExtractor permissionExtractor, String str) {
        this.f17735a = permissionExtractor;
        this.f17736b = str;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.permission.PermissionResolutionStrategy
    public boolean hasNecessaryPermissions(Context context) {
        return this.f17735a.hasPermission(context, this.f17736b);
    }
}
