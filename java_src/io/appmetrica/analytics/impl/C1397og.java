package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: io.appmetrica.analytics.impl.og  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1397og implements InterfaceC1247ig {

    /* renamed from: a  reason: collision with root package name */
    public final HashSet f20303a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f20304b;

    /* renamed from: c  reason: collision with root package name */
    public C1322lg f20305c;

    public C1397og() {
        this(C1665za.j().t());
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1247ig
    public final synchronized void a(C1322lg c1322lg) {
        if (c1322lg != null) {
            LoggerStorage.getMainPublicOrAnonymousLogger().info("Received referrer from source %s: %s", c1322lg.f20036d.f19976a, c1322lg.f20033a);
        }
        this.f20305c = c1322lg;
        this.f20304b = true;
        Iterator it = this.f20303a.iterator();
        while (it.hasNext()) {
            ((InterfaceC1073bg) it.next()).a(this.f20305c);
        }
        this.f20303a.clear();
    }

    public C1397og(C1272jg c1272jg) {
        this.f20303a = new HashSet();
        c1272jg.a(new C1252il(this));
        c1272jg.a();
    }

    public final synchronized void a(InterfaceC1073bg interfaceC1073bg) {
        this.f20303a.add(interfaceC1073bg);
        if (this.f20304b) {
            interfaceC1073bg.a(this.f20305c);
            this.f20303a.remove(interfaceC1073bg);
        }
    }
}
