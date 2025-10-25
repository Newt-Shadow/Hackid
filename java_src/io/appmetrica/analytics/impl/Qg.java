package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.HashMap;
import java.util.Set;
/* loaded from: classes2.dex */
public final class Qg implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Ug f18823a;

    public Qg(Ug ug) {
        this.f18823a = ug;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Consumer
    public final void consume(Object obj) {
        C1566vb c1566vb = (C1566vb) obj;
        Ug ug = this.f18823a;
        String str = c1566vb.f20800h;
        String str2 = c1566vb.f20797e;
        Integer num = c1566vb.f20798f;
        String str3 = c1566vb.f20799g;
        C1211h4 c1211h4 = new C1211h4(str, str2, num, str3, c1566vb.f20801i);
        String str4 = c1566vb.f20794b;
        byte[] bArr = c1566vb.f20793a;
        int i10 = c1566vb.f20795c;
        HashMap hashMap = c1566vb.f20796d;
        String str5 = c1566vb.f20802j;
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(str);
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4(bArr, str4, 5889, orCreatePublicLogger);
        c1136e4.f19562q = hashMap;
        c1136e4.f19577g = i10;
        c1136e4.f19573c = str5;
        G4 g42 = new G4(new Kl(), new F4(), null);
        ug.f19064c.a(c1211h4, g42).a(c1136e4, g42);
        ug.f19064c.a(num.intValue(), str2, str3);
    }
}
