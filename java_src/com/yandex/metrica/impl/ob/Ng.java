package com.yandex.metrica.impl.ob;

import android.net.Uri;
import com.yandex.metrica.networktasks.api.IParamsAppender;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
/* loaded from: classes2.dex */
public class Ng implements IParamsAppender {
    @Override // com.yandex.metrica.networktasks.api.IParamsAppender
    /* renamed from: a */
    public void appendParams(Uri.Builder builder, C1019zb c1019zb) {
        a(builder, CommonUrlParts.ADV_ID, CommonUrlParts.LIMIT_AD_TRACKING, c1019zb.a().f13685a);
        a(builder, CommonUrlParts.HUAWEI_OAID, CommonUrlParts.HUAWEI_OAID_LIMIT_TRACKING, c1019zb.b().f13685a);
        a(builder, CommonUrlParts.YANDEX_ADV_ID, CommonUrlParts.YANDEX_ADV_ID_LIMIT_TRACKING, c1019zb.c().f13685a);
    }

    private void a(Uri.Builder builder, String str, String str2, C0875tb c0875tb) {
        String str3 = "";
        if (c0875tb == null) {
            builder.appendQueryParameter(str, "");
            builder.appendQueryParameter(str2, "");
            return;
        }
        String str4 = c0875tb.f13629b;
        if (str4 == null) {
            str4 = "";
        }
        builder.appendQueryParameter(str, str4);
        Boolean bool = c0875tb.f13630c;
        if (bool != null) {
            str3 = bool.booleanValue() ? "1" : CommonUrlParts.Values.FALSE_INTEGER;
        }
        builder.appendQueryParameter(str2, str3);
    }
}
