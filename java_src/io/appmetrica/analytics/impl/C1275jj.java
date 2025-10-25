package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
/* renamed from: io.appmetrica.analytics.impl.jj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1275jj {

    /* renamed from: a  reason: collision with root package name */
    public final String f19869a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f19870b;

    /* renamed from: c  reason: collision with root package name */
    public final CounterConfigurationReporterType f19871c;

    /* renamed from: d  reason: collision with root package name */
    public final C1350mj f19872d;

    public C1275jj(String str, Context context, CounterConfigurationReporterType counterConfigurationReporterType, C1350mj c1350mj) {
        this.f19869a = str;
        this.f19870b = context;
        int i10 = AbstractC1250ij.f19787a[counterConfigurationReporterType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                this.f19871c = null;
            } else {
                this.f19871c = CounterConfigurationReporterType.SELF_DIAGNOSTIC_MANUAL;
            }
        } else {
            this.f19871c = CounterConfigurationReporterType.SELF_DIAGNOSTIC_MAIN;
        }
        this.f19872d = c1350mj;
    }
}
