package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
/* loaded from: classes2.dex */
public abstract /* synthetic */ class R5 {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f18877a;

    static {
        int[] iArr = new int[ActivityEvent.values().length];
        iArr[ActivityEvent.RESUMED.ordinal()] = 1;
        iArr[ActivityEvent.PAUSED.ordinal()] = 2;
        f18877a = iArr;
    }
}
