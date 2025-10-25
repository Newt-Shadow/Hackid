package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfo;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class K5 {

    /* renamed from: a  reason: collision with root package name */
    public static final Map f18477a;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("google", AdTrackingInfo.Provider.GOOGLE);
        hashMap.put("huawei", AdTrackingInfo.Provider.HMS);
        hashMap.put("yandex", AdTrackingInfo.Provider.YANDEX);
        f18477a = Collections.unmodifiableMap(hashMap);
    }
}
