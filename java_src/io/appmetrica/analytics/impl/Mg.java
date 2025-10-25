package io.appmetrica.analytics.impl;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Mg extends Pg {
    public Mg(C1386o5 c1386o5) {
        super(c1386o5);
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        String value = c1138e6.getValue();
        if (TextUtils.isEmpty(value)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(value);
            if ("open".equals(jSONObject.optString("type"))) {
                Cdo cdo = this.f18787a.f20272t;
                synchronized (cdo) {
                    cdo.c(cdo.b() + 1);
                }
                if (a(jSONObject.optString("link"))) {
                    c1138e6.f19584n = Boolean.TRUE;
                    b();
                    return false;
                }
                return false;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final void b() {
        Cdo cdo = this.f18787a.f20272t;
        synchronized (cdo) {
            cdo.a(cdo.a() + 1);
        }
        this.f18787a.y();
        V8 v82 = this.f18787a.f20264l;
        if (v82.f19120c == null) {
            v82.a();
        }
        X8 x82 = v82.f19120c;
        x82.getClass();
        x82.f19229b = new HashSet();
        x82.f19231d = 0;
        X8 x83 = v82.f19120c;
        x83.f19228a = true;
        C1041a9 c1041a9 = v82.f19119b;
        IBinaryDataHelper iBinaryDataHelper = c1041a9.f19379c;
        Z8 z82 = c1041a9.f19378b;
        c1041a9.f19377a.getClass();
        F9 a10 = Y8.a(x83);
        z82.getClass();
        iBinaryDataHelper.insert("event_hashes", MessageNano.toByteArray(a10));
    }

    public final boolean a(String str) {
        String[] split;
        if (!TextUtils.isEmpty(str)) {
            try {
                String queryParameter = Uri.parse(str).getQueryParameter("referrer");
                if (!TextUtils.isEmpty(queryParameter)) {
                    C1358n2 c1358n2 = this.f18787a.s().f18853z;
                    for (String str2 : queryParameter.split("&")) {
                        int indexOf = str2.indexOf("=");
                        if (indexOf >= 0 && a(Uri.decode(str2.substring(0, indexOf)), Uri.decode(str2.substring(indexOf + 1)), c1358n2)) {
                            return true;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static boolean a(String str, String str2, C1358n2 c1358n2) {
        Object obj;
        if ("reattribution".equals(str) && "1".equals(str2)) {
            return true;
        }
        if (c1358n2 != null) {
            for (Pair pair : c1358n2.f20155a) {
                if (Rn.a(pair.first, str) && ((obj = pair.second) == null || ((C1333m2) obj).f20076a.equals(str2))) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }
}
