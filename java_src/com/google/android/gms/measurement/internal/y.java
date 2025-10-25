package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.EnumMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
public final class y {

    /* renamed from: f  reason: collision with root package name */
    public static final y f8261f = new y((Boolean) null, 100, (Boolean) null, (String) null);

    /* renamed from: a  reason: collision with root package name */
    private final int f8262a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8263b;

    /* renamed from: c  reason: collision with root package name */
    private final Boolean f8264c;

    /* renamed from: d  reason: collision with root package name */
    private final String f8265d;

    /* renamed from: e  reason: collision with root package name */
    private final EnumMap f8266e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(Boolean bool, int i10, Boolean bool2, String str) {
        EnumMap enumMap = new EnumMap(i6.s.class);
        this.f8266e = enumMap;
        enumMap.put((EnumMap) i6.s.AD_USER_DATA, (i6.s) d8.h(bool));
        this.f8262a = i10;
        this.f8263b = l();
        this.f8264c = bool2;
        this.f8265d = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y a(i6.r rVar, int i10) {
        EnumMap enumMap = new EnumMap(i6.s.class);
        enumMap.put((EnumMap) i6.s.AD_USER_DATA, (i6.s) rVar);
        return new y(enumMap, -10, (Boolean) null, (String) null);
    }

    public static y g(String str) {
        if (str != null && str.length() > 0) {
            String[] split = str.split(":");
            int parseInt = Integer.parseInt(split[0]);
            EnumMap enumMap = new EnumMap(i6.s.class);
            i6.s[] a10 = c8.DMA.a();
            int length = a10.length;
            int i10 = 1;
            int i11 = 0;
            while (i11 < length) {
                enumMap.put((EnumMap) a10[i11], (i6.s) d8.j(split[i10].charAt(0)));
                i11++;
                i10++;
            }
            return new y(enumMap, parseInt, (Boolean) null, (String) null);
        }
        return f8261f;
    }

    public static y h(Bundle bundle, int i10) {
        i6.s[] a10;
        Boolean bool = null;
        if (bundle == null) {
            return new y((Boolean) null, i10, (Boolean) null, (String) null);
        }
        EnumMap enumMap = new EnumMap(i6.s.class);
        for (i6.s sVar : c8.DMA.a()) {
            enumMap.put((EnumMap) sVar, (i6.s) d8.g(bundle.getString(sVar.f17311a)));
        }
        if (bundle.containsKey("is_dma_region")) {
            bool = Boolean.valueOf(bundle.getString("is_dma_region"));
        }
        return new y(enumMap, i10, bool, bundle.getString("cps_display_str"));
    }

    public static Boolean i(Bundle bundle) {
        i6.r g10;
        if (bundle != null && (g10 = d8.g(bundle.getString("ad_personalization"))) != null) {
            int ordinal = g10.ordinal();
            if (ordinal != 2) {
                if (ordinal == 3) {
                    return Boolean.TRUE;
                }
                return null;
            }
            return Boolean.FALSE;
        }
        return null;
    }

    private final String l() {
        i6.s[] a10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f8262a);
        for (i6.s sVar : c8.DMA.a()) {
            sb2.append(":");
            sb2.append(d8.m((i6.r) this.f8266e.get(sVar)));
        }
        return sb2.toString();
    }

    public final int b() {
        return this.f8262a;
    }

    public final i6.r c() {
        i6.r rVar = (i6.r) this.f8266e.get(i6.s.AD_USER_DATA);
        if (rVar == null) {
            return i6.r.UNINITIALIZED;
        }
        return rVar;
    }

    public final boolean d() {
        for (i6.r rVar : this.f8266e.values()) {
            if (rVar != i6.r.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }

    public final String e() {
        return this.f8263b;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof y) {
            y yVar = (y) obj;
            if (this.f8263b.equalsIgnoreCase(yVar.f8263b) && Objects.equals(this.f8264c, yVar.f8264c)) {
                return Objects.equals(this.f8265d, yVar.f8265d);
            }
            return false;
        }
        return false;
    }

    public final Bundle f() {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : this.f8266e.entrySet()) {
            String i10 = d8.i((i6.r) entry.getValue());
            if (i10 != null) {
                bundle.putString(((i6.s) entry.getKey()).f17311a, i10);
            }
        }
        Boolean bool = this.f8264c;
        if (bool != null) {
            bundle.putString("is_dma_region", bool.toString());
        }
        String str = this.f8265d;
        if (str != null) {
            bundle.putString("cps_display_str", str);
        }
        return bundle;
    }

    public final int hashCode() {
        int i10;
        int hashCode;
        Boolean bool = this.f8264c;
        if (bool == null) {
            i10 = 3;
        } else if (true != bool.booleanValue()) {
            i10 = 13;
        } else {
            i10 = 7;
        }
        String str = this.f8265d;
        if (str == null) {
            hashCode = 17;
        } else {
            hashCode = str.hashCode();
        }
        return this.f8263b.hashCode() + (i10 * 29) + (hashCode * 137);
    }

    public final Boolean j() {
        return this.f8264c;
    }

    public final String k() {
        return this.f8265d;
    }

    public final String toString() {
        i6.s[] a10;
        StringBuilder sb2 = new StringBuilder("source=");
        sb2.append(d8.d(this.f8262a));
        for (i6.s sVar : c8.DMA.a()) {
            sb2.append(StringUtils.COMMA);
            sb2.append(sVar.f17311a);
            sb2.append("=");
            i6.r rVar = (i6.r) this.f8266e.get(sVar);
            if (rVar == null) {
                sb2.append("uninitialized");
            } else {
                int ordinal = rVar.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            if (ordinal == 3) {
                                sb2.append("granted");
                            }
                        } else {
                            sb2.append("denied");
                        }
                    } else {
                        sb2.append("eu_consent_policy");
                    }
                } else {
                    sb2.append("uninitialized");
                }
            }
        }
        Boolean bool = this.f8264c;
        if (bool != null) {
            sb2.append(",isDmaRegion=");
            sb2.append(bool);
        }
        String str = this.f8265d;
        if (str != null) {
            sb2.append(",cpsDisplayStr=");
            sb2.append(str);
        }
        return sb2.toString();
    }

    private y(EnumMap enumMap, int i10, Boolean bool, String str) {
        EnumMap enumMap2 = new EnumMap(i6.s.class);
        this.f8266e = enumMap2;
        enumMap2.putAll(enumMap);
        this.f8262a = i10;
        this.f8263b = l();
        this.f8264c = bool;
        this.f8265d = str;
    }
}
