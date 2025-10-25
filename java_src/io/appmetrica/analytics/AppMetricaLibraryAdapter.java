package io.appmetrica.analytics;

import android.content.Context;
import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.impl.C1509t4;
import io.appmetrica.analytics.impl.C1555v0;
import io.appmetrica.analytics.impl.Mb;
import io.appmetrica.analytics.impl.Nb;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Map;
import xc.k;
import xc.q;
import yc.h0;
/* loaded from: classes2.dex */
public class AppMetricaLibraryAdapter {

    /* renamed from: a  reason: collision with root package name */
    private static C1555v0 f17498a = new C1555v0();

    public static void activate(Context context) {
        C1555v0 c1555v0 = f17498a;
        if (c1555v0.f20761a.f18589a.a(context).f19201a) {
            Nb nb2 = c1555v0.f20762b;
            Context applicationContext = context.getApplicationContext();
            nb2.getClass();
            C1509t4.j().f20624g.a(applicationContext);
            C1509t4.j().b().a(applicationContext, AppMetricaLibraryAdapterConfig.newConfigBuilder().build());
            return;
        }
        ImportantLogger.INSTANCE.info("[AppMetricaLibraryAdapterProxy]", "Activation failed due to context is null", new Object[0]);
    }

    public static void reportEvent(String str, String str2, String str3) {
        Map<String, Object> h10;
        C1555v0 c1555v0 = f17498a;
        Mb mb2 = c1555v0.f20761a;
        if (mb2.f18591c.a((Void) null).f19201a && mb2.f18592d.a(str).f19201a && mb2.f18593e.a(str2).f19201a && mb2.f18594f.a(str3).f19201a) {
            c1555v0.f20762b.getClass();
            c1555v0.f20763c.getClass();
            ModuleEvent.Builder withName = ModuleEvent.newBuilder(4).withName("appmetrica_system_event_42");
            k[] kVarArr = new k[3];
            if (str == null) {
                str = "null";
            }
            kVarArr[0] = q.a("sender", str);
            if (str2 == null) {
                str2 = "null";
            }
            kVarArr[1] = q.a("event", str2);
            if (str3 == null) {
                str3 = "null";
            }
            kVarArr[2] = q.a("payload", str3);
            h10 = h0.h(kVarArr);
            ModulesFacade.reportEvent(withName.withAttributes(h10).build());
            return;
        }
        String str4 = "Failed report event from sender: " + str + " with name = " + str2 + " and payload = " + str3;
        PublicLogger.Companion.getAnonymousInstance().warning("[AppMetricaLibraryAdapterProxy]" + str4, new Object[0]);
    }

    public static void setAdvIdentifiersTracking(boolean z10) {
        C1555v0 c1555v0 = f17498a;
        if (c1555v0.f20761a.f18591c.a((Void) null).f19201a) {
            c1555v0.f20762b.getClass();
            ModulesFacade.setAdvIdentifiersTracking(z10);
        }
    }

    public static void setProxy(C1555v0 c1555v0) {
        f17498a = c1555v0;
    }

    public static void activate(Context context, AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        C1555v0 c1555v0 = f17498a;
        Mb mb2 = c1555v0.f20761a;
        if (mb2.f18589a.a(context).f19201a && mb2.f18590b.a(appMetricaLibraryAdapterConfig).f19201a) {
            Nb nb2 = c1555v0.f20762b;
            Context applicationContext = context.getApplicationContext();
            nb2.getClass();
            C1509t4.j().f20624g.a(applicationContext);
            C1509t4.j().b().a(applicationContext, appMetricaLibraryAdapterConfig);
            return;
        }
        ImportantLogger.INSTANCE.info("[AppMetricaLibraryAdapterProxy]", "Activation failed due to context is null or invalid config", new Object[0]);
    }
}
