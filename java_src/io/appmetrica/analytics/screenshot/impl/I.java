package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.coreutils.internal.parsing.RemoteConfigJsonUtils;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class I implements JsonParser {

    /* renamed from: a  reason: collision with root package name */
    public final V f21373a;

    /* renamed from: b  reason: collision with root package name */
    public final U f21374b;

    public I() {
        this(null, null, 3, null);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    /* renamed from: a */
    public final G parse(JSONObject jSONObject) {
        K k10;
        M m10;
        N n10;
        od.c k11;
        int r10;
        boolean extractFeature = RemoteConfigJsonUtils.extractFeature(jSONObject, "screenshot", AbstractC1692n.f21447a);
        V v10 = this.f21373a;
        U u10 = this.f21374b;
        u10.getClass();
        JSONObject optJSONObject = jSONObject.optJSONObject("screenshot");
        if (optJSONObject == null) {
            n10 = new N();
            n10.f21386a = new K();
            n10.f21387b = new M();
            L l10 = new L();
            l10.f21381c = AbstractC1692n.f21448b;
            n10.f21388c = l10;
        } else {
            N n11 = new N();
            u10.f21396a.getClass();
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("api_captor_config");
            L l11 = null;
            if (optJSONObject2 == null) {
                k10 = null;
            } else {
                k10 = new K();
                Boolean optBooleanOrNull = JsonUtils.optBooleanOrNull(optJSONObject2, "enabled");
                if (optBooleanOrNull != null) {
                    k10.f21377a = optBooleanOrNull.booleanValue();
                }
            }
            if (k10 != null) {
                n11.f21386a = k10;
            }
            u10.f21397b.getClass();
            JSONObject optJSONObject3 = optJSONObject.optJSONObject("service_captor_config");
            if (optJSONObject3 == null) {
                m10 = null;
            } else {
                m10 = new M();
                Boolean optBooleanOrNull2 = JsonUtils.optBooleanOrNull(optJSONObject3, "enabled");
                if (optBooleanOrNull2 != null) {
                    m10.f21383a = optBooleanOrNull2.booleanValue();
                }
                Long optLongOrNull = JsonUtils.optLongOrNull(optJSONObject3, "delay_seconds");
                if (optLongOrNull != null) {
                    m10.f21384b = optLongOrNull.longValue();
                }
            }
            if (m10 != null) {
                n11.f21387b = m10;
            }
            u10.f21398c.getClass();
            JSONObject optJSONObject4 = optJSONObject.optJSONObject("content_observer_captor_config");
            if (optJSONObject4 != null) {
                l11 = new L();
                Boolean optBooleanOrNull3 = JsonUtils.optBooleanOrNull(optJSONObject4, "enabled");
                if (optBooleanOrNull3 != null) {
                    l11.f21379a = optBooleanOrNull3.booleanValue();
                }
                JSONArray optJSONArray = optJSONObject4.optJSONArray("media_store_column_names");
                if (optJSONArray != null) {
                    k11 = od.i.k(0, optJSONArray.length());
                    r10 = yc.p.r(k11, 10);
                    ArrayList arrayList = new ArrayList(r10);
                    Iterator it = k11.iterator();
                    while (it.hasNext()) {
                        arrayList.add(optJSONArray.getString(((yc.b0) it).b()));
                    }
                    Object[] array = arrayList.toArray(new String[0]);
                    if (array != null) {
                        l11.f21381c = (String[]) array;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    }
                }
                Long optLongOrNull2 = JsonUtils.optLongOrNull(optJSONObject4, "detect_window_seconds");
                if (optLongOrNull2 != null) {
                    l11.f21380b = optLongOrNull2.longValue();
                }
            }
            if (l11 != null) {
                n11.f21388c = l11;
            }
            n10 = n11;
        }
        return new G(extractFeature, v10.toModel(n10));
    }

    public final G b(JSONObject jSONObject) {
        return (G) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    public final Object parseOrNull(JSONObject jSONObject) {
        return (G) JsonParser.DefaultImpls.parseOrNull(this, jSONObject);
    }

    public I(V v10, U u10) {
        this.f21373a = v10;
        this.f21374b = u10;
    }

    public /* synthetic */ I(V v10, U u10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new V(null, null, null, 7, null) : v10, (i10 & 2) != 0 ? new U() : u10);
    }
}
