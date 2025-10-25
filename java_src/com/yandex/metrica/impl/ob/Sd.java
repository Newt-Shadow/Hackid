package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Cf;
import com.yandex.metrica.impl.ob.Ud;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Sd implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final C0484de f11273a;

    public Sd() {
        this(new C0484de());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Cf.b fromModel(Ud.a aVar) {
        Cf.b bVar = new Cf.b();
        if (!TextUtils.isEmpty(aVar.f11505a)) {
            bVar.f9852a = aVar.f11505a;
        }
        bVar.f9853b = aVar.f11506b.toString();
        bVar.f9854c = this.f11273a.fromModel(aVar.f11507c).intValue();
        return bVar;
    }

    Sd(C0484de c0484de) {
        this.f11273a = c0484de;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Ud.a toModel(Cf.b bVar) {
        JSONObject jSONObject;
        String str = bVar.f9852a;
        String str2 = bVar.f9853b;
        if (!TextUtils.isEmpty(str2)) {
            try {
                jSONObject = new JSONObject(str2);
            } catch (Throwable unused) {
            }
            return new Ud.a(str, jSONObject, this.f11273a.toModel(Integer.valueOf(bVar.f9854c)));
        }
        jSONObject = new JSONObject();
        return new Ud.a(str, jSONObject, this.f11273a.toModel(Integer.valueOf(bVar.f9854c)));
    }
}
