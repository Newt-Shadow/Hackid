package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Handler;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.coreutils.internal.ApiKeyUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.LinkedHashMap;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.ki  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1299ki implements InterfaceC1143eb {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19977a;

    /* renamed from: b  reason: collision with root package name */
    public final C1645yf f19978b;

    /* renamed from: c  reason: collision with root package name */
    public final C1598wi f19979c;

    /* renamed from: d  reason: collision with root package name */
    public final Handler f19980d;

    /* renamed from: e  reason: collision with root package name */
    public final C1676zl f19981e;

    /* renamed from: f  reason: collision with root package name */
    public final Ec f19982f;

    /* renamed from: g  reason: collision with root package name */
    public final LinkedHashMap f19983g;

    /* renamed from: h  reason: collision with root package name */
    public final C1304kn f19984h;

    /* renamed from: i  reason: collision with root package name */
    public final List f19985i;

    /* renamed from: j  reason: collision with root package name */
    public C1517tc f19986j;

    public C1299ki(Context context, C1645yf c1645yf, C1598wi c1598wi, Handler handler, C1676zl c1676zl) {
        List k10;
        this.f19977a = context;
        this.f19978b = c1645yf;
        this.f19979c = c1598wi;
        this.f19980d = handler;
        this.f19981e = c1676zl;
        this.f19982f = new Ec(context, c1645yf, c1598wi, c1676zl);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f19983g = linkedHashMap;
        this.f19984h = new C1304kn(new C1349mi(linkedHashMap));
        k10 = yc.o.k("20799a27-fa80-4b36-b2db-0f8141f24180", "0e5e9c33-f8c3-4568-86c5-2e4f57523f72");
        this.f19985i = k10;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1143eb, io.appmetrica.analytics.impl.InterfaceC1168fb
    public final InterfaceC1143eb a() {
        return this;
    }

    public final C1299ki b() {
        return this;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1143eb
    /* renamed from: c */
    public final synchronized C1517tc a(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, boolean z10) {
        C1517tc c1517tc;
        c1517tc = this.f19986j;
        if (c1517tc == null) {
            this.f19984h.a(appMetricaConfig.apiKey);
            this.f19982f.a(appMetricaConfig, publicLogger);
            c1517tc = new C1517tc(this.f19982f);
            c1517tc.f18872i = new C1666zb(this.f19980d, c1517tc);
            C1676zl c1676zl = this.f19981e;
            Gh gh = c1517tc.f18865b;
            if (c1676zl != null) {
                gh.f19320b.setUuid(c1676zl.g());
            } else {
                gh.getClass();
            }
            c1517tc.a(appMetricaConfig, z10);
            c1517tc.k();
            this.f19979c.f20876f.f19070c = new C1274ji(c1517tc);
            this.f19983g.put(appMetricaConfig.apiKey, c1517tc);
            this.f19986j = c1517tc;
        }
        return c1517tc;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1143eb
    /* renamed from: d */
    public final synchronized C1517tc b(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, boolean z10) {
        C1517tc c1517tc;
        c1517tc = this.f19986j;
        if (c1517tc != null) {
            this.f19982f.a(appMetricaConfig, publicLogger);
            c1517tc.a(appMetricaConfig, z10);
            C1509t4.j().getClass();
            this.f19983g.put(appMetricaConfig.apiKey, c1517tc);
        } else {
            this.f19984h.a(appMetricaConfig.apiKey);
            this.f19982f.a(appMetricaConfig, publicLogger);
            c1517tc = new C1517tc(this.f19982f);
            c1517tc.f18872i = new C1666zb(this.f19980d, c1517tc);
            C1676zl c1676zl = this.f19981e;
            Gh gh = c1517tc.f18865b;
            if (c1676zl != null) {
                gh.f19320b.setUuid(c1676zl.g());
            } else {
                gh.getClass();
            }
            c1517tc.a(appMetricaConfig, z10);
            c1517tc.k();
            this.f19979c.f20876f.f19070c = new C1274ji(c1517tc);
            this.f19983g.put(appMetricaConfig.apiKey, c1517tc);
            C1509t4.j().getClass();
            this.f19986j = c1517tc;
        }
        return c1517tc;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1143eb
    public final synchronized void a(ReporterConfig reporterConfig) {
        if (this.f19983g.containsKey(reporterConfig.apiKey)) {
            LoggerStorage.getOrCreatePublicLogger(reporterConfig.apiKey).warning("Reporter with apiKey=%s already exists.", ApiKeyUtils.createPartialApiKey(reporterConfig.apiKey));
        } else {
            b(reporterConfig);
            ImportantLogger importantLogger = ImportantLogger.INSTANCE;
            importantLogger.info("AppMetrica", "Activate reporter with APIKey " + ApiKeyUtils.createPartialApiKey(reporterConfig.apiKey), new Object[0]);
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1143eb
    public final synchronized InterfaceC1118db b(ReporterConfig reporterConfig) {
        InterfaceC1118db interfaceC1118db;
        interfaceC1118db = (InterfaceC1118db) this.f19983g.get(reporterConfig.apiKey);
        if (interfaceC1118db == null) {
            if (!this.f19985i.contains(reporterConfig.apiKey)) {
                this.f19981e.i();
            }
            Context context = this.f19977a;
            Kc kc2 = new Kc(context, this.f19978b, reporterConfig, this.f19979c, new Y9(context));
            kc2.f18872i = new C1666zb(this.f19980d, kc2);
            C1676zl c1676zl = this.f19981e;
            Gh gh = kc2.f18865b;
            if (c1676zl != null) {
                gh.f19320b.setUuid(c1676zl.g());
            } else {
                gh.getClass();
            }
            kc2.k();
            this.f19983g.put(reporterConfig.apiKey, kc2);
            interfaceC1118db = kc2;
        }
        return interfaceC1118db;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1143eb
    public final synchronized InterfaceC1193gb b(AppMetricaConfig appMetricaConfig) {
        R2 r22;
        r22 = this.f19986j;
        if (r22 == null) {
            Context context = this.f19977a;
            r22 = new C1661z6(context, this.f19978b, appMetricaConfig, this.f19979c, new Y9(context));
            r22.f18872i = new C1666zb(this.f19980d, r22);
            C1676zl c1676zl = this.f19981e;
            Gh gh = r22.f18865b;
            if (c1676zl != null) {
                gh.f19320b.setUuid(c1676zl.g());
            } else {
                gh.getClass();
            }
            r22.b(appMetricaConfig.errorEnvironment);
            r22.k();
        }
        return r22;
    }
}
