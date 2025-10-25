package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0837rl;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.ol  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0765ol implements Ik {

    /* renamed from: a  reason: collision with root package name */
    private final List<C0837rl> f13094a;

    public C0765ol(List<C0837rl> list) {
        this.f13094a = list;
    }

    @Override // com.yandex.metrica.impl.ob.Ik
    public Object a(C0491dl c0491dl, C0591hl c0591hl, Ak ak, int i10) {
        JSONArray jSONArray = new JSONArray();
        if (this.f13094a.isEmpty()) {
            return jSONArray;
        }
        for (C0837rl c0837rl : this.f13094a) {
            C0837rl.b a10 = c0837rl.a(ak);
            int i11 = 0;
            if ((c0591hl.f12563f || c0837rl.a()) && (a10 == null || !c0591hl.f12566i)) {
                JSONObject a11 = c0837rl.a(c0591hl, a10);
                int length = a11.toString().getBytes().length + 1;
                int length2 = jSONArray.length();
                if (i10 + length <= c0591hl.f12571n && length2 < c0591hl.f12570m) {
                    jSONArray.put(a11);
                    i11 = length;
                }
            }
            i10 += i11;
        }
        return jSONArray;
    }
}
