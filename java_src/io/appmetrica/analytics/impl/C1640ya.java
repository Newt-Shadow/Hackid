package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.NetworkServiceLocator;
/* renamed from: io.appmetrica.analytics.impl.ya  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1640ya implements InterfaceC1152ek {
    @Override // io.appmetrica.analytics.impl.InterfaceC1152ek
    public final void onCreate() {
        NetworkServiceLocator.getInstance().onCreate();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1152ek
    public final void onDestroy() {
        NetworkServiceLocator.getInstance().onDestroy();
    }
}
