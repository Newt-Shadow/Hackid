package io.sentry.android.replay.util;

import io.sentry.util.t;
/* loaded from: classes2.dex */
public abstract class k {
    public static final boolean a(t tVar, Double d10) {
        kotlin.jvm.internal.m.e(tVar, "<this>");
        if (d10 == null || d10.doubleValue() < tVar.c()) {
            return false;
        }
        return true;
    }
}
