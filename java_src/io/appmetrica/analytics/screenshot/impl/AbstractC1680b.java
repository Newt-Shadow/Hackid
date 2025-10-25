package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;
/* renamed from: io.appmetrica.analytics.screenshot.impl.b  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1680b {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f21410a;

    static {
        int[] iArr = new int[ActivityEvent.values().length];
        iArr[ActivityEvent.STARTED.ordinal()] = 1;
        iArr[ActivityEvent.STOPPED.ordinal()] = 2;
        f21410a = iArr;
    }
}
