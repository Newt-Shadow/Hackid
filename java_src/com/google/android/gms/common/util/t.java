package com.google.android.gms.common.util;

import android.os.StrictMode;
/* loaded from: classes.dex */
abstract class t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static StrictMode.VmPolicy.Builder a(StrictMode.VmPolicy.Builder builder) {
        StrictMode.VmPolicy.Builder permitUnsafeIntentLaunch;
        permitUnsafeIntentLaunch = builder.permitUnsafeIntentLaunch();
        return permitUnsafeIntentLaunch;
    }
}
