package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.util.Base64;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
/* renamed from: com.yandex.metrica.impl.ob.ym  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1006ym {
    public C1006ym() {
        this(AESEncrypter.DEFAULT_ALGORITHM, "RSA/ECB/PKCS1Padding");
    }

    @SuppressLint({"TrulyRandom"})
    public byte[] a(byte[] bArr) {
        try {
            SecureRandom secureRandom = new SecureRandom();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[16];
            secureRandom.nextBytes(bArr3);
            secureRandom.nextBytes(bArr2);
            return a(bArr, bArr3, bArr2, KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDhmH/m2qrRjxDHP794CeaZpENQNYydf8pqyXJilo6XxK+n+pvo27VxWfB3Z1yHrtKow+eZXKLQzrQ8wZMfRgADrYCQJ20y2hGZEUCN1tGSM+xqVKMeCtVi3NvQa54Cx7mT5ECVsH5DKEs/aeScDHP56FzcgEbtOSwyRZ8dsEM0wwIDAQAB", 0))));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException unused) {
            return null;
        }
    }

    C1006ym(String str, String str2) {
    }

    byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, PublicKey publicKey) {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] byteArray;
        Cipher cipher;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(bArr2.length + bArr3.length);
            byteArrayOutputStream2.write(bArr2);
            byteArrayOutputStream2.write(bArr3);
            byteArray = byteArrayOutputStream2.toByteArray();
            byteArrayOutputStream2.close();
            cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, publicKey);
            byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        } catch (Throwable unused) {
            byteArrayOutputStream = null;
        }
        try {
            byteArrayOutputStream.write(cipher.doFinal(byteArray));
            byteArrayOutputStream.write(new C0958wm(AESEncrypter.DEFAULT_ALGORITHM, bArr2, bArr3).a(bArr));
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            A2.a((Closeable) byteArrayOutputStream);
            return byteArray2;
        } catch (Throwable unused2) {
            A2.a((Closeable) byteArrayOutputStream);
            return null;
        }
    }
}
