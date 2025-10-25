package com.yandex.metrica.networktasks.api;
/* loaded from: classes2.dex */
public interface RequestBodyEncrypter {
    byte[] encrypt(byte[] bArr);

    RequestBodyEncryptionMode getEncryptionMode();
}
