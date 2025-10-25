package io.sentry.android.core;

import android.app.Activity;
import io.sentry.j5;
import io.sentry.z4;
/* loaded from: classes2.dex */
public final class ScreenshotEventProcessor implements io.sentry.y {

    /* renamed from: a  reason: collision with root package name */
    private final SentryAndroidOptions f22093a;

    /* renamed from: b  reason: collision with root package name */
    private final p0 f22094b;

    /* renamed from: c  reason: collision with root package name */
    private final io.sentry.android.core.internal.util.g f22095c = new io.sentry.android.core.internal.util.g(io.sentry.android.core.internal.util.b.b(), 2000, 3);

    public ScreenshotEventProcessor(SentryAndroidOptions sentryAndroidOptions, p0 p0Var) {
        this.f22093a = (SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.f22094b = (p0) io.sentry.util.q.c(p0Var, "BuildInfoProvider is required");
        if (sentryAndroidOptions.isAttachScreenshot()) {
            io.sentry.util.k.a("Screenshot");
        }
    }

    @Override // io.sentry.y
    public z4 b(z4 z4Var, io.sentry.c0 c0Var) {
        if (!z4Var.y0()) {
            return z4Var;
        }
        if (!this.f22093a.isAttachScreenshot()) {
            this.f22093a.getLogger().c(j5.DEBUG, "attachScreenshot is disabled.", new Object[0]);
            return z4Var;
        }
        Activity b10 = y0.c().b();
        if (b10 != null && !io.sentry.util.j.i(c0Var)) {
            boolean a10 = this.f22095c.a();
            this.f22093a.getBeforeScreenshotCaptureCallback();
            if (a10) {
                return z4Var;
            }
            byte[] f10 = io.sentry.android.core.internal.util.p.f(b10, this.f22093a.getMainThreadChecker(), this.f22093a.getLogger(), this.f22094b);
            if (f10 == null) {
                return z4Var;
            }
            c0Var.m(io.sentry.b.a(f10));
            c0Var.k("android:activity", b10);
        }
        return z4Var;
    }

    @Override // io.sentry.y
    public io.sentry.protocol.y c(io.sentry.protocol.y yVar, io.sentry.c0 c0Var) {
        return yVar;
    }
}
