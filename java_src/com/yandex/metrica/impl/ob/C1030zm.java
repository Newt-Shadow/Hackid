package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.RequestBodyEncrypter;
import com.yandex.metrica.networktasks.api.RequestBodyEncryptionMode;
/* renamed from: com.yandex.metrica.impl.ob.zm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1030zm implements RequestBodyEncrypter {

    /* renamed from: a  reason: collision with root package name */
    private C1006ym f14092a;

    public C1030zm() {
        this(new C1006ym());
    }

    @Override // com.yandex.metrica.networktasks.api.RequestBodyEncrypter
    public byte[] encrypt(byte[] bArr) {
        return this.f14092a.a(bArr);
    }

    @Override // com.yandex.metrica.networktasks.api.RequestBodyEncrypter
    public RequestBodyEncryptionMode getEncryptionMode() {
        return RequestBodyEncryptionMode.AES_RSA;
    }

    C1030zm(C1006ym c1006ym) {
        this.f14092a = c1006ym;
    }
}
