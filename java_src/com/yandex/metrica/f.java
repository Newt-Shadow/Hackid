package com.yandex.metrica;

import com.yandex.metrica.ReporterConfig;
import com.yandex.metrica.impl.ob.A2;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class f extends ReporterConfig {

    /* renamed from: a  reason: collision with root package name */
    public final Integer f9627a;

    /* renamed from: b  reason: collision with root package name */
    public final Integer f9628b;

    /* renamed from: c  reason: collision with root package name */
    public final Map f9629c;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        ReporterConfig.Builder f9630a;

        /* renamed from: b  reason: collision with root package name */
        Integer f9631b;

        /* renamed from: c  reason: collision with root package name */
        Integer f9632c;

        /* renamed from: d  reason: collision with root package name */
        LinkedHashMap f9633d = new LinkedHashMap();

        public a(String str) {
            this.f9630a = ReporterConfig.newConfigBuilder(str);
        }

        public a a(int i10) {
            this.f9630a.withMaxReportsInDatabaseCount(i10);
            return this;
        }

        public f b() {
            return new f(this);
        }
    }

    f(a aVar) {
        super(aVar.f9630a);
        this.f9628b = aVar.f9631b;
        this.f9627a = aVar.f9632c;
        LinkedHashMap linkedHashMap = aVar.f9633d;
        this.f9629c = linkedHashMap == null ? null : A2.e(linkedHashMap);
    }

    public static a a(f fVar) {
        a aVar = new a(fVar.apiKey);
        if (A2.a(fVar.sessionTimeout)) {
            aVar.f9630a.withSessionTimeout(fVar.sessionTimeout.intValue());
        }
        if (A2.a(fVar.logs) && fVar.logs.booleanValue()) {
            aVar.f9630a.withLogs();
        }
        if (A2.a(fVar.statisticsSending)) {
            aVar.f9630a.withStatisticsSending(fVar.statisticsSending.booleanValue());
        }
        if (A2.a(fVar.maxReportsInDatabaseCount)) {
            aVar.f9630a.withMaxReportsInDatabaseCount(fVar.maxReportsInDatabaseCount.intValue());
        }
        if (A2.a(fVar.f9627a)) {
            aVar.f9632c = Integer.valueOf(fVar.f9627a.intValue());
        }
        if (A2.a(fVar.f9628b)) {
            aVar.f9631b = Integer.valueOf(fVar.f9628b.intValue());
        }
        if (A2.a((Object) fVar.f9629c)) {
            for (Map.Entry entry : fVar.f9629c.entrySet()) {
                aVar.f9633d.put((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (A2.a((Object) fVar.userProfileID)) {
            aVar.f9630a.withUserProfileID(fVar.userProfileID);
        }
        return aVar;
    }

    public static a b(String str) {
        return new a(str);
    }

    public static f c(ReporterConfig reporterConfig) {
        if (reporterConfig instanceof f) {
            return (f) reporterConfig;
        }
        return new f(reporterConfig);
    }

    private f(ReporterConfig reporterConfig) {
        super(reporterConfig);
        if (reporterConfig instanceof f) {
            f fVar = (f) reporterConfig;
            this.f9627a = fVar.f9627a;
            this.f9628b = fVar.f9628b;
            this.f9629c = fVar.f9629c;
            return;
        }
        this.f9627a = null;
        this.f9628b = null;
        this.f9629c = null;
    }
}
