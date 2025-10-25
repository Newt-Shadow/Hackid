package io.appmetrica.analytics.networktasks.impl;

import io.appmetrica.analytics.networktasks.internal.NetworkTask;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final NetworkTask f21250a;

    /* renamed from: b  reason: collision with root package name */
    public final String f21251b;

    public d(NetworkTask networkTask) {
        this.f21250a = networkTask;
        this.f21251b = networkTask.description();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && d.class == obj.getClass()) {
            return this.f21251b.equals(((d) obj).f21251b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f21251b.hashCode();
    }
}
