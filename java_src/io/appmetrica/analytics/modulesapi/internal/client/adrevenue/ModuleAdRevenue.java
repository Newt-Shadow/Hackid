package io.appmetrica.analytics.modulesapi.internal.client.adrevenue;

import java.math.BigDecimal;
import java.util.Currency;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class ModuleAdRevenue {

    /* renamed from: a  reason: collision with root package name */
    private final BigDecimal f21172a;

    /* renamed from: b  reason: collision with root package name */
    private final Currency f21173b;

    /* renamed from: c  reason: collision with root package name */
    private final ModuleAdType f21174c;

    /* renamed from: d  reason: collision with root package name */
    private final String f21175d;

    /* renamed from: e  reason: collision with root package name */
    private final String f21176e;

    /* renamed from: f  reason: collision with root package name */
    private final String f21177f;

    /* renamed from: g  reason: collision with root package name */
    private final String f21178g;

    /* renamed from: h  reason: collision with root package name */
    private final String f21179h;

    /* renamed from: i  reason: collision with root package name */
    private final String f21180i;

    /* renamed from: j  reason: collision with root package name */
    private final Map f21181j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f21182k;

    public ModuleAdRevenue(BigDecimal bigDecimal, Currency currency, ModuleAdType moduleAdType, String str, String str2, String str3, String str4, String str5, String str6, Map<String, String> map, boolean z10) {
        this.f21172a = bigDecimal;
        this.f21173b = currency;
        this.f21174c = moduleAdType;
        this.f21175d = str;
        this.f21176e = str2;
        this.f21177f = str3;
        this.f21178g = str4;
        this.f21179h = str5;
        this.f21180i = str6;
        this.f21181j = map;
        this.f21182k = z10;
    }

    public final String getAdNetwork() {
        return this.f21175d;
    }

    public final String getAdPlacementId() {
        return this.f21178g;
    }

    public final String getAdPlacementName() {
        return this.f21179h;
    }

    public final BigDecimal getAdRevenue() {
        return this.f21172a;
    }

    public final ModuleAdType getAdType() {
        return this.f21174c;
    }

    public final String getAdUnitId() {
        return this.f21176e;
    }

    public final String getAdUnitName() {
        return this.f21177f;
    }

    public final boolean getAutoCollected() {
        return this.f21182k;
    }

    public final Currency getCurrency() {
        return this.f21173b;
    }

    public final Map<String, String> getPayload() {
        return this.f21181j;
    }

    public final String getPrecision() {
        return this.f21180i;
    }

    public /* synthetic */ ModuleAdRevenue(BigDecimal bigDecimal, Currency currency, ModuleAdType moduleAdType, String str, String str2, String str3, String str4, String str5, String str6, Map map, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(bigDecimal, currency, (i10 & 4) != 0 ? null : moduleAdType, (i10 & 8) != 0 ? null : str, (i10 & 16) != 0 ? null : str2, (i10 & 32) != 0 ? null : str3, (i10 & 64) != 0 ? null : str4, (i10 & 128) != 0 ? null : str5, (i10 & 256) != 0 ? null : str6, (i10 & 512) != 0 ? null : map, (i10 & 1024) != 0 ? true : z10);
    }
}
