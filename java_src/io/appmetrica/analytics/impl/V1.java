package io.appmetrica.analytics.impl;

import java.util.List;
/* loaded from: classes2.dex */
public final class V1 {

    /* renamed from: a  reason: collision with root package name */
    public final List f19104a;

    /* renamed from: b  reason: collision with root package name */
    public final F2 f19105b;

    /* renamed from: c  reason: collision with root package name */
    public final List f19106c;

    public V1(List list, F2 f22, List list2) {
        this.f19104a = list;
        this.f19105b = f22;
        this.f19106c = list2;
    }

    public final String toString() {
        return "AppPermissionsState{mPermissionStateList=" + this.f19104a + ", mBackgroundRestrictionsState=" + this.f19105b + ", mAvailableProviders=" + this.f19106c + '}';
    }
}
