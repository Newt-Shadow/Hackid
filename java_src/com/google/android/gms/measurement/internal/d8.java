package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.EnumMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class d8 {

    /* renamed from: c  reason: collision with root package name */
    public static final d8 f7442c = new d8(null, null, 100);

    /* renamed from: a  reason: collision with root package name */
    private final EnumMap f7443a;

    /* renamed from: b  reason: collision with root package name */
    private final int f7444b;

    public d8(Boolean bool, Boolean bool2, int i10) {
        EnumMap enumMap = new EnumMap(i6.s.class);
        this.f7443a = enumMap;
        enumMap.put((EnumMap) i6.s.AD_STORAGE, (i6.s) h(null));
        enumMap.put((EnumMap) i6.s.ANALYTICS_STORAGE, (i6.s) h(null));
        this.f7444b = i10;
    }

    public static d8 a(i6.r rVar, i6.r rVar2, int i10) {
        EnumMap enumMap = new EnumMap(i6.s.class);
        enumMap.put((EnumMap) i6.s.AD_STORAGE, (i6.s) rVar);
        enumMap.put((EnumMap) i6.s.ANALYTICS_STORAGE, (i6.s) rVar2);
        return new d8(enumMap, -10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d(int i10) {
        return i10 != -30 ? i10 != -20 ? i10 != -10 ? i10 != 0 ? i10 != 30 ? i10 != 90 ? i10 != 100 ? "OTHER" : "UNKNOWN" : "REMOTE_CONFIG" : "1P_INIT" : "1P_API" : "MANIFEST" : "API" : "TCF";
    }

    public static d8 e(Bundle bundle, int i10) {
        i6.s[] b10;
        if (bundle == null) {
            return new d8(null, null, i10);
        }
        EnumMap enumMap = new EnumMap(i6.s.class);
        for (i6.s sVar : c8.STORAGE.b()) {
            enumMap.put((EnumMap) sVar, (i6.s) g(bundle.getString(sVar.f17311a)));
        }
        return new d8(enumMap, i10);
    }

    public static d8 f(String str, int i10) {
        String str2;
        EnumMap enumMap = new EnumMap(i6.s.class);
        i6.s[] a10 = c8.STORAGE.a();
        for (int i11 = 0; i11 < a10.length; i11++) {
            if (str == null) {
                str2 = "";
            } else {
                str2 = str;
            }
            i6.s sVar = a10[i11];
            int i12 = i11 + 2;
            if (i12 < str2.length()) {
                enumMap.put((EnumMap) sVar, (i6.s) j(str2.charAt(i12)));
            } else {
                enumMap.put((EnumMap) sVar, (i6.s) i6.r.UNINITIALIZED);
            }
        }
        return new d8(enumMap, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i6.r g(String str) {
        if (str == null) {
            return i6.r.UNINITIALIZED;
        }
        if (str.equals("granted")) {
            return i6.r.GRANTED;
        }
        if (str.equals("denied")) {
            return i6.r.DENIED;
        }
        return i6.r.UNINITIALIZED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i6.r h(Boolean bool) {
        if (bool == null) {
            return i6.r.UNINITIALIZED;
        }
        if (bool.booleanValue()) {
            return i6.r.GRANTED;
        }
        return i6.r.DENIED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String i(i6.r rVar) {
        int ordinal = rVar.ordinal();
        if (ordinal != 2) {
            if (ordinal != 3) {
                return null;
            }
            return "granted";
        }
        return "denied";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i6.r j(char c10) {
        if (c10 != '+') {
            if (c10 != '0') {
                if (c10 != '1') {
                    return i6.r.UNINITIALIZED;
                }
                return i6.r.GRANTED;
            }
            return i6.r.DENIED;
        }
        return i6.r.POLICY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static char m(i6.r rVar) {
        if (rVar != null) {
            int ordinal = rVar.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        return '1';
                    }
                    return '-';
                }
                return '0';
            }
            return '+';
        }
        return '-';
    }

    public static boolean u(int i10, int i11) {
        int i12 = -30;
        if (i10 == -20) {
            if (i11 == -30) {
                return true;
            }
            i10 = -20;
        }
        if (i10 != -30) {
            i12 = i10;
        } else if (i11 == -20) {
            return true;
        }
        return i12 == i11 || i10 < i11;
    }

    public final int b() {
        return this.f7444b;
    }

    public final boolean c() {
        for (i6.r rVar : this.f7443a.values()) {
            if (rVar != i6.r.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        i6.s[] b10;
        if (!(obj instanceof d8)) {
            return false;
        }
        d8 d8Var = (d8) obj;
        for (i6.s sVar : c8.STORAGE.b()) {
            if (this.f7443a.get(sVar) != d8Var.f7443a.get(sVar)) {
                return false;
            }
        }
        if (this.f7444b != d8Var.f7444b) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i10 = this.f7444b * 17;
        for (i6.r rVar : this.f7443a.values()) {
            i10 = (i10 * 31) + rVar.hashCode();
        }
        return i10;
    }

    public final String k() {
        int ordinal;
        StringBuilder sb2 = new StringBuilder("G1");
        for (i6.s sVar : c8.STORAGE.a()) {
            i6.r rVar = (i6.r) this.f7443a.get(sVar);
            char c10 = '-';
            if (rVar != null && (ordinal = rVar.ordinal()) != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                        }
                    } else {
                        c10 = '0';
                    }
                }
                c10 = '1';
            }
            sb2.append(c10);
        }
        return sb2.toString();
    }

    public final String l() {
        StringBuilder sb2 = new StringBuilder("G1");
        for (i6.s sVar : c8.STORAGE.a()) {
            sb2.append(m((i6.r) this.f7443a.get(sVar)));
        }
        return sb2.toString();
    }

    public final Bundle n() {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : this.f7443a.entrySet()) {
            String i10 = i((i6.r) entry.getValue());
            if (i10 != null) {
                bundle.putString(((i6.s) entry.getKey()).f17311a, i10);
            }
        }
        return bundle;
    }

    public final boolean o(i6.s sVar) {
        if (((i6.r) this.f7443a.get(sVar)) == i6.r.DENIED) {
            return false;
        }
        return true;
    }

    public final i6.r p() {
        i6.r rVar = (i6.r) this.f7443a.get(i6.s.AD_STORAGE);
        if (rVar == null) {
            return i6.r.UNINITIALIZED;
        }
        return rVar;
    }

    public final i6.r q() {
        i6.r rVar = (i6.r) this.f7443a.get(i6.s.ANALYTICS_STORAGE);
        if (rVar == null) {
            return i6.r.UNINITIALIZED;
        }
        return rVar;
    }

    public final boolean r(d8 d8Var) {
        i6.s[] sVarArr;
        EnumMap enumMap = this.f7443a;
        for (i6.s sVar : (i6.s[]) enumMap.keySet().toArray(new i6.s[0])) {
            i6.r rVar = (i6.r) enumMap.get(sVar);
            i6.r rVar2 = (i6.r) d8Var.f7443a.get(sVar);
            i6.r rVar3 = i6.r.DENIED;
            if (rVar == rVar3 && rVar2 != rVar3) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0047 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.d8 s(com.google.android.gms.measurement.internal.d8 r9) {
        /*
            r8 = this;
            java.util.EnumMap r0 = new java.util.EnumMap
            java.lang.Class<i6.s> r1 = i6.s.class
            r0.<init>(r1)
            com.google.android.gms.measurement.internal.c8 r1 = com.google.android.gms.measurement.internal.c8.STORAGE
            i6.s[] r1 = r1.b()
            int r2 = r1.length
            r3 = 0
        Lf:
            if (r3 >= r2) goto L4a
            r4 = r1[r3]
            java.util.EnumMap r5 = r8.f7443a
            java.lang.Object r5 = r5.get(r4)
            i6.r r5 = (i6.r) r5
            java.util.EnumMap r6 = r9.f7443a
            java.lang.Object r6 = r6.get(r4)
            i6.r r6 = (i6.r) r6
            if (r5 != 0) goto L26
            goto L33
        L26:
            if (r6 == 0) goto L42
            i6.r r7 = i6.r.UNINITIALIZED
            if (r5 != r7) goto L2d
            goto L33
        L2d:
            if (r6 == r7) goto L42
            i6.r r7 = i6.r.POLICY
            if (r5 != r7) goto L35
        L33:
            r5 = r6
            goto L42
        L35:
            if (r6 == r7) goto L42
            i6.r r7 = i6.r.DENIED
            if (r5 == r7) goto L41
            if (r6 != r7) goto L3e
            goto L41
        L3e:
            i6.r r5 = i6.r.GRANTED
            goto L42
        L41:
            r5 = r7
        L42:
            if (r5 == 0) goto L47
            r0.put(r4, r5)
        L47:
            int r3 = r3 + 1
            goto Lf
        L4a:
            com.google.android.gms.measurement.internal.d8 r9 = new com.google.android.gms.measurement.internal.d8
            r1 = 100
            r9.<init>(r0, r1)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.d8.s(com.google.android.gms.measurement.internal.d8):com.google.android.gms.measurement.internal.d8");
    }

    public final d8 t(d8 d8Var) {
        i6.s[] b10;
        EnumMap enumMap = new EnumMap(i6.s.class);
        for (i6.s sVar : c8.STORAGE.b()) {
            i6.r rVar = (i6.r) this.f7443a.get(sVar);
            if (rVar == i6.r.UNINITIALIZED) {
                rVar = (i6.r) d8Var.f7443a.get(sVar);
            }
            if (rVar != null) {
                enumMap.put((EnumMap) sVar, (i6.s) rVar);
            }
        }
        return new d8(enumMap, this.f7444b);
    }

    public final String toString() {
        i6.s[] b10;
        StringBuilder sb2 = new StringBuilder("source=");
        sb2.append(d(this.f7444b));
        for (i6.s sVar : c8.STORAGE.b()) {
            sb2.append(StringUtils.COMMA);
            sb2.append(sVar.f17311a);
            sb2.append("=");
            i6.r rVar = (i6.r) this.f7443a.get(sVar);
            if (rVar == null) {
                rVar = i6.r.UNINITIALIZED;
            }
            sb2.append(rVar);
        }
        return sb2.toString();
    }

    private d8(EnumMap enumMap, int i10) {
        EnumMap enumMap2 = new EnumMap(i6.s.class);
        this.f7443a = enumMap2;
        enumMap2.putAll(enumMap);
        this.f7444b = i10;
    }
}
