package io.appmetrica.analytics.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public enum CounterConfigurationReporterType {
    MAIN("main"),
    MANUAL("manual"),
    SELF_SDK("self_sdk"),
    COMMUTATION("commutation"),
    SELF_DIAGNOSTIC_MAIN("self_diagnostic_main"),
    SELF_DIAGNOSTIC_MANUAL("self_diagnostic_manual"),
    CRASH("crash");
    
    public static final Companion Companion = new Companion(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f21090a;

    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CounterConfigurationReporterType fromStringValue(String str) {
            CounterConfigurationReporterType counterConfigurationReporterType;
            CounterConfigurationReporterType[] values = CounterConfigurationReporterType.values();
            int length = values.length;
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    counterConfigurationReporterType = values[i10];
                    if (m.a(counterConfigurationReporterType.getStringValue(), str)) {
                        break;
                    }
                    i10++;
                } else {
                    counterConfigurationReporterType = null;
                    break;
                }
            }
            if (counterConfigurationReporterType == null) {
                return CounterConfigurationReporterType.MAIN;
            }
            return counterConfigurationReporterType;
        }

        private Companion() {
        }
    }

    CounterConfigurationReporterType(String str) {
        this.f21090a = str;
    }

    public static final CounterConfigurationReporterType fromStringValue(String str) {
        return Companion.fromStringValue(str);
    }

    public final String getStringValue() {
        return this.f21090a;
    }
}
