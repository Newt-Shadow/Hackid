package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
/* loaded from: classes2.dex */
public final class Vd implements PermissionStrategy {
    @Override // io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy
    public final boolean forbidUsePermission(String str) {
        return false;
    }

    public final String toString() {
        return "AlwaysAskForPermissionStrategy{always allow permission}";
    }
}
