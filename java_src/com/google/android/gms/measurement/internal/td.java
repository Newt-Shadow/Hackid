package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.ag;
import com.google.android.gms.internal.measurement.nf;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugins.firebase.analytics.Constants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import o5.b;
/* loaded from: classes.dex */
public final class td extends ad {
    /* JADX INFO: Access modifiers changed from: package-private */
    public td(pd pdVar) {
        super(pdVar);
    }

    private static final String A(boolean z10, boolean z11, boolean z12) {
        StringBuilder sb2 = new StringBuilder();
        if (z10) {
            sb2.append("Dynamic ");
        }
        if (z11) {
            sb2.append("Sequence ");
        }
        if (z12) {
            sb2.append("Session-Scoped ");
        }
        return sb2.toString();
    }

    private static final Object B(com.google.android.gms.internal.measurement.x6 x6Var) {
        if (x6Var.E()) {
            return x6Var.F();
        }
        if (x6Var.G()) {
            return Long.valueOf(x6Var.H());
        }
        if (x6Var.K()) {
            return Double.valueOf(x6Var.L());
        }
        if (x6Var.N() > 0) {
            return Y(x6Var.M());
        }
        return null;
    }

    private static final void C(Uri.Builder builder, String[] strArr, Bundle bundle, Set set) {
        for (String str : strArr) {
            String[] split = str.split(StringUtils.COMMA);
            String str2 = split[0];
            String str3 = split[split.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                z(builder, str3, string, set);
            }
        }
    }

    private static final void D(StringBuilder sb2, int i10, String str, com.google.android.gms.internal.measurement.k7 k7Var) {
        Integer num;
        Integer num2;
        Long l10;
        if (k7Var == null) {
            return;
        }
        y(sb2, 3);
        sb2.append(str);
        sb2.append(" {\n");
        if (k7Var.F() != 0) {
            y(sb2, 4);
            sb2.append("results: ");
            int i11 = 0;
            for (Long l11 : k7Var.E()) {
                int i12 = i11 + 1;
                if (i11 != 0) {
                    sb2.append(", ");
                }
                sb2.append(l11);
                i11 = i12;
            }
            sb2.append('\n');
        }
        if (k7Var.D() != 0) {
            y(sb2, 4);
            sb2.append("status: ");
            int i13 = 0;
            for (Long l12 : k7Var.C()) {
                int i14 = i13 + 1;
                if (i13 != 0) {
                    sb2.append(", ");
                }
                sb2.append(l12);
                i13 = i14;
            }
            sb2.append('\n');
        }
        if (k7Var.H() != 0) {
            y(sb2, 4);
            sb2.append("dynamic_filter_timestamps: {");
            int i15 = 0;
            for (com.google.android.gms.internal.measurement.r6 r6Var : k7Var.G()) {
                int i16 = i15 + 1;
                if (i15 != 0) {
                    sb2.append(", ");
                }
                if (r6Var.C()) {
                    num2 = Integer.valueOf(r6Var.D());
                } else {
                    num2 = null;
                }
                sb2.append(num2);
                sb2.append(":");
                if (r6Var.E()) {
                    l10 = Long.valueOf(r6Var.F());
                } else {
                    l10 = null;
                }
                sb2.append(l10);
                i15 = i16;
            }
            sb2.append("}\n");
        }
        if (k7Var.J() != 0) {
            y(sb2, 4);
            sb2.append("sequence_filter_timestamps: {");
            int i17 = 0;
            for (com.google.android.gms.internal.measurement.m7 m7Var : k7Var.I()) {
                int i18 = i17 + 1;
                if (i17 != 0) {
                    sb2.append(", ");
                }
                if (m7Var.C()) {
                    num = Integer.valueOf(m7Var.D());
                } else {
                    num = null;
                }
                sb2.append(num);
                sb2.append(": [");
                int i19 = 0;
                for (Long l13 : m7Var.E()) {
                    long longValue = l13.longValue();
                    int i20 = i19 + 1;
                    if (i19 != 0) {
                        sb2.append(", ");
                    }
                    sb2.append(longValue);
                    i19 = i20;
                }
                sb2.append("]");
                i17 = i18;
            }
            sb2.append("}\n");
        }
        y(sb2, 3);
        sb2.append("}\n");
    }

    private static final void E(StringBuilder sb2, int i10, String str, Object obj) {
        if (obj == null) {
            return;
        }
        y(sb2, i10 + 1);
        sb2.append(str);
        sb2.append(": ");
        sb2.append(obj);
        sb2.append('\n');
    }

    private static final void F(StringBuilder sb2, int i10, String str, com.google.android.gms.internal.measurement.k4 k4Var) {
        String str2;
        if (k4Var == null) {
            return;
        }
        y(sb2, i10);
        sb2.append(str);
        sb2.append(" {\n");
        if (k4Var.C()) {
            int N = k4Var.N();
            if (N != 1) {
                if (N != 2) {
                    if (N != 3) {
                        if (N != 4) {
                            str2 = "BETWEEN";
                        } else {
                            str2 = "EQUAL";
                        }
                    } else {
                        str2 = "GREATER_THAN";
                    }
                } else {
                    str2 = "LESS_THAN";
                }
            } else {
                str2 = "UNKNOWN_COMPARISON_TYPE";
            }
            E(sb2, i10, "comparison_type", str2);
        }
        if (k4Var.D()) {
            E(sb2, i10, "match_as_float", Boolean.valueOf(k4Var.E()));
        }
        if (k4Var.F()) {
            E(sb2, i10, "comparison_value", k4Var.G());
        }
        if (k4Var.H()) {
            E(sb2, i10, "min_comparison_value", k4Var.I());
        }
        if (k4Var.J()) {
            E(sb2, i10, "max_comparison_value", k4Var.K());
        }
        y(sb2, i10);
        sb2.append("}\n");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean O(String str) {
        if (str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean P(List list, int i10) {
        if (i10 < list.size() * 64) {
            if (((1 << (i10 % 64)) & ((Long) list.get(i10 / 64)).longValue()) != 0) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List Q(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i10 = 0; i10 < length; i10++) {
            long j10 = 0;
            for (int i11 = 0; i11 < 64; i11++) {
                int i12 = (i10 * 64) + i11;
                if (i12 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i12)) {
                    j10 |= 1 << i11;
                }
            }
            arrayList.add(Long.valueOf(j10));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.gms.internal.measurement.hc W(com.google.android.gms.internal.measurement.hc hcVar, byte[] bArr) {
        com.google.android.gms.internal.measurement.ua a10 = com.google.android.gms.internal.measurement.ua.a();
        if (a10 != null) {
            return hcVar.o0(bArr, a10);
        }
        return hcVar.t0(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int X(com.google.android.gms.internal.measurement.e7 e7Var, String str) {
        for (int i10 = 0; i10 < e7Var.Y0(); i10++) {
            if (str.equals(e7Var.Z0(i10).E())) {
                return i10;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle[] Y(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.google.android.gms.internal.measurement.x6 x6Var = (com.google.android.gms.internal.measurement.x6) it.next();
            if (x6Var != null) {
                Bundle bundle = new Bundle();
                for (com.google.android.gms.internal.measurement.x6 x6Var2 : x6Var.M()) {
                    if (x6Var2.E()) {
                        bundle.putString(x6Var2.D(), x6Var2.F());
                    } else if (x6Var2.G()) {
                        bundle.putLong(x6Var2.D(), x6Var2.H());
                    } else if (x6Var2.K()) {
                        bundle.putDouble(x6Var2.D(), x6Var2.L());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void o(com.google.android.gms.internal.measurement.s6 s6Var, String str, Object obj) {
        List t10 = s6Var.t();
        int i10 = 0;
        while (true) {
            if (i10 < t10.size()) {
                if (str.equals(((com.google.android.gms.internal.measurement.x6) t10.get(i10)).D())) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        com.google.android.gms.internal.measurement.w6 O = com.google.android.gms.internal.measurement.x6.O();
        O.u(str);
        O.y(((Long) obj).longValue());
        if (i10 >= 0) {
            s6Var.x(i10, O);
        } else {
            s6Var.z(O);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final boolean p(g0 g0Var, ae aeVar) {
        n5.q.k(g0Var);
        n5.q.k(aeVar);
        if (TextUtils.isEmpty(aeVar.f7237b)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Bundle q(List list) {
        Bundle bundle = new Bundle();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.google.android.gms.internal.measurement.x6 x6Var = (com.google.android.gms.internal.measurement.x6) it.next();
            String D = x6Var.D();
            if (x6Var.K()) {
                bundle.putDouble(D, x6Var.L());
            } else if (x6Var.I()) {
                bundle.putFloat(D, x6Var.J());
            } else if (x6Var.E()) {
                bundle.putString(D, x6Var.F());
            } else if (x6Var.G()) {
                bundle.putLong(D, x6Var.H());
            }
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final com.google.android.gms.internal.measurement.x6 r(com.google.android.gms.internal.measurement.t6 t6Var, String str) {
        for (com.google.android.gms.internal.measurement.x6 x6Var : t6Var.C()) {
            if (x6Var.D().equals(str)) {
                return x6Var;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Map s(com.google.android.gms.internal.measurement.t6 t6Var, String... strArr) {
        Object B;
        HashMap hashMap = new HashMap();
        for (com.google.android.gms.internal.measurement.x6 x6Var : t6Var.C()) {
            if (Arrays.asList(strArr).contains(x6Var.D()) && (B = B(x6Var)) != null) {
                hashMap.put(x6Var.D(), B);
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Map t(com.google.android.gms.internal.measurement.t6 t6Var, String str) {
        Object B;
        HashMap hashMap = new HashMap();
        for (com.google.android.gms.internal.measurement.x6 x6Var : t6Var.C()) {
            if (x6Var.D().startsWith("gad_") && (B = B(x6Var)) != null) {
                hashMap.put(x6Var.D(), B);
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Object u(com.google.android.gms.internal.measurement.t6 t6Var, String str) {
        com.google.android.gms.internal.measurement.x6 r10 = r(t6Var, str);
        if (r10 == null) {
            return null;
        }
        return B(r10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Object v(com.google.android.gms.internal.measurement.t6 t6Var, String str, Object obj) {
        Object u10 = u(t6Var, str);
        if (u10 == null) {
            return obj;
        }
        return u10;
    }

    private final void w(StringBuilder sb2, int i10, List list) {
        String str;
        String str2;
        Long l10;
        if (list != null) {
            int i11 = i10 + 1;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                com.google.android.gms.internal.measurement.x6 x6Var = (com.google.android.gms.internal.measurement.x6) it.next();
                if (x6Var != null) {
                    y(sb2, i11);
                    sb2.append("param {\n");
                    Double d10 = null;
                    if (x6Var.C()) {
                        str = this.f8322a.D().b(x6Var.D());
                    } else {
                        str = null;
                    }
                    E(sb2, i11, Constants.NAME, str);
                    if (x6Var.E()) {
                        str2 = x6Var.F();
                    } else {
                        str2 = null;
                    }
                    E(sb2, i11, "string_value", str2);
                    if (x6Var.G()) {
                        l10 = Long.valueOf(x6Var.H());
                    } else {
                        l10 = null;
                    }
                    E(sb2, i11, "int_value", l10);
                    if (x6Var.K()) {
                        d10 = Double.valueOf(x6Var.L());
                    }
                    E(sb2, i11, "double_value", d10);
                    if (x6Var.N() > 0) {
                        w(sb2, i11, x6Var.M());
                    }
                    y(sb2, i11);
                    sb2.append("}\n");
                }
            }
        }
    }

    private final void x(StringBuilder sb2, int i10, com.google.android.gms.internal.measurement.g4 g4Var) {
        String str;
        if (g4Var == null) {
            return;
        }
        y(sb2, i10);
        sb2.append("filter {\n");
        if (g4Var.G()) {
            E(sb2, i10, "complement", Boolean.valueOf(g4Var.H()));
        }
        if (g4Var.I()) {
            E(sb2, i10, "param_name", this.f8322a.D().b(g4Var.J()));
        }
        if (g4Var.C()) {
            int i11 = i10 + 1;
            com.google.android.gms.internal.measurement.q4 D = g4Var.D();
            if (D != null) {
                y(sb2, i11);
                sb2.append("string_filter {\n");
                if (D.C()) {
                    switch (D.L()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    E(sb2, i11, "match_type", str);
                }
                if (D.D()) {
                    E(sb2, i11, "expression", D.E());
                }
                if (D.F()) {
                    E(sb2, i11, "case_sensitive", Boolean.valueOf(D.G()));
                }
                if (D.I() > 0) {
                    y(sb2, i11 + 1);
                    sb2.append("expression_list {\n");
                    for (String str2 : D.H()) {
                        y(sb2, i11 + 2);
                        sb2.append(str2);
                        sb2.append("\n");
                    }
                    sb2.append("}\n");
                }
                y(sb2, i11);
                sb2.append("}\n");
            }
        }
        if (g4Var.E()) {
            F(sb2, i10 + 1, "number_filter", g4Var.F());
        }
        y(sb2, i10);
        sb2.append("}\n");
    }

    private static final void y(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append("  ");
        }
    }

    private static final void z(Uri.Builder builder, String str, String str2, Set set) {
        if (!set.contains(str) && !TextUtils.isEmpty(str2)) {
            builder.appendQueryParameter(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void G(com.google.android.gms.internal.measurement.v7 v7Var, Object obj) {
        n5.q.k(obj);
        v7Var.w();
        v7Var.y();
        v7Var.A();
        if (obj instanceof String) {
            v7Var.v((String) obj);
        } else if (obj instanceof Long) {
            v7Var.x(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            v7Var.z(((Double) obj).doubleValue());
        } else {
            this.f8322a.a().o().b("Ignoring invalid (type) user attribute value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void H(com.google.android.gms.internal.measurement.w6 w6Var, Object obj) {
        Bundle[] bundleArr;
        n5.q.k(obj);
        w6Var.x();
        w6Var.z();
        w6Var.B();
        w6Var.F();
        if (obj instanceof String) {
            w6Var.w((String) obj);
        } else if (obj instanceof Long) {
            w6Var.y(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            w6Var.A(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            ArrayList arrayList = new ArrayList();
            for (Bundle bundle : (Bundle[]) obj) {
                if (bundle != null) {
                    com.google.android.gms.internal.measurement.w6 O = com.google.android.gms.internal.measurement.x6.O();
                    for (String str : bundle.keySet()) {
                        com.google.android.gms.internal.measurement.w6 O2 = com.google.android.gms.internal.measurement.x6.O();
                        O2.u(str);
                        Object obj2 = bundle.get(str);
                        if (obj2 instanceof Long) {
                            O2.y(((Long) obj2).longValue());
                        } else if (obj2 instanceof String) {
                            O2.w((String) obj2);
                        } else if (obj2 instanceof Double) {
                            O2.A(((Double) obj2).doubleValue());
                        }
                        O.D(O2);
                    }
                    if (O.C() > 0) {
                        arrayList.add((com.google.android.gms.internal.measurement.x6) O.p());
                    }
                }
            }
            w6Var.E(arrayList);
        } else {
            this.f8322a.a().o().b("Ignoring invalid (type) event param value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final rc I(String str, com.google.android.gms.internal.measurement.e7 e7Var, com.google.android.gms.internal.measurement.s6 s6Var, String str2) {
        int indexOf;
        nf.a();
        w6 w6Var = this.f8322a;
        if (w6Var.w().H(str, c5.Q0)) {
            long currentTimeMillis = w6Var.f().currentTimeMillis();
            Set a10 = i6.i0.a(w6Var.w().C(str, c5.f7379v0).split(StringUtils.COMMA));
            pd pdVar = this.f8149b;
            cd C0 = pdVar.C0();
            String x10 = C0.f8149b.D0().x(str);
            Uri.Builder builder = new Uri.Builder();
            w6 w6Var2 = C0.f8322a;
            builder.scheme(w6Var2.w().C(str, c5.f7365o0));
            if (!TextUtils.isEmpty(x10)) {
                String C = w6Var2.w().C(str, c5.f7367p0);
                StringBuilder sb2 = new StringBuilder(String.valueOf(x10).length() + 1 + String.valueOf(C).length());
                sb2.append(x10);
                sb2.append(".");
                sb2.append(C);
                builder.authority(sb2.toString());
            } else {
                builder.authority(w6Var2.w().C(str, c5.f7367p0));
            }
            builder.path(w6Var2.w().C(str, c5.f7369q0));
            z(builder, "gmp_app_id", e7Var.n0(), a10);
            w6Var.w().A();
            z(builder, "gmp_version", String.valueOf(133005L), a10);
            String O = e7Var.O();
            m w10 = w6Var.w();
            b5 b5Var = c5.T0;
            if (w10.H(str, b5Var) && pdVar.D0().N(str)) {
                O = "";
            }
            z(builder, "app_instance_id", O, a10);
            z(builder, "rdid", e7Var.I(), a10);
            z(builder, "bundle_id", e7Var.D(), a10);
            String D = s6Var.D();
            String a11 = i6.t.a(D);
            if (true != TextUtils.isEmpty(a11)) {
                D = a11;
            }
            z(builder, "app_event_name", D, a10);
            z(builder, "app_version", String.valueOf(e7Var.w0()), a10);
            String w11 = e7Var.w();
            if (w6Var.w().H(str, b5Var) && pdVar.D0().K(str) && !TextUtils.isEmpty(w11) && (indexOf = w11.indexOf(".")) != -1) {
                w11 = w11.substring(0, indexOf);
            }
            z(builder, CommonUrlParts.OS_VERSION, w11, a10);
            z(builder, io.flutter.plugins.firebase.crashlytics.Constants.TIMESTAMP, String.valueOf(s6Var.G()), a10);
            String str3 = "1";
            if (e7Var.L()) {
                z(builder, "lat", "1", a10);
            }
            z(builder, "privacy_sandbox_version", String.valueOf(e7Var.a0()), a10);
            z(builder, "trigger_uri_source", "1", a10);
            z(builder, "trigger_uri_timestamp", String.valueOf(currentTimeMillis), a10);
            z(builder, "request_uuid", str2, a10);
            List<com.google.android.gms.internal.measurement.x6> t10 = s6Var.t();
            Bundle bundle = new Bundle();
            for (com.google.android.gms.internal.measurement.x6 x6Var : t10) {
                String D2 = x6Var.D();
                if (x6Var.K()) {
                    bundle.putString(D2, String.valueOf(x6Var.L()));
                } else if (x6Var.I()) {
                    bundle.putString(D2, String.valueOf(x6Var.J()));
                } else if (x6Var.E()) {
                    bundle.putString(D2, x6Var.F());
                } else if (x6Var.G()) {
                    bundle.putString(D2, String.valueOf(x6Var.H()));
                }
            }
            C(builder, w6Var.w().C(str, c5.f7377u0).split("\\|"), bundle, a10);
            List<com.google.android.gms.internal.measurement.w7> X0 = e7Var.X0();
            Bundle bundle2 = new Bundle();
            for (com.google.android.gms.internal.measurement.w7 w7Var : X0) {
                String E = w7Var.E();
                if (w7Var.L()) {
                    bundle2.putString(E, String.valueOf(w7Var.M()));
                } else if (w7Var.J()) {
                    bundle2.putString(E, String.valueOf(w7Var.K()));
                } else if (w7Var.F()) {
                    bundle2.putString(E, w7Var.G());
                } else if (w7Var.H()) {
                    bundle2.putString(E, String.valueOf(w7Var.I()));
                }
            }
            C(builder, w6Var.w().C(str, c5.f7375t0).split("\\|"), bundle2, a10);
            if (true != e7Var.W()) {
                str3 = CommonUrlParts.Values.FALSE_INTEGER;
            }
            z(builder, "dma", str3, a10);
            if (!e7Var.Y().isEmpty()) {
                z(builder, "dma_cps", e7Var.Y(), a10);
            }
            if (e7Var.e0()) {
                com.google.android.gms.internal.measurement.b6 f02 = e7Var.f0();
                if (!f02.N().isEmpty()) {
                    z(builder, "dl_gclid", f02.N(), a10);
                }
                if (!f02.P().isEmpty()) {
                    z(builder, "dl_gbraid", f02.P(), a10);
                }
                if (!f02.R().isEmpty()) {
                    z(builder, "dl_gs", f02.R(), a10);
                }
                if (f02.T() > 0) {
                    z(builder, "dl_ss_ts", String.valueOf(f02.T()), a10);
                }
                if (!f02.V().isEmpty()) {
                    z(builder, "mr_gclid", f02.V(), a10);
                }
                if (!f02.X().isEmpty()) {
                    z(builder, "mr_gbraid", f02.X(), a10);
                }
                if (!f02.Z().isEmpty()) {
                    z(builder, "mr_gs", f02.Z(), a10);
                }
                if (f02.b0() > 0) {
                    z(builder, "mr_click_ts", String.valueOf(f02.b0()), a10);
                }
            }
            return new rc(builder.build().toString(), currentTimeMillis, 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.android.gms.internal.measurement.t6 J(b0 b0Var) {
        com.google.android.gms.internal.measurement.s6 M = com.google.android.gms.internal.measurement.t6.M();
        M.J(b0Var.f7268e);
        e0 e0Var = b0Var.f7269f;
        d0 d0Var = new d0(e0Var);
        while (d0Var.hasNext()) {
            String next = d0Var.next();
            com.google.android.gms.internal.measurement.w6 O = com.google.android.gms.internal.measurement.x6.O();
            O.u(next);
            Object g10 = e0Var.g(next);
            n5.q.k(g10);
            H(O, g10);
            M.z(O);
        }
        String str = b0Var.f7266c;
        if (!TextUtils.isEmpty(str) && e0Var.g("_o") == null) {
            com.google.android.gms.internal.measurement.w6 O2 = com.google.android.gms.internal.measurement.x6.O();
            O2.u("_o");
            O2.w(str);
            M.y((com.google.android.gms.internal.measurement.x6) O2.p());
        }
        return (com.google.android.gms.internal.measurement.t6) M.p();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String K(com.google.android.gms.internal.measurement.d7 d7Var) {
        com.google.android.gms.internal.measurement.f6 Z0;
        if (d7Var == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nbatch {\n");
        if (d7Var.H()) {
            E(sb2, 0, "upload_subdomain", d7Var.I());
        }
        if (d7Var.F()) {
            E(sb2, 0, "sgtm_join_id", d7Var.G());
        }
        for (com.google.android.gms.internal.measurement.f7 f7Var : d7Var.C()) {
            if (f7Var != null) {
                y(sb2, 1);
                sb2.append("bundle {\n");
                if (f7Var.c0()) {
                    E(sb2, 1, CommonUrlParts.PROTOCOL_VERSION, Integer.valueOf(f7Var.g1()));
                }
                ag.a();
                w6 w6Var = this.f8322a;
                if (w6Var.w().H(f7Var.C(), c5.N0) && f7Var.M0()) {
                    E(sb2, 1, "session_stitching_token", f7Var.N0());
                }
                E(sb2, 1, "platform", f7Var.A2());
                if (f7Var.E()) {
                    E(sb2, 1, "gmp_version", Long.valueOf(f7Var.F()));
                }
                if (f7Var.G()) {
                    E(sb2, 1, "uploading_gmp_version", Long.valueOf(f7Var.H()));
                }
                if (f7Var.I0()) {
                    E(sb2, 1, "dynamite_version", Long.valueOf(f7Var.J0()));
                }
                if (f7Var.Y()) {
                    E(sb2, 1, "config_version", Long.valueOf(f7Var.Z()));
                }
                E(sb2, 1, "gmp_app_id", f7Var.R());
                E(sb2, 1, CommonUrlParts.APP_ID, f7Var.C());
                E(sb2, 1, "app_version", f7Var.D());
                if (f7Var.W()) {
                    E(sb2, 1, "app_version_major", Integer.valueOf(f7Var.X()));
                }
                E(sb2, 1, "firebase_instance_id", f7Var.V());
                if (f7Var.M()) {
                    E(sb2, 1, "dev_cert_hash", Long.valueOf(f7Var.N()));
                }
                E(sb2, 1, "app_store", f7Var.G2());
                if (f7Var.q2()) {
                    E(sb2, 1, "upload_timestamp_millis", Long.valueOf(f7Var.r2()));
                }
                if (f7Var.s2()) {
                    E(sb2, 1, "start_timestamp_millis", Long.valueOf(f7Var.t2()));
                }
                if (f7Var.u2()) {
                    E(sb2, 1, "end_timestamp_millis", Long.valueOf(f7Var.v2()));
                }
                if (f7Var.w2()) {
                    E(sb2, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(f7Var.x2()));
                }
                if (f7Var.y2()) {
                    E(sb2, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(f7Var.z2()));
                }
                E(sb2, 1, "app_instance_id", f7Var.L());
                E(sb2, 1, "resettable_device_id", f7Var.I());
                E(sb2, 1, "ds_id", f7Var.b0());
                if (f7Var.J()) {
                    E(sb2, 1, "limited_ad_tracking", Boolean.valueOf(f7Var.K()));
                }
                E(sb2, 1, CommonUrlParts.OS_VERSION, f7Var.B2());
                E(sb2, 1, "device_model", f7Var.C2());
                E(sb2, 1, "user_default_language", f7Var.D2());
                if (f7Var.E2()) {
                    E(sb2, 1, "time_zone_offset_minutes", Integer.valueOf(f7Var.F2()));
                }
                if (f7Var.O()) {
                    E(sb2, 1, "bundle_sequential_index", Integer.valueOf(f7Var.P()));
                }
                if (f7Var.a1()) {
                    E(sb2, 1, "delivery_index", Integer.valueOf(f7Var.b1()));
                }
                if (f7Var.S()) {
                    E(sb2, 1, "service_upload", Boolean.valueOf(f7Var.T()));
                }
                E(sb2, 1, "health_monitor", f7Var.Q());
                if (f7Var.G0()) {
                    E(sb2, 1, "retry_counter", Integer.valueOf(f7Var.H0()));
                }
                if (f7Var.K0()) {
                    E(sb2, 1, "consent_signals", f7Var.L0());
                }
                if (f7Var.T0()) {
                    E(sb2, 1, "is_dma_region", Boolean.valueOf(f7Var.U0()));
                }
                if (f7Var.V0()) {
                    E(sb2, 1, "core_platform_services", f7Var.W0());
                }
                if (f7Var.R0()) {
                    E(sb2, 1, "consent_diagnostics", f7Var.S0());
                }
                if (f7Var.O0()) {
                    E(sb2, 1, "target_os_version", Long.valueOf(f7Var.P0()));
                }
                nf.a();
                if (w6Var.w().H(f7Var.C(), c5.Q0)) {
                    E(sb2, 1, "ad_services_version", Integer.valueOf(f7Var.X0()));
                    if (f7Var.Y0() && (Z0 = f7Var.Z0()) != null) {
                        y(sb2, 2);
                        sb2.append("attribution_eligibility_status {\n");
                        E(sb2, 2, "eligible", Boolean.valueOf(Z0.C()));
                        E(sb2, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(Z0.D()));
                        E(sb2, 2, "pre_r", Boolean.valueOf(Z0.E()));
                        E(sb2, 2, "r_extensions_too_old", Boolean.valueOf(Z0.F()));
                        E(sb2, 2, "adservices_extension_too_old", Boolean.valueOf(Z0.G()));
                        E(sb2, 2, "ad_storage_not_allowed", Boolean.valueOf(Z0.H()));
                        E(sb2, 2, "measurement_manager_disabled", Boolean.valueOf(Z0.I()));
                        y(sb2, 2);
                        sb2.append("}\n");
                    }
                }
                if (f7Var.c1()) {
                    com.google.android.gms.internal.measurement.b6 d12 = f7Var.d1();
                    y(sb2, 2);
                    sb2.append("ad_campaign_info {\n");
                    if (d12.M()) {
                        E(sb2, 2, "deep_link_gclid", d12.N());
                    }
                    if (d12.O()) {
                        E(sb2, 2, "deep_link_gbraid", d12.P());
                    }
                    if (d12.Q()) {
                        E(sb2, 2, "deep_link_gad_source", d12.R());
                    }
                    if (d12.S()) {
                        E(sb2, 2, "deep_link_session_millis", Long.valueOf(d12.T()));
                    }
                    if (d12.U()) {
                        E(sb2, 2, "market_referrer_gclid", d12.V());
                    }
                    if (d12.W()) {
                        E(sb2, 2, "market_referrer_gbraid", d12.X());
                    }
                    if (d12.Y()) {
                        E(sb2, 2, "market_referrer_gad_source", d12.Z());
                    }
                    if (d12.a0()) {
                        E(sb2, 2, "market_referrer_click_millis", Long.valueOf(d12.b0()));
                    }
                    y(sb2, 2);
                    sb2.append("}\n");
                }
                if (f7Var.d0()) {
                    E(sb2, 1, "batching_timestamp_millis", Long.valueOf(f7Var.e0()));
                }
                if (f7Var.e1()) {
                    com.google.android.gms.internal.measurement.u7 f12 = f7Var.f1();
                    y(sb2, 2);
                    sb2.append("sgtm_diagnostics {\n");
                    int H = f12.H();
                    E(sb2, 2, "upload_type", H != 1 ? H != 2 ? H != 3 ? H != 4 ? "SDK_SERVICE_UPLOAD" : "PACKAGE_SERVICE_UPLOAD" : "SDK_CLIENT_UPLOAD" : "GA_UPLOAD" : "UPLOAD_TYPE_UNKNOWN");
                    E(sb2, 2, "client_upload_eligibility", f12.C().name());
                    int I = f12.I();
                    E(sb2, 2, "service_upload_eligibility", I != 1 ? I != 2 ? I != 3 ? I != 4 ? I != 5 ? "NON_PLAY_MISSING_SGTM_SERVER_URL" : "MISSING_SGTM_PROXY_INFO" : "MISSING_SGTM_SETTINGS" : "NOT_IN_ROLLOUT" : "SERVICE_UPLOAD_ELIGIBLE" : "SERVICE_UPLOAD_ELIGIBILITY_UNKNOWN");
                    y(sb2, 2);
                    sb2.append("}\n");
                }
                if (f7Var.f0()) {
                    com.google.android.gms.internal.measurement.p6 g02 = f7Var.g0();
                    y(sb2, 2);
                    sb2.append("consent_info_extra {\n");
                    for (com.google.android.gms.internal.measurement.m6 m6Var : g02.C()) {
                        y(sb2, 3);
                        sb2.append("limited_data_modes {\n");
                        int E = m6Var.E();
                        E(sb2, 3, "type", E != 1 ? E != 2 ? E != 3 ? E != 4 ? "AD_PERSONALIZATION" : "AD_USER_DATA" : "ANALYTICS_STORAGE" : "AD_STORAGE" : "CONSENT_TYPE_UNSPECIFIED");
                        int F = m6Var.F();
                        E(sb2, 3, "mode", F != 1 ? F != 2 ? "NO_DATA_MODE" : "LIMITED_MODE" : "NOT_LIMITED");
                        y(sb2, 3);
                        sb2.append("}\n");
                    }
                    y(sb2, 2);
                    sb2.append("}\n");
                }
                List<com.google.android.gms.internal.measurement.w7> n22 = f7Var.n2();
                if (n22 != null) {
                    for (com.google.android.gms.internal.measurement.w7 w7Var : n22) {
                        if (w7Var != null) {
                            y(sb2, 2);
                            sb2.append("user_property {\n");
                            E(sb2, 2, "set_timestamp_millis", w7Var.C() ? Long.valueOf(w7Var.D()) : null);
                            E(sb2, 2, Constants.NAME, w6Var.D().c(w7Var.E()));
                            E(sb2, 2, "string_value", w7Var.G());
                            E(sb2, 2, "int_value", w7Var.H() ? Long.valueOf(w7Var.I()) : null);
                            E(sb2, 2, "double_value", w7Var.L() ? Double.valueOf(w7Var.M()) : null);
                            y(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.h6> U = f7Var.U();
                if (U != null) {
                    for (com.google.android.gms.internal.measurement.h6 h6Var : U) {
                        if (h6Var != null) {
                            y(sb2, 2);
                            sb2.append("audience_membership {\n");
                            if (h6Var.C()) {
                                E(sb2, 2, "audience_id", Integer.valueOf(h6Var.D()));
                            }
                            if (h6Var.H()) {
                                E(sb2, 2, "new_audience", Boolean.valueOf(h6Var.I()));
                            }
                            D(sb2, 2, "current_data", h6Var.E());
                            if (h6Var.F()) {
                                D(sb2, 2, "previous_data", h6Var.G());
                            }
                            y(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.t6> h22 = f7Var.h2();
                if (h22 != null) {
                    for (com.google.android.gms.internal.measurement.t6 t6Var : h22) {
                        if (t6Var != null) {
                            y(sb2, 2);
                            sb2.append("event {\n");
                            E(sb2, 2, Constants.NAME, w6Var.D().a(t6Var.F()));
                            if (t6Var.G()) {
                                E(sb2, 2, "timestamp_millis", Long.valueOf(t6Var.H()));
                            }
                            if (t6Var.I()) {
                                E(sb2, 2, "previous_timestamp_millis", Long.valueOf(t6Var.J()));
                            }
                            if (t6Var.K()) {
                                E(sb2, 2, "count", Integer.valueOf(t6Var.L()));
                            }
                            if (t6Var.D() != 0) {
                                w(sb2, 2, t6Var.C());
                            }
                            y(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                y(sb2, 1);
                sb2.append("}\n");
            }
        }
        sb2.append("} // End-of-batch\n");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String L(com.google.android.gms.internal.measurement.e4 e4Var) {
        if (e4Var == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nevent_filter {\n");
        if (e4Var.C()) {
            E(sb2, 0, "filter_id", Integer.valueOf(e4Var.D()));
        }
        E(sb2, 0, "event_name", this.f8322a.D().a(e4Var.E()));
        String A = A(e4Var.K(), e4Var.L(), e4Var.N());
        if (!A.isEmpty()) {
            E(sb2, 0, "filter_type", A);
        }
        if (e4Var.I()) {
            F(sb2, 1, "event_count_filter", e4Var.J());
        }
        if (e4Var.G() > 0) {
            sb2.append("  filters {\n");
            for (com.google.android.gms.internal.measurement.g4 g4Var : e4Var.F()) {
                x(sb2, 2, g4Var);
            }
        }
        y(sb2, 1);
        sb2.append("}\n}\n");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String M(com.google.android.gms.internal.measurement.m4 m4Var) {
        if (m4Var == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nproperty_filter {\n");
        if (m4Var.C()) {
            E(sb2, 0, "filter_id", Integer.valueOf(m4Var.D()));
        }
        E(sb2, 0, "property_name", this.f8322a.D().c(m4Var.E()));
        String A = A(m4Var.G(), m4Var.H(), m4Var.J());
        if (!A.isEmpty()) {
            E(sb2, 0, "filter_type", A);
        }
        x(sb2, 1, m4Var.F());
        sb2.append("}\n");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Parcelable N(byte[] bArr, Parcelable.Creator creator) {
        Parcelable parcelable = null;
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            try {
                obtain.unmarshall(bArr, 0, bArr.length);
                obtain.setDataPosition(0);
                parcelable = (Parcelable) creator.createFromParcel(obtain);
            } catch (b.a unused) {
                this.f8322a.a().o().a("Failed to load parcelable from buffer");
            }
            return parcelable;
        } finally {
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List R(List list, List list2) {
        int i10;
        ArrayList arrayList = new ArrayList(list);
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() < 0) {
                this.f8322a.a().r().b("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    this.f8322a.a().r().c("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i11 = size2;
            i10 = size;
            size = i11;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean S(long j10, long j11) {
        if (j10 != 0 && j11 > 0 && Math.abs(this.f8322a.f().currentTimeMillis() - j10) <= j11) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long T(byte[] bArr) {
        n5.q.k(bArr);
        w6 w6Var = this.f8322a;
        w6Var.C().h();
        MessageDigest C = yd.C();
        if (C == null) {
            w6Var.a().o().a("Failed to get MD5");
            return 0L;
        }
        return yd.D(C.digest(bArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long U(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        return T(str.getBytes(Charset.forName("UTF-8")));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] V(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            this.f8322a.a().o().b("Failed to gzip content", e10);
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
        r5 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0038, code lost:
        if (r4 == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003a, code lost:
        r3 = (android.os.Parcelable[]) r3;
        r4 = r3.length;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003e, code lost:
        if (r7 >= r4) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
        r8 = r3[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
        if ((r8 instanceof android.os.Bundle) == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
        r5.add(Z((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
        if ((r3 instanceof java.util.ArrayList) == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
        r3 = (java.util.ArrayList) r3;
        r4 = r3.size();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005d, code lost:
        if (r7 >= r4) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005f, code lost:
        r8 = r3.get(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0065, code lost:
        if ((r8 instanceof android.os.Bundle) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0067, code lost:
        r5.add(Z((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0070, code lost:
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0075, code lost:
        if ((r3 instanceof android.os.Bundle) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0077, code lost:
        r5.add(Z((android.os.Bundle) r3, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0080, code lost:
        r0.put(r2, r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map Z(android.os.Bundle r11, boolean r12) {
        /*
            r10 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.Set r1 = r11.keySet()
            java.util.Iterator r1 = r1.iterator()
        Ld:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L84
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r3 = r11.get(r2)
            boolean r4 = r3 instanceof android.os.Parcelable[]
            if (r4 != 0) goto L30
            boolean r5 = r3 instanceof java.util.ArrayList
            if (r5 != 0) goto L30
            boolean r5 = r3 instanceof android.os.Bundle
            if (r5 == 0) goto L2a
            goto L30
        L2a:
            if (r3 == 0) goto Ld
            r0.put(r2, r3)
            goto Ld
        L30:
            if (r12 == 0) goto Ld
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            r6 = 0
            if (r4 == 0) goto L52
            android.os.Parcelable[] r3 = (android.os.Parcelable[]) r3
            int r4 = r3.length
            r7 = r6
        L3e:
            if (r7 >= r4) goto L80
            r8 = r3[r7]
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L4f
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.Map r8 = r10.Z(r8, r6)
            r5.add(r8)
        L4f:
            int r7 = r7 + 1
            goto L3e
        L52:
            boolean r4 = r3 instanceof java.util.ArrayList
            if (r4 == 0) goto L73
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r4 = r3.size()
            r7 = r6
        L5d:
            if (r7 >= r4) goto L80
            java.lang.Object r8 = r3.get(r7)
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L70
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.Map r8 = r10.Z(r8, r6)
            r5.add(r8)
        L70:
            int r7 = r7 + 1
            goto L5d
        L73:
            boolean r4 = r3 instanceof android.os.Bundle
            if (r4 == 0) goto L80
            android.os.Bundle r3 = (android.os.Bundle) r3
            java.util.Map r3 = r10.Z(r3, r6)
            r5.add(r3)
        L80:
            r0.put(r2, r5)
            goto Ld
        L84:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.td.Z(android.os.Bundle, boolean):java.util.Map");
    }

    @Override // com.google.android.gms.measurement.internal.ad
    protected final boolean l() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g0 m(com.google.android.gms.internal.measurement.b bVar) {
        String str;
        Object obj;
        Bundle n10 = n(bVar.f(), true);
        if (n10.containsKey("_o") && (obj = n10.get("_o")) != null) {
            str = obj.toString();
        } else {
            str = "app";
        }
        String str2 = str;
        String b10 = i6.t.b(bVar.b());
        if (b10 == null) {
            b10 = bVar.b();
        }
        return new g0(b10, new e0(n10), str2, bVar.a());
    }

    final Bundle n(Map map, boolean z10) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (obj instanceof ArrayList) {
                if (z10) {
                    ArrayList arrayList = (ArrayList) obj;
                    ArrayList arrayList2 = new ArrayList();
                    int size = arrayList.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        arrayList2.add(n((Map) arrayList.get(i10), false));
                    }
                    bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
                }
            } else {
                bundle.putString(str, obj.toString());
            }
        }
        return bundle;
    }
}
