package io.sentry.android.replay.util;

import android.content.Context;
/* loaded from: classes2.dex */
public abstract class c {
    public static final Context a(Context context) {
        kotlin.jvm.internal.m.e(context, "<this>");
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            return applicationContext;
        }
        return context;
    }
}
