package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Cf;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.fe  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0534fe implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final C0484de f12414a = new C0484de();

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Cf.a fromModel(C0509ee c0509ee) {
        Cf.a aVar = new Cf.a();
        if (!TextUtils.isEmpty(c0509ee.f12323a)) {
            aVar.f9846a = c0509ee.f12323a;
        }
        aVar.f9847b = c0509ee.f12324b.toString();
        aVar.f9848c = c0509ee.f12325c;
        aVar.f9849d = c0509ee.f12326d;
        aVar.f9850e = this.f12414a.fromModel(c0509ee.f12327e).intValue();
        return aVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0509ee toModel(Cf.a aVar) {
        JSONObject jSONObject;
        String str = aVar.f9846a;
        String str2 = aVar.f9847b;
        if (!TextUtils.isEmpty(str2)) {
            try {
                jSONObject = new JSONObject(str2);
            } catch (Throwable unused) {
            }
            return new C0509ee(str, jSONObject, aVar.f9848c, aVar.f9849d, this.f12414a.toModel(Integer.valueOf(aVar.f9850e)));
        }
        jSONObject = new JSONObject();
        return new C0509ee(str, jSONObject, aVar.f9848c, aVar.f9849d, this.f12414a.toModel(Integer.valueOf(aVar.f9850e)));
    }
}
