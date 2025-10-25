package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: com.yandex.metrica.impl.ob.wm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0958wm {

    /* renamed from: a  reason: collision with root package name */
    private final String f13909a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f13910b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f13911c;

    public C0958wm(String str, byte[] bArr, byte[] bArr2) {
        this.f13909a = str;
        this.f13910b = bArr;
        this.f13911c = bArr2;
    }

    @SuppressLint({"TrulyRandom"})
    public byte[] a(byte[] bArr) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.f13910b, "AES");
        Cipher cipher = Cipher.getInstance(this.f13909a);
        cipher.init(1, secretKeySpec, new IvParameterSpec(this.f13911c));
        return cipher.doFinal(bArr);
    }

    public byte[] a(byte[] bArr, int i10, int i11) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.f13910b, "AES");
        Cipher cipher = Cipher.getInstance(this.f13909a);
        cipher.init(2, secretKeySpec, new IvParameterSpec(this.f13911c));
        return cipher.doFinal(bArr, i10, i11);
    }
}
