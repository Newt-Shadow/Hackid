package io.appmetrica.analytics.impl;

import android.os.Looper;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.gn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1205gn implements InterfaceC1254in {
    @Override // io.appmetrica.analytics.impl.InterfaceC1254in
    public final Thread a() {
        return Looper.getMainLooper().getThread();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1254in
    public final StackTraceElement[] b() {
        return null;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1254in
    public final Map c() {
        return Thread.getAllStackTraces();
    }
}
