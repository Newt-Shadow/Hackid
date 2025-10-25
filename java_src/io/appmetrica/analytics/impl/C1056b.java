package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import android.util.Base64;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
/* renamed from: io.appmetrica.analytics.impl.b  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1056b implements P8 {

    /* renamed from: a  reason: collision with root package name */
    public final AESEncrypter f19414a;

    public C1056b() {
        this(new C1031a(C1665za.j().f()));
    }

    @Override // io.appmetrica.analytics.impl.P8
    public final I8 a(C1138e6 c1138e6) {
        byte[] encrypt;
        String encodeToString;
        String value = c1138e6.getValue();
        if (!TextUtils.isEmpty(value)) {
            try {
                encrypt = this.f19414a.encrypt(value.getBytes("UTF-8"));
            } catch (Throwable unused) {
            }
            if (encrypt != null) {
                encodeToString = Base64.encodeToString(encrypt, 0);
                c1138e6.setValue(encodeToString);
                return new I8(c1138e6, R8.AES_VALUE_ENCRYPTION);
            }
        }
        encodeToString = null;
        c1138e6.setValue(encodeToString);
        return new I8(c1138e6, R8.AES_VALUE_ENCRYPTION);
    }

    public C1056b(C1031a c1031a) {
        this(new AESEncrypter(AESEncrypter.DEFAULT_ALGORITHM, c1031a.b(), c1031a.a()));
    }

    public C1056b(AESEncrypter aESEncrypter) {
        this.f19414a = aESEncrypter;
    }

    @Override // io.appmetrica.analytics.impl.P8
    public final byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (bArr == null || bArr.length <= 0) {
            return bArr2;
        }
        try {
            return this.f19414a.decrypt(Base64.decode(bArr, 0));
        } catch (Throwable unused) {
            return bArr2;
        }
    }

    public final R8 a() {
        return R8.AES_VALUE_ENCRYPTION;
    }
}
