package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
public final class nc {

    /* renamed from: a  reason: collision with root package name */
    private final Map f7807a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nc(Map map) {
        HashMap hashMap = new HashMap();
        this.f7807a = hashMap;
        hashMap.putAll(map);
    }

    private final Bundle f() {
        int g10;
        String str;
        String str2;
        Map map = this.f7807a;
        if ("1".equals(map.get("GoogleConsent")) && (g10 = g()) >= 0) {
            String str3 = (String) map.get("PurposeConsents");
            if (!TextUtils.isEmpty(str3)) {
                Bundle bundle = new Bundle();
                String str4 = "granted";
                if (str3.length() > 0) {
                    String str5 = i6.s.AD_STORAGE.f17311a;
                    if (str3.charAt(0) == '1') {
                        str2 = "granted";
                    } else {
                        str2 = "denied";
                    }
                    bundle.putString(str5, str2);
                }
                if (str3.length() > 3) {
                    String str6 = i6.s.AD_PERSONALIZATION.f17311a;
                    if (str3.charAt(2) == '1' && str3.charAt(3) == '1') {
                        str = "granted";
                    } else {
                        str = "denied";
                    }
                    bundle.putString(str6, str);
                }
                if (str3.length() > 6 && g10 >= 4) {
                    bundle.putString(i6.s.AD_USER_DATA.f17311a, (str3.charAt(0) == '1' && str3.charAt(6) == '1') ? "denied" : "denied");
                }
                return bundle;
            }
        }
        return Bundle.EMPTY;
    }

    private final int g() {
        try {
            String str = (String) this.f7807a.get("PolicyVersion");
            if (TextUtils.isEmpty(str)) {
                return -1;
            }
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        StringBuilder sb2 = new StringBuilder();
        o6.q qVar = pc.f7880a;
        int size = qVar.size();
        for (int i10 = 0; i10 < size; i10++) {
            String str = (String) qVar.get(i10);
            Map map = this.f7807a;
            if (map.containsKey(str)) {
                if (sb2.length() > 0) {
                    sb2.append(";");
                }
                sb2.append(str);
                sb2.append("=");
                sb2.append((String) map.get(str));
            }
        }
        return sb2.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
        if ("1".equals(r2.get("EnableAdvertiserConsentMode")) != false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0058, code lost:
        if (((java.lang.Boolean) r0.b(null)).booleanValue() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005a, code lost:
        r0 = r9.f7807a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0062, code lost:
        if (r0.get("Version") != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0068, code lost:
        return f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
        if (g() >= 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0071, code lost:
        r1 = new android.os.Bundle();
        r2 = i6.s.AD_STORAGE.f17311a;
        r6 = "denied";
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0089, code lost:
        if (true == java.util.Objects.equals(r0.get("AuthorizePurpose1"), "1")) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008b, code lost:
        r4 = "denied";
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008d, code lost:
        r4 = "granted";
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008e, code lost:
        r1.putString(r2, r4);
        r2 = i6.s.AD_PERSONALIZATION.f17311a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009f, code lost:
        if (java.util.Objects.equals(r0.get("AuthorizePurpose3"), "1") == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ab, code lost:
        if (java.util.Objects.equals(r0.get("AuthorizePurpose4"), "1") == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ad, code lost:
        r4 = "granted";
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00af, code lost:
        r4 = "denied";
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b0, code lost:
        r1.putString(r2, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b8, code lost:
        if (g() < 4) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ba, code lost:
        r2 = i6.s.AD_USER_DATA.f17311a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c6, code lost:
        if (java.util.Objects.equals(r0.get("AuthorizePurpose1"), "1") == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d2, code lost:
        if (java.util.Objects.equals(r0.get("AuthorizePurpose7"), "1") == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d4, code lost:
        r6 = "granted";
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d5, code lost:
        r1.putString(r2, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d8, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00dd, code lost:
        return f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if ("1".equals(r2.get("EnableAdvertiserConsentMode")) != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle b() {
        /*
            r9 = this;
            com.google.android.gms.measurement.internal.b5 r0 = com.google.android.gms.measurement.internal.c5.f7326a1
            r1 = 0
            java.lang.Object r2 = r0.b(r1)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            java.lang.String r3 = "EnableAdvertiserConsentMode"
            java.lang.String r4 = "gdprApplies"
            java.lang.String r5 = "1"
            if (r2 == 0) goto L2c
            java.util.Map r2 = r9.f7807a
            java.lang.Object r4 = r2.get(r4)
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto Lde
            java.lang.Object r2 = r2.get(r3)
            boolean r2 = r5.equals(r2)
            if (r2 == 0) goto Lde
            goto L4e
        L2c:
            java.util.Map r2 = r9.f7807a
            java.lang.String r6 = "GoogleConsent"
            java.lang.Object r6 = r2.get(r6)
            boolean r6 = r5.equals(r6)
            if (r6 == 0) goto Lde
            java.lang.Object r4 = r2.get(r4)
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto Lde
            java.lang.Object r2 = r2.get(r3)
            boolean r2 = r5.equals(r2)
            if (r2 == 0) goto Lde
        L4e:
            java.lang.Object r0 = r0.b(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Ld9
            java.util.Map r0 = r9.f7807a
            java.lang.String r1 = "Version"
            java.lang.Object r1 = r0.get(r1)
            if (r1 != 0) goto L69
            android.os.Bundle r0 = r9.f()
            return r0
        L69:
            int r1 = r9.g()
            if (r1 >= 0) goto L71
            goto Lde
        L71:
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
            i6.s r2 = i6.s.AD_STORAGE
            java.lang.String r2 = r2.f17311a
            java.lang.String r3 = "AuthorizePurpose1"
            java.lang.Object r4 = r0.get(r3)
            boolean r4 = java.util.Objects.equals(r4, r5)
            java.lang.String r6 = "denied"
            java.lang.String r7 = "granted"
            r8 = 1
            if (r8 == r4) goto L8d
            r4 = r6
            goto L8e
        L8d:
            r4 = r7
        L8e:
            r1.putString(r2, r4)
            i6.s r2 = i6.s.AD_PERSONALIZATION
            java.lang.String r2 = r2.f17311a
            java.lang.String r4 = "AuthorizePurpose3"
            java.lang.Object r4 = r0.get(r4)
            boolean r4 = java.util.Objects.equals(r4, r5)
            if (r4 == 0) goto Laf
            java.lang.String r4 = "AuthorizePurpose4"
            java.lang.Object r4 = r0.get(r4)
            boolean r4 = java.util.Objects.equals(r4, r5)
            if (r4 == 0) goto Laf
            r4 = r7
            goto Lb0
        Laf:
            r4 = r6
        Lb0:
            r1.putString(r2, r4)
            int r2 = r9.g()
            r4 = 4
            if (r2 < r4) goto Ld8
            i6.s r2 = i6.s.AD_USER_DATA
            java.lang.String r2 = r2.f17311a
            java.lang.Object r3 = r0.get(r3)
            boolean r3 = java.util.Objects.equals(r3, r5)
            if (r3 == 0) goto Ld5
            java.lang.String r3 = "AuthorizePurpose7"
            java.lang.Object r0 = r0.get(r3)
            boolean r0 = java.util.Objects.equals(r0, r5)
            if (r0 == 0) goto Ld5
            r6 = r7
        Ld5:
            r1.putString(r2, r6)
        Ld8:
            return r1
        Ld9:
            android.os.Bundle r0 = r9.f()
            return r0
        Lde:
            android.os.Bundle r0 = android.os.Bundle.EMPTY
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.nc.b():android.os.Bundle");
    }

    public final String c() {
        String str = (String) this.f7807a.get("PurposeDiagnostics");
        if (TextUtils.isEmpty(str)) {
            return "200000";
        }
        return str;
    }

    public final String d(nc ncVar) {
        String str;
        boolean z10;
        Map map = ncVar.f7807a;
        String str2 = "1";
        if (!map.isEmpty() && ((String) map.get("Version")) == null) {
            str = "1";
        } else {
            str = CommonUrlParts.Values.FALSE_INTEGER;
        }
        Bundle b10 = b();
        Bundle b11 = ncVar.b();
        if (b10.size() != b11.size() || !Objects.equals(b10.getString("ad_storage"), b11.getString("ad_storage")) || !Objects.equals(b10.getString("ad_personalization"), b11.getString("ad_personalization")) || !Objects.equals(b10.getString("ad_user_data"), b11.getString("ad_user_data"))) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (true != z10) {
            str2 = CommonUrlParts.Values.FALSE_INTEGER;
        }
        return str.concat(str2);
    }

    public final String e() {
        int i10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("1");
        int i11 = -1;
        try {
            String str = (String) this.f7807a.get("CmpSdkID");
            if (!TextUtils.isEmpty(str)) {
                i11 = Integer.parseInt(str);
            }
        } catch (NumberFormatException unused) {
        }
        if (i11 >= 0 && i11 <= 4095) {
            sb2.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i11 >> 6));
            sb2.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i11 & 63));
        } else {
            sb2.append("00");
        }
        int g10 = g();
        if (g10 >= 0 && g10 <= 63) {
            sb2.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(g10));
        } else {
            sb2.append(CommonUrlParts.Values.FALSE_INTEGER);
        }
        n5.q.a(true);
        Map map = this.f7807a;
        if (true != "1".equals(map.get("gdprApplies"))) {
            i10 = 0;
        } else {
            i10 = 2;
        }
        int i12 = i10 | 4;
        if ("1".equals(map.get("EnableAdvertiserConsentMode"))) {
            i12 |= 8;
        }
        sb2.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i12));
        return sb2.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof nc)) {
            return false;
        }
        return a().equalsIgnoreCase(((nc) obj).a());
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a();
    }
}
