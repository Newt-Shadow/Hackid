package io.appmetrica.analytics.coreutils.internal.permission;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionResolutionStrategy;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class MultiplePermissionBaseStrategy implements PermissionResolutionStrategy {

    /* renamed from: a  reason: collision with root package name */
    private final PermissionExtractor f17733a;

    /* renamed from: b  reason: collision with root package name */
    private final List f17734b;

    public MultiplePermissionBaseStrategy(PermissionExtractor permissionExtractor, List<String> list) {
        this.f17733a = permissionExtractor;
        this.f17734b = list;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.permission.PermissionResolutionStrategy
    public boolean hasNecessaryPermissions(Context context) {
        return this.f17734b.isEmpty() || hasNecessaryPermissions(context, this.f17733a, this.f17734b);
    }

    public abstract boolean hasNecessaryPermissions(Context context, PermissionExtractor permissionExtractor, List<String> list);
}
