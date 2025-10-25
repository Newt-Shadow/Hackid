package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.nh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1373nh extends Pg {

    /* renamed from: b  reason: collision with root package name */
    public final C1470rf f20216b;

    /* renamed from: c  reason: collision with root package name */
    public final Cdo f20217c;

    /* renamed from: d  reason: collision with root package name */
    public final SafePackageManager f20218d;

    /* renamed from: e  reason: collision with root package name */
    public final TimeProvider f20219e;

    public C1373nh(C1386o5 c1386o5) {
        this(c1386o5, c1386o5.t(), C1665za.j().s(), new SafePackageManager(), new SystemTimeProvider());
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        C1138e6 a10;
        C1386o5 c1386o5 = this.f18787a;
        if (!this.f20217c.d()) {
            if (((C1323lh) c1386o5.f20263k.a()).f20038e) {
                a10 = C1138e6.a(c1138e6, EnumC1367nb.EVENT_TYPE_APP_UPDATE);
            } else {
                a10 = C1138e6.a(c1138e6, EnumC1367nb.EVENT_TYPE_INIT);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appInstaller", (String) WrapUtils.getOrDefault(this.f20218d.getInstallerPackageName(c1386o5.f20253a, c1386o5.f20254b.f19716a), ""));
                C1470rf c1470rf = this.f20216b;
                c1470rf.f19286h.a(c1470rf.f19279a);
                jSONObject.put("preloadInfo", ((C1396of) c1470rf.c()).b());
            } catch (Throwable unused) {
            }
            a10.setValue(jSONObject.toString());
            C1564v9 c1564v9 = c1386o5.f20266n;
            c1564v9.a(a10, Ek.a(c1564v9.f20782c.b(a10), a10.f19579i));
            Cdo cdo = this.f20217c;
            synchronized (cdo) {
                eo eoVar = cdo.f19546a;
                eoVar.a(eoVar.a().put("init_event_done", true));
            }
            this.f20217c.a(this.f20219e.currentTimeMillis());
            return false;
        }
        return false;
    }

    public C1373nh(C1386o5 c1386o5, Cdo cdo, C1470rf c1470rf, SafePackageManager safePackageManager, SystemTimeProvider systemTimeProvider) {
        super(c1386o5);
        this.f20217c = cdo;
        this.f20216b = c1470rf;
        this.f20218d = safePackageManager;
        this.f20219e = systemTimeProvider;
    }
}
