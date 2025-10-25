package com.yandex.metrica.impl.ob;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.dl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0491dl {

    /* renamed from: a  reason: collision with root package name */
    private Pk f12259a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Rk rk, View view, Hk hk) {
        Pk b10 = rk.b(null, view, 0);
        this.f12259a = b10;
        if (b10 != null) {
            a(rk, b10, view, 1, hk);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject a(C0591hl c0591hl, Ak ak, int i10) {
        Pk pk = this.f12259a;
        JSONObject jSONObject = pk != null ? pk.a(c0591hl, ak, i10, 0).f11119c : null;
        return jSONObject == null ? new JSONObject() : jSONObject;
    }

    private void a(Rk rk, Pk pk, View view, int i10, Hk hk) {
        ArrayList arrayList = (ArrayList) rk.a(view, i10);
        if (arrayList.size() == 0) {
            hk.a(pk.a());
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            View view2 = (View) it.next();
            Pk b10 = rk.b(pk.a(), view2, i10);
            if (b10 != null) {
                pk.a(b10);
                a(rk, b10, view2, i10 + 1, hk);
            }
        }
    }
}
