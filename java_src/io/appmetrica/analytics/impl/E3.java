package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class E3 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f18136a;

    /* renamed from: b  reason: collision with root package name */
    public final Ue f18137b;

    /* renamed from: c  reason: collision with root package name */
    public final String f18138c;

    /* renamed from: d  reason: collision with root package name */
    public final SafePackageManager f18139d;

    public E3(Context context, Ue ue2, String str, SafePackageManager safePackageManager) {
        this.f18136a = context;
        this.f18137b = ue2;
        this.f18138c = str;
        this.f18139d = safePackageManager;
    }

    public final List a() {
        Signature[] signatureArr;
        String str;
        SigningInfo signingInfo;
        boolean hasMultipleSigners;
        List<String> f10 = this.f18137b.f();
        boolean isEmpty = f10.isEmpty();
        ArrayList arrayList = f10;
        if (isEmpty) {
            ArrayList arrayList2 = new ArrayList();
            try {
                if (AndroidUtils.isApiAchieved(28)) {
                    signingInfo = this.f18139d.getPackageInfo(this.f18136a, this.f18138c, 134217728).signingInfo;
                    hasMultipleSigners = signingInfo.hasMultipleSigners();
                    signatureArr = hasMultipleSigners ? signingInfo.getApkContentsSigners() : signingInfo.getSigningCertificateHistory();
                } else {
                    signatureArr = this.f18139d.getPackageInfo(this.f18136a, this.f18138c, 64).signatures;
                }
                if (signatureArr != null) {
                    for (Signature signature : signatureArr) {
                        try {
                            str = StringUtils.formatSha1(MessageDigest.getInstance("SHA1").digest(signature.toByteArray()));
                        } catch (Throwable unused) {
                            str = null;
                        }
                        if (str != null) {
                            arrayList2.add(str);
                        }
                    }
                }
            } catch (Throwable unused2) {
            }
            Collections.sort(arrayList2);
            boolean isEmpty2 = arrayList2.isEmpty();
            arrayList = arrayList2;
            if (!isEmpty2) {
                this.f18137b.a(arrayList2).b();
                arrayList = arrayList2;
            }
        }
        return arrayList;
    }
}
