package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
/* renamed from: io.appmetrica.analytics.impl.y4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1634y4 {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f20956a;

    static {
        int[] iArr = new int[CounterConfigurationReporterType.values().length];
        iArr[CounterConfigurationReporterType.COMMUTATION.ordinal()] = 1;
        iArr[CounterConfigurationReporterType.SELF_DIAGNOSTIC_MAIN.ordinal()] = 2;
        iArr[CounterConfigurationReporterType.SELF_DIAGNOSTIC_MANUAL.ordinal()] = 3;
        iArr[CounterConfigurationReporterType.MANUAL.ordinal()] = 4;
        iArr[CounterConfigurationReporterType.SELF_SDK.ordinal()] = 5;
        iArr[CounterConfigurationReporterType.MAIN.ordinal()] = 6;
        iArr[CounterConfigurationReporterType.CRASH.ordinal()] = 7;
        f20956a = iArr;
    }
}
