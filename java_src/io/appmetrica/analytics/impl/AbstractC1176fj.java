package io.appmetrica.analytics.impl;

import java.security.MessageDigest;
/* renamed from: io.appmetrica.analytics.impl.fj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1176fj {
    public static byte[] a(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.reset();
        messageDigest.update(str.getBytes("UTF-8"));
        return messageDigest.digest();
    }
}
