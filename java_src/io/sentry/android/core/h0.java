package io.sentry.android.core;

import android.content.Context;
/* loaded from: classes2.dex */
public abstract class h0 {
    public static io.sentry.e1 a(Context context, p0 p0Var) {
        if (p0Var.d() >= 30) {
            return new AnrV2Integration(context);
        }
        return new AnrIntegration(context);
    }
}
