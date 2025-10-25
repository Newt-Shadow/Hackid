package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.modulesapi.internal.common.ModuleSelfReporter;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.ld  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1319ld implements ModuleSelfReporter {

    /* renamed from: a  reason: collision with root package name */
    public final Oj f20021a = AbstractC1382o1.a();

    /* renamed from: b  reason: collision with root package name */
    public final int f20022b = 4;

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModuleSelfReporter
    public final void reportError(String str, Throwable th) {
        Oj oj = this.f20021a;
        oj.getClass();
        oj.a(new C1400oj(str, th));
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModuleSelfReporter
    public final void reportEvent(String str) {
        Oj oj = this.f20021a;
        ModuleEvent build = ModuleEvent.newBuilder(this.f20022b).withName(str).build();
        oj.getClass();
        oj.a(new Dj(build));
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModuleSelfReporter
    public final void reportError(String str, String str2) {
        this.f20021a.reportError(str, str2);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModuleSelfReporter
    public final void reportEvent(String str, Map<String, ? extends Object> map) {
        Oj oj = this.f20021a;
        ModuleEvent build = ModuleEvent.newBuilder(this.f20022b).withName(str).withAttributes(map).build();
        oj.getClass();
        oj.a(new Dj(build));
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModuleSelfReporter
    public final void reportEvent(String str, String str2) {
        Oj oj = this.f20021a;
        ModuleEvent build = ModuleEvent.newBuilder(this.f20022b).withName(str).withValue(str2).build();
        oj.getClass();
        oj.a(new Dj(build));
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ModuleSelfReporter
    public final void reportEvent(int i10, String str, String str2) {
        Oj oj = this.f20021a;
        ModuleEvent build = ModuleEvent.newBuilder(i10).withName(str).withValue(str2).build();
        oj.getClass();
        oj.a(new Dj(build));
    }
}
