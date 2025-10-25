package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.networktasks.internal.NetworkResponseHandler;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.apache.tika.metadata.HttpHeaders;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Cl implements NetworkResponseHandler {

    /* renamed from: a  reason: collision with root package name */
    public final Jl f18064a;

    /* renamed from: b  reason: collision with root package name */
    public final C1359n3 f18065b;

    public Cl() {
        this(new Jl(), new C1359n3());
    }

    @Override // io.appmetrica.analytics.networktasks.internal.NetworkResponseHandler
    /* renamed from: a */
    public final Ol handle(ResponseDataHolder responseDataHolder) {
        List list;
        String str;
        String str2;
        if (200 == responseDataHolder.getResponseCode()) {
            byte[] responseData = responseDataHolder.getResponseData();
            Map<String, List<String>> responseHeaders = responseDataHolder.getResponseHeaders();
            if (responseHeaders != null) {
                list = (List) CollectionUtils.getFromMapIgnoreCase(responseHeaders, HttpHeaders.CONTENT_ENCODING);
            } else {
                list = null;
            }
            if (!Rn.a((Collection) list) && "encrypted".equals(list.get(0))) {
                responseData = this.f18065b.a(responseDataHolder.getResponseData());
            }
            if (responseData != null) {
                Jl jl = this.f18064a;
                jl.getClass();
                Ol ol = new Ol();
                int i10 = 1;
                try {
                    jl.f18462i.getClass();
                    C1466rb c1466rb = new C1466rb(new String(responseData, "UTF-8"));
                    JSONObject optJSONObject = c1466rb.optJSONObject("device_id");
                    if (optJSONObject != null) {
                        str = optJSONObject.optString("hash");
                        str2 = optJSONObject.optString("value");
                    } else {
                        str = "";
                        str2 = "";
                    }
                    ol.f18723h = str2;
                    ol.f18724i = str;
                    jl.a(ol, c1466rb);
                    if (!TextUtils.isEmpty(ol.f18724i)) {
                        i10 = 2;
                    }
                    ol.f18716a = i10;
                } catch (Throwable unused) {
                    ol = new Ol();
                    ol.f18716a = 1;
                }
                if (2 == ol.f18716a) {
                    return ol;
                }
            }
        }
        return null;
    }

    public Cl(Jl jl, C1359n3 c1359n3) {
        this.f18064a = jl;
        this.f18065b = c1359n3;
    }
}
