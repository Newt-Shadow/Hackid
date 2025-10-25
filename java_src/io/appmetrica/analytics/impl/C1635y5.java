package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.y5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1635y5 implements PermissionStrategy {

    /* renamed from: a  reason: collision with root package name */
    public final PermissionStrategy[] f20957a;

    public C1635y5(PermissionStrategy... permissionStrategyArr) {
        this.f20957a = permissionStrategyArr;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy
    public final boolean forbidUsePermission(String str) {
        for (PermissionStrategy permissionStrategy : this.f20957a) {
            if (permissionStrategy.forbidUsePermission(str)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return "CompositePermissionStrategy(strategies=" + Arrays.toString(this.f20957a) + ')';
    }
}
