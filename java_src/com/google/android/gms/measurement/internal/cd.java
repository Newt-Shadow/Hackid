package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collections;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class cd extends vc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public cd(pd pdVar) {
        super(pdVar);
    }

    private final String k(String str) {
        String x10 = this.f8149b.D0().x(str);
        if (!TextUtils.isEmpty(x10)) {
            Uri parse = Uri.parse((String) c5.f7370r.b(null));
            Uri.Builder buildUpon = parse.buildUpon();
            String authority = parse.getAuthority();
            StringBuilder sb2 = new StringBuilder(String.valueOf(x10).length() + 1 + String.valueOf(authority).length());
            sb2.append(x10);
            sb2.append(".");
            sb2.append(authority);
            buildUpon.authority(sb2.toString());
            return buildUpon.build().toString();
        }
        return (String) c5.f7370r.b(null);
    }

    private static final boolean l(String str) {
        String str2 = (String) c5.f7374t.b(null);
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        for (String str3 : str2.split(StringUtils.COMMA)) {
            if (str.equalsIgnoreCase(str3.trim())) {
                return true;
            }
        }
        return false;
    }

    public final bd i(String str) {
        v5 J0;
        pd pdVar = this.f8149b;
        v5 J02 = pdVar.F0().J0(str);
        bd bdVar = null;
        if (J02 != null && J02.V()) {
            com.google.android.gms.internal.measurement.n7 D = com.google.android.gms.internal.measurement.u7.D();
            D.u(2);
            D.t((com.google.android.gms.internal.measurement.p7) n5.q.k(com.google.android.gms.internal.measurement.p7.a(J02.M())));
            String p02 = J02.p0();
            com.google.android.gms.internal.measurement.l5 w10 = pdVar.D0().w(str);
            if (w10 != null && (J0 = pdVar.F0().J0(str)) != null && ((w10.Q() && w10.R().E() == 100) || this.f8322a.C().P(str, J0.l0()) || (!TextUtils.isEmpty(p02) && Math.abs(p02.hashCode() % 100) < w10.R().E()))) {
                String o02 = J02.o0();
                D.u(2);
                com.google.android.gms.internal.measurement.l5 w11 = pdVar.D0().w(J02.o0());
                if (w11 != null && w11.Q()) {
                    HashMap hashMap = new HashMap();
                    if (!TextUtils.isEmpty(J02.l0())) {
                        hashMap.put("x-gtm-server-preview", J02.l0());
                    }
                    String F = w11.R().F();
                    com.google.android.gms.internal.measurement.p7 a10 = com.google.android.gms.internal.measurement.p7.a(J02.M());
                    if (a10 != null && a10 != com.google.android.gms.internal.measurement.p7.CLIENT_UPLOAD_ELIGIBLE) {
                        D.t(a10);
                    } else if (l(J02.o0())) {
                        D.t(com.google.android.gms.internal.measurement.p7.PINNED_TO_SERVICE_UPLOAD);
                    } else if (TextUtils.isEmpty(F)) {
                        D.t(com.google.android.gms.internal.measurement.p7.MISSING_SGTM_SERVER_URL);
                    } else {
                        this.f8322a.a().w().b("[sgtm] Eligible for client side upload. appId", o02);
                        D.u(3);
                        D.t(com.google.android.gms.internal.measurement.p7.CLIENT_UPLOAD_ELIGIBLE);
                        bdVar = new bd(F, hashMap, i6.d0.SGTM_CLIENT, (com.google.android.gms.internal.measurement.u7) D.p());
                    }
                    w11.R().C();
                    w11.R().D();
                    w6 w6Var = this.f8322a;
                    w6Var.c();
                    if (!TextUtils.isEmpty(F)) {
                        w6Var.a().w().b("[sgtm] Eligible for local service direct upload. appId", o02);
                        D.u(5);
                        D.v(2);
                        bdVar = new bd(F, hashMap, i6.d0.SGTM, (com.google.android.gms.internal.measurement.u7) D.p());
                    } else {
                        D.v(6);
                        w6Var.a().w().b("[sgtm] Local service, missing sgtm_server_url", J02.o0());
                    }
                } else {
                    this.f8322a.a().w().b("[sgtm] Missing sgtm_setting in remote config. appId", o02);
                    D.v(4);
                }
                if (bdVar != null) {
                    return bdVar;
                }
                return new bd(k(str), Collections.emptyMap(), i6.d0.GOOGLE_ANALYTICS, (com.google.android.gms.internal.measurement.u7) D.p());
            }
            D.v(3);
            return new bd(k(str), Collections.emptyMap(), i6.d0.GOOGLE_ANALYTICS, (com.google.android.gms.internal.measurement.u7) D.p());
        }
        return new bd(k(str), Collections.emptyMap(), i6.d0.GOOGLE_ANALYTICS, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean j(String str, com.google.android.gms.internal.measurement.p7 p7Var) {
        com.google.android.gms.internal.measurement.l5 w10;
        h();
        if (p7Var != com.google.android.gms.internal.measurement.p7.CLIENT_UPLOAD_ELIGIBLE || l(str) || (w10 = this.f8149b.D0().w(str)) == null || !w10.Q() || w10.R().F().isEmpty()) {
            return false;
        }
        return true;
    }
}
