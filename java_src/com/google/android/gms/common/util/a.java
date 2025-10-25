package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
public abstract class a {
    public static byte[] a(Context context, String str) {
        MessageDigest b10;
        PackageInfo e10 = t5.e.a(context).e(str, 64);
        Signature[] signatureArr = e10.signatures;
        if (signatureArr != null && signatureArr.length == 1 && (b10 = b("SHA1")) != null) {
            return b10.digest(e10.signatures[0].toByteArray());
        }
        return null;
    }

    public static MessageDigest b(String str) {
        MessageDigest messageDigest;
        for (int i10 = 0; i10 < 2; i10++) {
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }
}
