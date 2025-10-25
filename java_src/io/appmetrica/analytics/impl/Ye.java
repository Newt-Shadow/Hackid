package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Ye implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    public final C1371nf f19294a;

    public Ye() {
        this(new C1371nf());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1296kf fromModel(C1047af c1047af) {
        C1296kf c1296kf = new C1296kf();
        if (!TextUtils.isEmpty(c1047af.f19381a)) {
            c1296kf.f19969a = c1047af.f19381a;
        }
        c1296kf.f19970b = c1047af.f19382b.toString();
        c1296kf.f19971c = this.f19294a.fromModel(c1047af.f19383c).intValue();
        return c1296kf;
    }

    public Ye(C1371nf c1371nf) {
        this.f19294a = c1371nf;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1047af toModel(C1296kf c1296kf) {
        JSONObject jSONObject;
        String str = c1296kf.f19969a;
        String str2 = c1296kf.f19970b;
        if (!TextUtils.isEmpty(str2)) {
            try {
                jSONObject = new JSONObject(str2);
            } catch (Throwable unused) {
            }
            return new C1047af(str, jSONObject, this.f19294a.toModel(Integer.valueOf(c1296kf.f19971c)));
        }
        jSONObject = new JSONObject();
        return new C1047af(str, jSONObject, this.f19294a.toModel(Integer.valueOf(c1296kf.f19971c)));
    }
}
