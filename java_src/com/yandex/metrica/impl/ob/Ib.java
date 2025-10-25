package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0875tb;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class Ib {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, C0875tb.a> f10227a;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("google", C0875tb.a.GOOGLE);
        hashMap.put("huawei", C0875tb.a.HMS);
        hashMap.put("yandex", C0875tb.a.YANDEX);
        f10227a = Collections.unmodifiableMap(hashMap);
    }
}
