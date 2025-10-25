package com.google.android.gms.internal.play_billing;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
final class l0 extends a0 implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final MessageDigest f7041a;

    /* renamed from: b  reason: collision with root package name */
    private final int f7042b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f7043c;

    /* renamed from: d  reason: collision with root package name */
    private final String f7044d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(String str, String str2) {
        MessageDigest b10 = b("SHA-256");
        this.f7041a = b10;
        this.f7042b = b10.getDigestLength();
        this.f7044d = "Hashing.sha256()";
        this.f7043c = c(b10);
    }

    private static MessageDigest b(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    private static boolean c(MessageDigest messageDigest) {
        try {
            messageDigest.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.f0
    public final g0 e() {
        if (this.f7043c) {
            try {
                return new k0((MessageDigest) this.f7041a.clone(), this.f7042b, null);
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new k0(b(this.f7041a.getAlgorithm()), this.f7042b, null);
    }

    public final String toString() {
        return this.f7044d;
    }
}
