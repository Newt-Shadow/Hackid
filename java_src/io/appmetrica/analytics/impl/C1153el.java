package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.coreutils.internal.services.ContextPermissionChecker;
/* renamed from: io.appmetrica.analytics.impl.el  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1153el implements PermissionExtractor {

    /* renamed from: b  reason: collision with root package name */
    public static final String f19598b = "[SimplePermissionExtractor]";

    /* renamed from: a  reason: collision with root package name */
    public final PermissionStrategy f19599a;

    public C1153el(PermissionStrategy permissionStrategy) {
        this.f19599a = permissionStrategy;
    }

    public final PermissionStrategy a() {
        return this.f19599a;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor
    public final boolean hasPermission(Context context, String str) {
        if (this.f19599a.forbidUsePermission(str)) {
            return false;
        }
        return ContextPermissionChecker.hasPermission(context, str);
    }
}
