package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.event.CounterReportApi;
import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerReporter;
/* renamed from: io.appmetrica.analytics.impl.hd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1220hd implements ModuleEventServiceHandlerReporter {

    /* renamed from: a  reason: collision with root package name */
    public final C1564v9 f19734a;

    /* renamed from: b  reason: collision with root package name */
    public final C1138e6 f19735b;

    public C1220hd(C1564v9 c1564v9, C1138e6 c1138e6) {
        this.f19734a = c1564v9;
        this.f19735b = c1138e6;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerReporter
    public final void report(CounterReportApi counterReportApi) {
        C1138e6 d10 = C1138e6.d(this.f19735b);
        d10.f19574d = counterReportApi.getType();
        d10.f19575e = counterReportApi.getCustomType();
        d10.setName(counterReportApi.getName());
        d10.setValue(counterReportApi.getValue());
        d10.setValueBytes(counterReportApi.getValueBytes());
        d10.f19577g = counterReportApi.getBytesTruncated();
        C1564v9 c1564v9 = this.f19734a;
        c1564v9.a(d10, Ek.a(c1564v9.f20782c.b(d10), d10.f19579i));
    }
}
