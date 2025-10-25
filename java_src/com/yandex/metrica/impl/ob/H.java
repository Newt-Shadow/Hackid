package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2.dex */
public class H {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10139a;

    /* renamed from: b  reason: collision with root package name */
    private final C0454c9 f10140b;

    /* renamed from: c  reason: collision with root package name */
    private final String f10141c;

    /* renamed from: d  reason: collision with root package name */
    private final C0717mn f10142d;

    public H(Context context, C0454c9 c0454c9) {
        this(context, c0454c9, context.getPackageName(), new C0717mn());
    }

    public List<String> a() {
        Signature[] signatureArr;
        String str;
        SigningInfo signingInfo;
        boolean hasMultipleSigners;
        List<String> h10 = this.f10140b.h();
        boolean isEmpty = h10.isEmpty();
        ArrayList arrayList = h10;
        if (isEmpty) {
            ArrayList arrayList2 = new ArrayList();
            try {
                if (A2.a(28)) {
                    signingInfo = this.f10142d.b(this.f10139a, this.f10141c, 134217728).signingInfo;
                    hasMultipleSigners = signingInfo.hasMultipleSigners();
                    signatureArr = hasMultipleSigners ? signingInfo.getApkContentsSigners() : signingInfo.getSigningCertificateHistory();
                } else {
                    signatureArr = this.f10142d.b(this.f10139a, this.f10141c, 64).signatures;
                }
                if (signatureArr != null) {
                    for (Signature signature : signatureArr) {
                        try {
                            str = C0419b.a(MessageDigest.getInstance("SHA1").digest(signature.toByteArray())).toUpperCase(Locale.US).replaceAll("(.{2})(?=.+)", "$1:");
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
                this.f10140b.a(arrayList2).d();
                arrayList = arrayList2;
            }
        }
        return arrayList;
    }

    H(Context context, C0454c9 c0454c9, String str, C0717mn c0717mn) {
        this.f10139a = context;
        this.f10140b = c0454c9;
        this.f10141c = str;
        this.f10142d = c0717mn;
    }
}
