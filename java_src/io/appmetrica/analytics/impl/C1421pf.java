package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.pf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1421pf implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final C1371nf f20385a = new C1371nf();

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1271jf fromModel(C1396of c1396of) {
        C1271jf c1271jf = new C1271jf();
        if (!TextUtils.isEmpty(c1396of.f20298a)) {
            c1271jf.f19855a = c1396of.f20298a;
        }
        c1271jf.f19856b = c1396of.f20299b.toString();
        c1271jf.f19857c = c1396of.f20300c;
        c1271jf.f19858d = c1396of.f20301d;
        c1271jf.f19859e = this.f20385a.fromModel(c1396of.f20302e).intValue();
        return c1271jf;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1396of toModel(C1271jf c1271jf) {
        JSONObject jSONObject;
        String str = c1271jf.f19855a;
        String str2 = c1271jf.f19856b;
        if (!TextUtils.isEmpty(str2)) {
            try {
                jSONObject = new JSONObject(str2);
            } catch (Throwable unused) {
            }
            return new C1396of(str, jSONObject, c1271jf.f19857c, c1271jf.f19858d, this.f20385a.toModel(Integer.valueOf(c1271jf.f19859e)));
        }
        jSONObject = new JSONObject();
        return new C1396of(str, jSONObject, c1271jf.f19857c, c1271jf.f19858d, this.f20385a.toModel(Integer.valueOf(c1271jf.f19859e)));
    }
}
