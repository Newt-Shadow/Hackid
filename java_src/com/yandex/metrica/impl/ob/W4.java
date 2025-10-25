package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class W4 extends X4 {
    public W4(L3 l32) {
        super(l32);
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        String q10 = c0445c0.q();
        if (TextUtils.isEmpty(q10)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(q10);
            if ("open".equals(jSONObject.optString("type"))) {
                a().x().j();
                if (a(jSONObject.optString("link"))) {
                    c0445c0.a(Boolean.TRUE);
                    a().x().i();
                    a().D();
                    a().j().a();
                    return false;
                }
                return false;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(java.lang.String r11) {
        /*
            r10 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r11)
            r1 = 0
            if (r0 != 0) goto L8e
            android.net.Uri r11 = android.net.Uri.parse(r11)     // Catch: java.lang.Throwable -> L8e
            java.lang.String r0 = "referrer"
            java.lang.String r11 = r11.getQueryParameter(r0)     // Catch: java.lang.Throwable -> L8e
            boolean r0 = android.text.TextUtils.isEmpty(r11)     // Catch: java.lang.Throwable -> L8e
            if (r0 != 0) goto L8e
            com.yandex.metrica.impl.ob.L3 r0 = r10.a()     // Catch: java.lang.Throwable -> L8e
            com.yandex.metrica.impl.ob.pi r0 = r0.w()     // Catch: java.lang.Throwable -> L8e
            com.yandex.metrica.impl.ob.Oh r0 = r0.b()     // Catch: java.lang.Throwable -> L8e
            java.lang.String r2 = "&"
            java.lang.String[] r11 = r11.split(r2)     // Catch: java.lang.Throwable -> L8e
            int r2 = r11.length     // Catch: java.lang.Throwable -> L8e
            r3 = r1
        L2b:
            if (r3 >= r2) goto L8e
            r4 = r11[r3]     // Catch: java.lang.Throwable -> L8e
            java.lang.String r5 = "="
            int r5 = r4.indexOf(r5)     // Catch: java.lang.Throwable -> L8e
            if (r5 < 0) goto L8b
            java.lang.String r6 = r4.substring(r1, r5)     // Catch: java.lang.Throwable -> L8e
            java.lang.String r6 = android.net.Uri.decode(r6)     // Catch: java.lang.Throwable -> L8e
            int r5 = r5 + 1
            java.lang.String r4 = r4.substring(r5)     // Catch: java.lang.Throwable -> L8e
            java.lang.String r4 = android.net.Uri.decode(r4)     // Catch: java.lang.Throwable -> L8e
            java.lang.String r5 = "reattribution"
            boolean r5 = r5.equals(r6)     // Catch: java.lang.Throwable -> L8e
            r7 = 1
            if (r5 == 0) goto L5b
            java.lang.String r5 = "1"
            boolean r5 = r5.equals(r4)     // Catch: java.lang.Throwable -> L8e
            if (r5 == 0) goto L5b
            goto L85
        L5b:
            if (r0 == 0) goto L87
            java.util.List<android.util.Pair<java.lang.String, com.yandex.metrica.impl.ob.Oh$a>> r5 = r0.f11004a     // Catch: java.lang.Throwable -> L8e
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.Throwable -> L8e
        L63:
            boolean r8 = r5.hasNext()     // Catch: java.lang.Throwable -> L8e
            if (r8 == 0) goto L87
            java.lang.Object r8 = r5.next()     // Catch: java.lang.Throwable -> L8e
            android.util.Pair r8 = (android.util.Pair) r8     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r9 = r8.first     // Catch: java.lang.Throwable -> L8e
            boolean r9 = com.yandex.metrica.impl.ob.A2.a(r9, r6)     // Catch: java.lang.Throwable -> L8e
            if (r9 == 0) goto L63
            java.lang.Object r8 = r8.second     // Catch: java.lang.Throwable -> L8e
            if (r8 == 0) goto L85
            com.yandex.metrica.impl.ob.Oh$a r8 = (com.yandex.metrica.impl.ob.Oh.a) r8     // Catch: java.lang.Throwable -> L8e
            java.lang.String r8 = r8.f11005a     // Catch: java.lang.Throwable -> L8e
            boolean r8 = r8.equals(r4)     // Catch: java.lang.Throwable -> L8e
            if (r8 == 0) goto L63
        L85:
            r4 = r7
            goto L88
        L87:
            r4 = r1
        L88:
            if (r4 == 0) goto L8b
            return r7
        L8b:
            int r3 = r3 + 1
            goto L2b
        L8e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.W4.a(java.lang.String):boolean");
    }
}
