package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.control.DataSendingRestrictionController;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
/* renamed from: io.appmetrica.analytics.impl.hh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1224hh implements InterfaceC1248ih {

    /* renamed from: a  reason: collision with root package name */
    protected final DataSendingRestrictionController f19747a;

    public AbstractC1224hh(DataSendingRestrictionController dataSendingRestrictionController) {
        this.f19747a = dataSendingRestrictionController;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1248ih
    public boolean a(Boolean bool) {
        return ((Boolean) WrapUtils.getOrDefault(bool, Boolean.TRUE)).booleanValue();
    }
}
