package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.text.TextUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Map;
import o6.r;
/* loaded from: classes.dex */
public abstract class pc {

    /* renamed from: a  reason: collision with root package name */
    static final o6.q f7880a = o6.q.L("Version", "GoogleConsent", "VendorConsent", "VendorLegitimateInterest", "gdprApplies", "EnableAdvertiserConsentMode", "PolicyVersion", "PurposeConsents", "PurposeOneTreatment", "Purpose1", "Purpose3", "Purpose4", "Purpose7", "CmpSdkID", "PublisherCC", "PublisherRestrictions1", "PublisherRestrictions3", "PublisherRestrictions4", "PublisherRestrictions7", "AuthorizePurpose1", "AuthorizePurpose3", "AuthorizePurpose4", "AuthorizePurpose7", "PurposeDiagnostics");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getString(str, "");
        } catch (ClassCastException unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getInt(str, -1);
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0200  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final boolean c(com.google.android.gms.internal.measurement.s9 r21, o6.r r22, o6.r r23, o6.s r24, char[] r25, int r26, int r27, int r28, int r29, int r30, java.lang.String r31, java.lang.String r32, java.lang.String r33, boolean r34, boolean r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.pc.c(com.google.android.gms.internal.measurement.s9, o6.r, o6.r, o6.s, char[], int, int, int, int, int, java.lang.String, java.lang.String, java.lang.String, boolean, boolean, boolean):boolean");
    }

    public static final Map d(o6.r rVar, o6.r rVar2, o6.s sVar, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        int zza;
        int zza2;
        int zza3;
        int zza4;
        if (!z12) {
            return o6.r.k();
        }
        com.google.android.gms.internal.measurement.s9 s9Var = com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE;
        com.google.android.gms.internal.measurement.t9 t9Var = (com.google.android.gms.internal.measurement.t9) rVar2.get(s9Var);
        com.google.android.gms.internal.measurement.s9 s9Var2 = com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE;
        com.google.android.gms.internal.measurement.t9 t9Var2 = (com.google.android.gms.internal.measurement.t9) rVar2.get(s9Var2);
        com.google.android.gms.internal.measurement.s9 s9Var3 = com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS;
        com.google.android.gms.internal.measurement.t9 t9Var3 = (com.google.android.gms.internal.measurement.t9) rVar2.get(s9Var3);
        com.google.android.gms.internal.measurement.s9 s9Var4 = com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE;
        com.google.android.gms.internal.measurement.t9 t9Var4 = (com.google.android.gms.internal.measurement.t9) rVar2.get(s9Var4);
        r.a f10 = o6.r.a().f("Version", "2").f("VendorConsent", true != z10 ? CommonUrlParts.Values.FALSE_INTEGER : "1").f("VendorLegitimateInterest", true != z11 ? CommonUrlParts.Values.FALSE_INTEGER : "1").f("gdprApplies", i12 != 1 ? CommonUrlParts.Values.FALSE_INTEGER : "1").f("EnableAdvertiserConsentMode", i11 != 1 ? CommonUrlParts.Values.FALSE_INTEGER : "1").f("PolicyVersion", String.valueOf(i13)).f("CmpSdkID", String.valueOf(i10)).f("PurposeOneTreatment", i14 != 1 ? CommonUrlParts.Values.FALSE_INTEGER : "1").f("PublisherCC", str);
        if (t9Var != null) {
            zza = t9Var.zza();
        } else {
            zza = com.google.android.gms.internal.measurement.t9.PURPOSE_RESTRICTION_UNDEFINED.zza();
        }
        r.a f11 = f10.f("PublisherRestrictions1", String.valueOf(zza));
        if (t9Var2 != null) {
            zza2 = t9Var2.zza();
        } else {
            zza2 = com.google.android.gms.internal.measurement.t9.PURPOSE_RESTRICTION_UNDEFINED.zza();
        }
        r.a f12 = f11.f("PublisherRestrictions3", String.valueOf(zza2));
        if (t9Var3 != null) {
            zza3 = t9Var3.zza();
        } else {
            zza3 = com.google.android.gms.internal.measurement.t9.PURPOSE_RESTRICTION_UNDEFINED.zza();
        }
        r.a f13 = f12.f("PublisherRestrictions4", String.valueOf(zza3));
        if (t9Var4 != null) {
            zza4 = t9Var4.zza();
        } else {
            zza4 = com.google.android.gms.internal.measurement.t9.PURPOSE_RESTRICTION_UNDEFINED.zza();
        }
        return f13.f("PublisherRestrictions7", String.valueOf(zza4)).i(o6.r.l("Purpose1", f(s9Var, rVar, rVar2, sVar, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true), "Purpose3", f(s9Var2, rVar, rVar2, sVar, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true), "Purpose4", f(s9Var3, rVar, rVar2, sVar, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true), "Purpose7", f(s9Var4, rVar, rVar2, sVar, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true))).i(o6.r.m("AuthorizePurpose1", true != c(s9Var, rVar, rVar2, sVar, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true) ? CommonUrlParts.Values.FALSE_INTEGER : "1", "AuthorizePurpose3", true != c(s9Var2, rVar, rVar2, sVar, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true) ? CommonUrlParts.Values.FALSE_INTEGER : "1", "AuthorizePurpose4", true != c(s9Var3, rVar, rVar2, sVar, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true) ? CommonUrlParts.Values.FALSE_INTEGER : "1", "AuthorizePurpose7", true != c(s9Var4, rVar, rVar2, sVar, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true) ? CommonUrlParts.Values.FALSE_INTEGER : "1", "PurposeDiagnostics", new String(cArr))).c();
    }

    private static final int e(com.google.android.gms.internal.measurement.s9 s9Var, o6.r rVar, o6.r rVar2, o6.s sVar, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        if (s9Var == com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE) {
            return 1;
        }
        if (s9Var == com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE) {
            return 2;
        }
        if (s9Var == com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS) {
            return 3;
        }
        return s9Var == com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE ? 4 : -1;
    }

    private static final String f(com.google.android.gms.internal.measurement.s9 s9Var, o6.r rVar, o6.r rVar2, o6.s sVar, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        String str4;
        boolean isEmpty = TextUtils.isEmpty(str2);
        String str5 = CommonUrlParts.Values.FALSE_INTEGER;
        if (!isEmpty && str2.length() >= s9Var.zza()) {
            str4 = String.valueOf(str2.charAt(s9Var.zza() - 1));
        } else {
            str4 = CommonUrlParts.Values.FALSE_INTEGER;
        }
        if (!TextUtils.isEmpty(str3) && str3.length() >= s9Var.zza()) {
            str5 = String.valueOf(str3.charAt(s9Var.zza() - 1));
        }
        return String.valueOf(str4).concat(String.valueOf(str5));
    }

    private static final boolean g(com.google.android.gms.internal.measurement.s9 s9Var, o6.r rVar, o6.r rVar2, o6.s sVar, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        char c10;
        int e10 = e(s9Var, rVar, rVar2, sVar, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true);
        boolean z13 = false;
        if (!z10) {
            c10 = '4';
        } else if (str2.length() < s9Var.zza()) {
            c10 = '0';
        } else {
            char charAt = str2.charAt(s9Var.zza() - 1);
            char c11 = '1';
            if (charAt == '1') {
                z13 = true;
            }
            if (e10 > 0 && cArr[e10] != '2') {
                if (charAt != '1') {
                    c11 = '6';
                }
                cArr[e10] = c11;
            }
            return z13;
        }
        if (e10 > 0 && cArr[e10] != '2') {
            cArr[e10] = c10;
        }
        return false;
    }

    private static final boolean h(com.google.android.gms.internal.measurement.s9 s9Var, o6.r rVar, o6.r rVar2, o6.s sVar, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        char c10;
        int e10 = e(s9Var, rVar, rVar2, sVar, cArr, i10, i11, i12, i13, i14, str, str2, str3, z10, z11, true);
        boolean z13 = false;
        if (!z11) {
            c10 = '5';
        } else if (str3.length() < s9Var.zza()) {
            c10 = '0';
        } else {
            char charAt = str3.charAt(s9Var.zza() - 1);
            char c11 = '1';
            if (charAt == '1') {
                z13 = true;
            }
            if (e10 > 0 && cArr[e10] != '2') {
                if (charAt != '1') {
                    c11 = '7';
                }
                cArr[e10] = c11;
            }
            return z13;
        }
        if (e10 > 0 && cArr[e10] != '2') {
            cArr[e10] = c10;
        }
        return false;
    }

    private static final com.google.android.gms.internal.measurement.t9 i(com.google.android.gms.internal.measurement.s9 s9Var, o6.r rVar, o6.r rVar2, o6.s sVar, char[] cArr, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3, boolean z10, boolean z11, boolean z12) {
        return (com.google.android.gms.internal.measurement.t9) rVar2.getOrDefault(s9Var, com.google.android.gms.internal.measurement.t9.PURPOSE_RESTRICTION_UNDEFINED);
    }
}
