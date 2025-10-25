package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Looper;
/* loaded from: classes.dex */
public final class f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Context context) {
    }

    public static final boolean a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }
}
