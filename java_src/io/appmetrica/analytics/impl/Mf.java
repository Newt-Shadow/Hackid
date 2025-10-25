package io.appmetrica.analytics.impl;

import android.text.TextUtils;
/* loaded from: classes2.dex */
public abstract class Mf {
    public static final String a(C1415p9 c1415p9) {
        String str;
        StringBuilder sb2 = new StringBuilder("Event sent: ");
        int i10 = c1415p9.f20359c;
        String str2 = c1415p9.f20360d;
        byte[] bArr = c1415p9.f20361e;
        if (i10 == 1) {
            str = "Attribution";
        } else if (i10 == 2) {
            str = "Session start";
        } else if (i10 == 4) {
            if (str2 == null) {
                str2 = "null";
            }
            StringBuilder sb3 = new StringBuilder(str2);
            if (bArr != null) {
                String str3 = new String(bArr, rd.d.f29089b);
                if (!TextUtils.isEmpty(str3)) {
                    sb3.append(" with value ");
                    sb3.append(str3);
                }
            }
            str = sb3.toString();
        } else if (i10 == 5) {
            str = "Referrer";
        } else if (i10 == 7) {
            str = "Session heartbeat";
        } else if (i10 == 13) {
            str = "The very first event";
        } else if (i10 == 35) {
            str = "E-Commerce";
        } else if (i10 == 40) {
            str = "Ad revenue (ILRD)";
        } else if (i10 == 42) {
            str = "External attribution";
        } else if (i10 == 16) {
            str = "Open";
        } else if (i10 == 17) {
            str = "Update";
        } else if (i10 == 20) {
            str = "User profile update";
        } else if (i10 != 21) {
            switch (i10) {
                case 25:
                    str = "ANR";
                    break;
                case 26:
                    str = "Crash: " + str2;
                    break;
                case 27:
                    str = "Error: " + str2;
                    break;
                default:
                    str = "type=" + i10;
                    break;
            }
        } else {
            str = "Revenue";
        }
        sb2.append(str);
        return sb2.toString();
    }

    public static final String a(String str, EnumC1367nb enumC1367nb, String str2, String str3) {
        if (H9.f18293d.contains(EnumC1367nb.a(enumC1367nb.f20196a))) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(": ");
            sb2.append(enumC1367nb.name());
            if (H9.f18295f.contains(enumC1367nb) && !TextUtils.isEmpty(str2)) {
                sb2.append(" with name ");
                sb2.append(str2);
            }
            if (H9.f18294e.contains(enumC1367nb) && !TextUtils.isEmpty(str3)) {
                sb2.append(" with value ");
                sb2.append(str3);
            }
            return sb2.toString();
        }
        return null;
    }
}
