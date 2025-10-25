package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;
/* renamed from: io.appmetrica.analytics.impl.zh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1672zh extends AbstractC1224hh {
    public C1672zh(P6 p62) {
        super(p62);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1224hh, io.appmetrica.analytics.impl.InterfaceC1248ih
    public final boolean a(Boolean bool) {
        if (!this.f19747a.isRestrictedForReporter() && ((Boolean) WrapUtils.getOrDefault(bool, Boolean.TRUE)).booleanValue()) {
            return true;
        }
        return false;
    }
}
