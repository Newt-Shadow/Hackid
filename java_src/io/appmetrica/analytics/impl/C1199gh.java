package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.gh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1199gh extends BaseRequestConfig.BaseRequestArguments {

    /* renamed from: a  reason: collision with root package name */
    public final String f19677a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f19678b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f19679c;

    /* renamed from: d  reason: collision with root package name */
    public final int f19680d;

    /* renamed from: e  reason: collision with root package name */
    public final int f19681e;

    /* renamed from: f  reason: collision with root package name */
    public final int f19682f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f19683g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f19684h;

    /* renamed from: i  reason: collision with root package name */
    public final Map<String, String> f19685i;

    /* renamed from: j  reason: collision with root package name */
    public final int f19686j;

    public C1199gh(F4 f42) {
        this(f42.f18199a, f42.f18200b, f42.f18202d, f42.f18203e, f42.f18204f, f42.f18205g, f42.f18206h, f42.f18207i, f42.f18208j, f42.f18209k);
    }

    public static C1199gh a() {
        return new C1199gh(null, null, null, null, null, null, null, null, null, null);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ArgumentsMerger
    /* renamed from: b */
    public final C1199gh mergeFrom(F4 f42) {
        return new C1199gh((String) WrapUtils.getOrDefaultNullable(f42.f18199a, this.f19677a), (Boolean) WrapUtils.getOrDefaultNullable(f42.f18200b, Boolean.valueOf(this.f19678b)), (Boolean) WrapUtils.getOrDefaultNullable(f42.f18202d, Boolean.valueOf(this.f19679c)), (Integer) WrapUtils.getOrDefaultNullable(f42.f18203e, Integer.valueOf(this.f19680d)), (Integer) WrapUtils.getOrDefaultNullable(f42.f18204f, Integer.valueOf(this.f19681e)), (Integer) WrapUtils.getOrDefaultNullable(f42.f18205g, Integer.valueOf(this.f19682f)), (Boolean) WrapUtils.getOrDefaultNullable(f42.f18206h, Boolean.valueOf(this.f19683g)), (Boolean) WrapUtils.getOrDefaultNullable(f42.f18207i, Boolean.valueOf(this.f19684h)), (Map) WrapUtils.getOrDefaultNullable(f42.f18208j, this.f19685i), (Integer) WrapUtils.getOrDefaultNullable(f42.f18209k, Integer.valueOf(this.f19686j)));
    }

    public C1199gh(String str, Boolean bool, Boolean bool2, Integer num, Integer num2, Integer num3, Boolean bool3, Boolean bool4, Map map, Integer num4) {
        this.f19677a = str;
        Boolean bool5 = Boolean.FALSE;
        this.f19678b = ((Boolean) WrapUtils.getOrDefault(bool, bool5)).booleanValue();
        this.f19679c = ((Boolean) WrapUtils.getOrDefault(bool2, bool5)).booleanValue();
        this.f19680d = Math.max(10, ((Integer) WrapUtils.getOrDefault(num, 10)).intValue());
        this.f19681e = ((Integer) WrapUtils.getOrDefault(num2, 7)).intValue();
        this.f19682f = ((Integer) WrapUtils.getOrDefault(num3, 90)).intValue();
        this.f19683g = ((Boolean) WrapUtils.getOrDefault(bool3, bool5)).booleanValue();
        this.f19684h = ((Boolean) WrapUtils.getOrDefault(bool4, Boolean.TRUE)).booleanValue();
        this.f19685i = map;
        this.f19686j = ((Integer) WrapUtils.getOrDefault(num4, 1000)).intValue();
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ArgumentsMerger
    /* renamed from: a */
    public final boolean compareWithOtherArguments(F4 f42) {
        Map<String, String> map;
        String str;
        Boolean bool = f42.f18200b;
        if (bool == null || this.f19678b == bool.booleanValue()) {
            Boolean bool2 = f42.f18202d;
            if (bool2 == null || this.f19679c == bool2.booleanValue()) {
                Integer num = f42.f18203e;
                if (num == null || this.f19680d == num.intValue()) {
                    Integer num2 = f42.f18204f;
                    if (num2 == null || this.f19681e == num2.intValue()) {
                        Integer num3 = f42.f18205g;
                        if (num3 == null || this.f19682f == num3.intValue()) {
                            Boolean bool3 = f42.f18206h;
                            if (bool3 == null || this.f19683g == bool3.booleanValue()) {
                                Boolean bool4 = f42.f18207i;
                                if (bool4 == null || this.f19684h == bool4.booleanValue()) {
                                    String str2 = f42.f18199a;
                                    if (str2 == null || ((str = this.f19677a) != null && str.equals(str2))) {
                                        Map<String, String> map2 = f42.f18208j;
                                        if (map2 == null || ((map = this.f19685i) != null && map.equals(map2))) {
                                            Integer num4 = f42.f18209k;
                                            return num4 == null || this.f19686j == num4.intValue();
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
