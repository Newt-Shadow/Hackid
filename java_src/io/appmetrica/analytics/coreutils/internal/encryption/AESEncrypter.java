package io.appmetrica.analytics.coreutils.internal.encryption;

import android.annotation.SuppressLint;
import io.appmetrica.analytics.coreapi.internal.crypto.Encrypter;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public class AESEncrypter implements Encrypter {
    public static final String DEFAULT_ALGORITHM = "AES/CBC/PKCS5Padding";
    public static final int DEFAULT_KEY_LENGTH = 16;
    public static final String TAG = "[AESEncrypter]";

    /* renamed from: a  reason: collision with root package name */
    private final String f17724a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f17725b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f17726c;

    public AESEncrypter(String str, byte[] bArr, byte[] bArr2) {
        this.f17724a = str;
        this.f17725b = bArr;
        this.f17726c = bArr2;
    }

    @SuppressLint({"TrulyRandom"})
    public byte[] decrypt(byte[] bArr) {
        return decrypt(bArr, 0, bArr.length);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.crypto.Encrypter
    @SuppressLint({"TrulyRandom"})
    public byte[] encrypt(byte[] bArr) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.f17725b, "AES");
            Cipher cipher = Cipher.getInstance(this.f17724a);
            cipher.init(1, secretKeySpec, new IvParameterSpec(this.f17726c));
            return cipher.doFinal(bArr);
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getAlgorithm() {
        return this.f17724a;
    }

    public byte[] getIV() {
        return this.f17726c;
    }

    public byte[] getPassword() {
        return this.f17725b;
    }

    public byte[] decrypt(byte[] bArr, int i10, int i11) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.f17725b, "AES");
            Cipher cipher = Cipher.getInstance(this.f17724a);
            cipher.init(2, secretKeySpec, new IvParameterSpec(this.f17726c));
            return cipher.doFinal(bArr, i10, i11);
        } catch (Throwable unused) {
            return null;
        }
    }
}
