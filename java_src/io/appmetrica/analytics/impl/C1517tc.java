package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import io.appmetrica.analytics.AnrListener;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.ExternalAttribution;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashClientConfig;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashClientModule;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* renamed from: io.appmetrica.analytics.impl.tc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1517tc extends R2 implements Ua {

    /* renamed from: r  reason: collision with root package name */
    public static final Long f20668r = Long.valueOf(TimeUnit.SECONDS.toMillis(1));

    /* renamed from: o  reason: collision with root package name */
    public final C1304kn f20669o;

    /* renamed from: p  reason: collision with root package name */
    public final Ec f20670p;

    /* renamed from: q  reason: collision with root package name */
    public final C1542uc f20671q;

    public C1517tc(Ec ec2) {
        super(ec2.b(), ec2.i(), ec2.h(), ec2.d(), ec2.f(), ec2.j(), ec2.g(), ec2.c(), ec2.a(), ec2.e());
        this.f20669o = new C1304kn(new Yd("Referral url"));
        this.f20670p = ec2;
        this.f20671q = new C1542uc(this);
        l();
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(String str, boolean z10) {
        PublicLogger publicLogger = this.f18866c;
        publicLogger.info("App opened via deeplink: " + WrapUtils.wrapToTag(str), new Object[0]);
        C1598wi c1598wi = this.f18871h;
        PublicLogger publicLogger2 = this.f18866c;
        Set set = H9.f18290a;
        HashMap hashMap = new HashMap();
        hashMap.put("type", "open");
        hashMap.put("link", str);
        hashMap.put("auto", Boolean.valueOf(z10));
        String b10 = AbstractC1491sb.b(hashMap);
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(b10, "", 8208, 0, publicLogger2);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void b(String str) {
        this.f20669o.a(str);
        C1598wi c1598wi = this.f18871h;
        PublicLogger publicLogger = this.f18866c;
        Set set = H9.f18290a;
        HashMap hashMap = new HashMap();
        hashMap.put("type", "referral");
        hashMap.put("link", str);
        hashMap.put("auto", Boolean.FALSE);
        String b10 = AbstractC1491sb.b(hashMap);
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(b10, "", 8208, 0, publicLogger);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
        PublicLogger publicLogger2 = this.f18866c;
        publicLogger2.info("Referral URL received: " + WrapUtils.wrapToTag(str), new Object[0]);
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void c() {
        C1542uc c1542uc = this.f20671q;
        synchronized (c1542uc) {
            c1542uc.f20729b.a(c1542uc.f20728a);
        }
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final List<String> f() {
        return this.f18865b.f19319a.b();
    }

    @Override // io.appmetrica.analytics.impl.R2
    public final String j() {
        return "[MainReporter]";
    }

    @Override // io.appmetrica.analytics.impl.R2
    public final void k() {
        super.k();
        C1509t4.j().l().b();
    }

    public final void l() {
        C1598wi c1598wi = this.f18871h;
        c1598wi.f20873c.a(this.f18865b.f19319a);
        C1184g2 c1184g2 = this.f20670p.f18169f;
        C1492sc c1492sc = new C1492sc(this);
        long longValue = f20668r.longValue();
        synchronized (c1184g2) {
            c1184g2.a(c1492sc, longValue);
        }
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(EnumC1330m enumC1330m) {
        if (enumC1330m == EnumC1330m.f20068b) {
            this.f18866c.info("Enable activity auto tracking", new Object[0]);
            return;
        }
        PublicLogger publicLogger = this.f18866c;
        publicLogger.warning("Could not enable activity auto tracking. " + enumC1330m.f20072a, new Object[0]);
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void b(Activity activity) {
        if (this.f20670p.f18171h.a(activity, EnumC1380o.PAUSED)) {
            this.f18866c.info("Pause session", new Object[0]);
            c(activity != null ? activity.getClass().getSimpleName() : null);
            C1184g2 c1184g2 = this.f20670p.f18169f;
            synchronized (c1184g2) {
                for (C1159f2 c1159f2 : c1184g2.f19667a) {
                    if (!c1159f2.f19621d) {
                        c1159f2.f19621d = true;
                        c1159f2.f19619b.executeDelayed(c1159f2.f19622e, c1159f2.f19620c);
                    }
                }
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(Activity activity) {
        if (this.f20670p.f18171h.a(activity, EnumC1380o.RESUMED)) {
            this.f18866c.info("Resume session", new Object[0]);
            d(activity != null ? activity.getClass().getSimpleName() : null);
            C1184g2 c1184g2 = this.f20670p.f18169f;
            synchronized (c1184g2) {
                for (C1159f2 c1159f2 : c1184g2.f19667a) {
                    if (c1159f2.f19621d) {
                        c1159f2.f19621d = false;
                        c1159f2.f19619b.remove(c1159f2.f19622e);
                        C1517tc c1517tc = c1159f2.f19618a.f20592a;
                        c1517tc.f18871h.f20873c.b(c1517tc.f18865b.f19319a);
                    }
                }
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.Ua, io.appmetrica.analytics.impl.Tc
    public final void b(boolean z10) {
        this.f18866c.info("Set advIdentifiersTracking to %s", Boolean.valueOf(z10));
        this.f18865b.f19320b.setAdvIdentifiersTracking(z10);
    }

    public final void a(AppMetricaConfig appMetricaConfig, boolean z10) {
        if (z10) {
            clearAppEnvironment();
        }
        a(appMetricaConfig.appEnvironment);
        b(appMetricaConfig.errorEnvironment);
        boolean booleanValue = ((Boolean) WrapUtils.getOrDefault(appMetricaConfig.nativeCrashReporting, Boolean.TRUE)).booleanValue();
        this.f18866c.info("native crash reporting enabled: %b", Boolean.valueOf(booleanValue));
        if (booleanValue) {
            Hd hd2 = this.f20670p.f18166c;
            Context context = this.f18864a;
            hd2.f18306d = new C1605x0(this.f18865b.f19320b.getApiKey(), hd2.f18303a.f20987a.getAsString("PROCESS_CFG_PACKAGE_NAME"), CounterConfigurationReporterType.MAIN, hd2.f18303a.f20987a.getAsInteger("PROCESS_CFG_PROCESS_ID").intValue(), hd2.f18303a.f20987a.getAsString("PROCESS_CFG_PROCESS_SESSION_ID"), this.f18865b.d());
            File nativeCrashDirectory = FileUtils.getNativeCrashDirectory(context);
            C1605x0 c1605x0 = null;
            String absolutePath = nativeCrashDirectory != null ? nativeCrashDirectory.getAbsolutePath() : null;
            if (absolutePath != null) {
                NativeCrashClientModule nativeCrashClientModule = hd2.f18304b;
                C1630y0 c1630y0 = hd2.f18305c;
                C1605x0 c1605x02 = hd2.f18306d;
                if (c1605x02 == null) {
                    kotlin.jvm.internal.m.s("nativeCrashMetadata");
                } else {
                    c1605x0 = c1605x02;
                }
                c1630y0.getClass();
                nativeCrashClientModule.initHandling(context, new NativeCrashClientConfig(absolutePath, C1630y0.a(c1605x0)));
            }
        }
        C1542uc c1542uc = this.f20671q;
        synchronized (c1542uc) {
            Integer num = appMetricaConfig.anrMonitoringTimeout;
            c1542uc.f20728a = num != null ? num.intValue() : 5;
            Boolean bool = appMetricaConfig.anrMonitoring;
            if (bool == null) {
                bool = Boolean.FALSE;
            }
            if (bool.booleanValue()) {
                c1542uc.f20729b.a(c1542uc.f20728a);
            } else {
                c1542uc.f20729b.b();
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.Ua, io.appmetrica.analytics.impl.Tc
    public final void a(Location location) {
        this.f18865b.f19320b.setManualLocation(location);
        this.f18866c.info("Set location: %s", location);
    }

    @Override // io.appmetrica.analytics.impl.Ua, io.appmetrica.analytics.impl.Tc
    public final void a(boolean z10) {
        this.f18865b.f19320b.setLocationTracking(z10);
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(mo moVar) {
        PublicLogger publicLogger = this.f18866c;
        synchronized (moVar) {
            moVar.f20146b = publicLogger;
        }
        Iterator it = moVar.f20145a.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).consume(publicLogger);
        }
        moVar.f20145a.clear();
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(AnrListener anrListener) {
        this.f20671q.a(anrListener);
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(ExternalAttribution externalAttribution) {
        this.f18866c.info("External attribution received: %s", externalAttribution);
        C1598wi c1598wi = this.f18871h;
        byte[] bytes = externalAttribution.toBytes();
        PublicLogger publicLogger = this.f18866c;
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(bytes, "", 42, publicLogger);
        Gh gh = this.f18865b;
        c1598wi.getClass();
        c1598wi.a(C1598wi.a(c1136e4, gh), gh, 1, null);
    }

    @Override // io.appmetrica.analytics.impl.R2, io.appmetrica.analytics.impl.Ua, io.appmetrica.analytics.impl.Tc
    public final void a(String str, String str2) {
        super.a(str, str2);
        Hd hd2 = this.f20670p.f18166c;
        String d10 = this.f18865b.d();
        C1605x0 c1605x0 = hd2.f18306d;
        if (c1605x0 != null) {
            C1605x0 c1605x02 = new C1605x0(c1605x0.f20891a, c1605x0.f20892b, c1605x0.f20893c, c1605x0.f20894d, c1605x0.f20895e, d10);
            hd2.f18306d = c1605x02;
            NativeCrashClientModule nativeCrashClientModule = hd2.f18304b;
            hd2.f18305c.getClass();
            nativeCrashClientModule.updateAppMetricaMetadata(C1630y0.a(c1605x02));
        }
    }
}
