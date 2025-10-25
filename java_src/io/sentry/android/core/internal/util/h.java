package io.sentry.android.core.internal.util;

import io.sentry.protocol.e;
/* loaded from: classes2.dex */
public abstract class h {
    public static e.b a(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                return null;
            }
            return e.b.LANDSCAPE;
        }
        return e.b.PORTRAIT;
    }
}
