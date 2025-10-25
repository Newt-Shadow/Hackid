package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.services.FrameworkDetector;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.tika.metadata.ClimateForcast;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Fc implements O8 {

    /* renamed from: a  reason: collision with root package name */
    public final Og f18223a;

    /* renamed from: b  reason: collision with root package name */
    public final Ue f18224b;

    /* renamed from: c  reason: collision with root package name */
    public final String f18225c = "activation_unlock_event_sending";

    /* renamed from: d  reason: collision with root package name */
    public final AtomicBoolean f18226d;

    public Fc(Og og, F4 f42, Ue ue2) {
        this.f18223a = og;
        this.f18224b = ue2;
        boolean z10 = false;
        this.f18226d = new AtomicBoolean((ue2.a(false) || a(f42)) ? true : true);
    }

    public final void a(String str) {
        try {
            Oj oj = AbstractC1375nj.f20222a;
            String str2 = this.f18225c;
            JSONObject put = new JSONObject().put(ClimateForcast.SOURCE, str).put("framework", FrameworkDetector.framework());
            Y9 h10 = C1665za.E.h();
            Bundle applicationMetaData = h10.f19291d.getApplicationMetaData(h10.f19288a);
            JSONObject put2 = put.put("appmetrica_plugin_id", applicationMetaData != null ? applicationMetaData.getString("io.appmetrica.analytics.plugin_id") : null);
            C1177fk c1177fk = C1665za.E.D;
            String jSONObject = put2.put("activation_offset", TimeUnit.SECONDS.convert(c1177fk.f19650a.currentTimeMillis() - c1177fk.f19651b, TimeUnit.MILLISECONDS)).toString();
            oj.getClass();
            oj.a(new Mj(str2, jSONObject));
        } catch (Throwable unused) {
        }
    }

    @Override // io.appmetrica.analytics.impl.O8
    public final boolean b() {
        String str;
        if (!this.f18226d.get() && (str = ((C1323lh) this.f18223a.a()).f20046m) != null && !kotlin.jvm.internal.m.a(str, "629a824d-c717-4ba5-bc0f-3f3968554d01") && this.f18226d.compareAndSet(false, true)) {
            this.f18224b.b(true);
            a("activation");
        }
        return this.f18226d.get();
    }

    public final void a() {
        if (this.f18226d.compareAndSet(false, true)) {
            this.f18224b.b(true);
            a("timer");
        }
    }

    public static boolean a(F4 f42) {
        String str = f42.f18199a;
        return (str == null || kotlin.jvm.internal.m.a(str, "629a824d-c717-4ba5-bc0f-3f3968554d01")) ? false : true;
    }
}
