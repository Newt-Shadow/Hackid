package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;
/* loaded from: classes2.dex */
public final class Pj extends AbstractC1224hh {
    public Pj(P6 p62) {
        super(p62);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1224hh, io.appmetrica.analytics.impl.InterfaceC1248ih
    public final boolean a(Boolean bool) {
        if (!this.f19747a.isRestrictedForSdk() && ((Boolean) WrapUtils.getOrDefault(bool, Boolean.TRUE)).booleanValue()) {
            return true;
        }
        return false;
    }
}
