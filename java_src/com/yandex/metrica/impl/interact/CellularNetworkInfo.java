package com.yandex.metrica.impl.interact;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C0907uj;
import com.yandex.metrica.impl.ob.InterfaceC0415ak;
import com.yandex.metrica.impl.ob.P;
import com.yandex.metrica.impl.ob.Xj;
import com.yandex.metrica.impl.ob.Zj;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class CellularNetworkInfo {

    /* renamed from: a  reason: collision with root package name */
    private String f9683a = "";

    /* loaded from: classes2.dex */
    class a implements InterfaceC0415ak {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0415ak
        public void a(Zj zj) {
            String str;
            String str2;
            String str3;
            String str4;
            C0907uj b10 = zj.b();
            if (b10 != null) {
                String m10 = b10.m();
                String n10 = b10.n();
                Integer l10 = b10.l();
                Integer k10 = b10.k();
                Integer b11 = b10.b();
                Integer e10 = b10.e();
                Integer p10 = b10.p();
                HashMap hashMap = new HashMap();
                hashMap.put("network_type", m10);
                hashMap.put("operator_name", n10);
                String str5 = null;
                if (k10 != null) {
                    str = String.valueOf(k10);
                } else {
                    str = null;
                }
                hashMap.put("country_code", str);
                if (l10 != null) {
                    str2 = String.valueOf(l10);
                } else {
                    str2 = null;
                }
                hashMap.put("operator_id", str2);
                if (b11 != null) {
                    str3 = String.valueOf(b11);
                } else {
                    str3 = null;
                }
                hashMap.put("cell_id", str3);
                if (e10 != null) {
                    str4 = String.valueOf(e10);
                } else {
                    str4 = null;
                }
                hashMap.put("lac", str4);
                if (p10 != null) {
                    str5 = String.valueOf(p10);
                }
                hashMap.put("signal_strength", str5);
                StringBuilder sb2 = new StringBuilder();
                String str6 = "";
                for (Map.Entry entry : hashMap.entrySet()) {
                    String str7 = (String) entry.getValue();
                    if (!TextUtils.isEmpty(str7)) {
                        sb2.append(str6);
                        sb2.append((String) entry.getKey());
                        sb2.append("=");
                        sb2.append(str7);
                        str6 = "&";
                    }
                }
                CellularNetworkInfo.this.f9683a = sb2.toString();
            }
        }
    }

    public CellularNetworkInfo(Context context) {
        new Xj(context, P.g().d().b()).a(new a());
    }

    public String getCelluralInfo() {
        return this.f9683a;
    }
}
