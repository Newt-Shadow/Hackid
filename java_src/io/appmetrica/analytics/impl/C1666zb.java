package io.appmetrica.analytics.impl;

import android.os.Handler;
import android.os.SystemClock;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
/* renamed from: io.appmetrica.analytics.impl.zb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1666zb {

    /* renamed from: a  reason: collision with root package name */
    public final Handler f21063a;

    /* renamed from: b  reason: collision with root package name */
    public final R2 f21064b;

    /* renamed from: c  reason: collision with root package name */
    public final Ab f21065c;

    public C1666zb(Handler handler, R2 r22) {
        this.f21063a = handler;
        this.f21064b = r22;
        this.f21065c = new Ab(handler, r22);
    }

    public static void a(Handler handler, R2 r22, Runnable runnable) {
        handler.removeCallbacks(runnable, r22.f18865b.f19320b.getApiKey());
        handler.postAtTime(runnable, r22.f18865b.f19320b.getApiKey(), SystemClock.uptimeMillis() + (((Integer) WrapUtils.getOrDefault(r22.f18865b.f19320b.getSessionTimeout(), 10)).intValue() * 500));
    }
}
