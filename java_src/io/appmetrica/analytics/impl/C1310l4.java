package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsHolder;
import io.appmetrica.analytics.internal.IdentifiersResult;
import java.util.HashMap;
/* renamed from: io.appmetrica.analytics.impl.l4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1310l4 {

    /* renamed from: a  reason: collision with root package name */
    public final C1353mm f20007a;

    /* renamed from: b  reason: collision with root package name */
    public final O f20008b;

    public C1310l4(C1353mm c1353mm, O o10) {
        this.f20007a = c1353mm;
        this.f20008b = o10;
    }

    public final C1285k4 a(HashMap hashMap) {
        AdvertisingIdsHolder a10;
        String str;
        String str2;
        String str3;
        Ql e10 = this.f20007a.e();
        O o10 = this.f20008b;
        synchronized (o10) {
            a10 = o10.a(new Wd());
        }
        IdentifiersResult a11 = C1285k4.a(e10.f18831d);
        IdentifiersResult a12 = C1285k4.a(e10.f18828a);
        IdentifiersResult a13 = C1285k4.a(e10.f18829b);
        IdentifiersResult a14 = C1285k4.a(e10.f18837j);
        IdentifiersResult a15 = C1285k4.a(e10.f18836i);
        IdentifiersResult a16 = C1285k4.a(AbstractC1491sb.a(AbstractC1477rm.a(e10.f18838k)));
        IdentifiersResult a17 = C1285k4.a(AbstractC1491sb.a(hashMap));
        if (a10.getGoogle().mAdTrackingInfo == null) {
            str = null;
        } else {
            str = a10.getGoogle().mAdTrackingInfo.advId;
        }
        IdentifiersResult identifiersResult = new IdentifiersResult(str, a10.getGoogle().mStatus, a10.getGoogle().mErrorExplanation);
        if (a10.getHuawei().mAdTrackingInfo == null) {
            str2 = null;
        } else {
            str2 = a10.getHuawei().mAdTrackingInfo.advId;
        }
        IdentifiersResult identifiersResult2 = new IdentifiersResult(str2, a10.getHuawei().mStatus, a10.getHuawei().mErrorExplanation);
        if (a10.getYandex().mAdTrackingInfo == null) {
            str3 = null;
        } else {
            str3 = a10.getYandex().mAdTrackingInfo.advId;
        }
        return new C1285k4(a11, a12, a13, a14, a15, a16, a17, identifiersResult, identifiersResult2, new IdentifiersResult(str3, a10.getYandex().mStatus, a10.getYandex().mErrorExplanation), C1285k4.a(AbstractC1491sb.a(e10.f18835h)), AbstractC1404on.a(), e10.f18842o + e10.A.f20316a, C1285k4.a(e10.f18841n.f18039f), new Bundle());
    }
}
