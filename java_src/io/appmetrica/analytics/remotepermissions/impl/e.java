package io.appmetrica.analytics.remotepermissions.impl;

import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import java.util.Set;
import yc.m0;
/* loaded from: classes2.dex */
public final class e implements PermissionStrategy {

    /* renamed from: a  reason: collision with root package name */
    public Set f21351a;

    public e() {
        Set b10;
        b10 = m0.b();
        this.f21351a = b10;
    }

    public final synchronized void a(Set<String> set) {
        this.f21351a = set;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy
    public final synchronized boolean forbidUsePermission(String str) {
        return !this.f21351a.contains(str);
    }
}
