package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.HashMap;
import java.util.Set;
/* renamed from: io.appmetrica.analytics.impl.yn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1653yn {

    /* renamed from: a  reason: collision with root package name */
    public final C1616xb f20999a;

    public C1653yn() {
        this(new C1616xb());
    }

    public final C1597wh a(C1603wn c1603wn, Gh gh) {
        String str;
        String str2;
        C1354mn c1354mn = c1603wn.f20880a;
        if (c1354mn == null) {
            str = "";
        } else {
            str = (String) WrapUtils.getOrDefault(c1354mn.f20140a, "");
        }
        byte[] fromModel = this.f20999a.fromModel(c1603wn);
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(gh.f19320b.getApiKey());
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(fromModel, str, 5891, orCreatePublicLogger);
        c1136e4.f19573c = gh.d();
        HashMap hashMap = c1136e4.f19562q;
        C1645yf c1645yf = new C1645yf(gh.f19319a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(gh.f19320b);
        synchronized (gh) {
            str2 = gh.f18274f;
        }
        return new C1597wh(c1136e4, true, 1, hashMap, new Gh(c1645yf, counterConfiguration, str2));
    }

    public C1653yn(C1616xb c1616xb) {
        this.f20999a = c1616xb;
    }
}
