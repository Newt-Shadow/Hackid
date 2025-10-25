package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import android.util.Base64;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
/* renamed from: com.yandex.metrica.impl.ob.xm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0982xm implements Cm {

    /* renamed from: a  reason: collision with root package name */
    private final C0958wm f13965a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0982xm() {
        this(new C0934vm(F0.g().e()));
    }

    @Override // com.yandex.metrica.impl.ob.Cm
    public Bm a(C0445c0 c0445c0) {
        byte[] a10;
        String encodeToString;
        String q10 = c0445c0.q();
        if (!TextUtils.isEmpty(q10)) {
            try {
                a10 = this.f13965a.a(q10.getBytes("UTF-8"));
            } catch (Throwable unused) {
            }
            if (a10 != null) {
                encodeToString = Base64.encodeToString(a10, 0);
                return new Bm(c0445c0.f(encodeToString), Em.AES_VALUE_ENCRYPTION);
            }
        }
        encodeToString = null;
        return new Bm(c0445c0.f(encodeToString), Em.AES_VALUE_ENCRYPTION);
    }

    C0982xm(C0934vm c0934vm) {
        this(new C0958wm(AESEncrypter.DEFAULT_ALGORITHM, c0934vm.b(), c0934vm.a()));
    }

    C0982xm(C0958wm c0958wm) {
        this.f13965a = c0958wm;
    }

    @Override // com.yandex.metrica.impl.ob.Cm
    public byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (bArr == null || bArr.length <= 0) {
            return bArr2;
        }
        try {
            byte[] decode = Base64.decode(bArr, 0);
            C0958wm c0958wm = this.f13965a;
            c0958wm.getClass();
            return c0958wm.a(decode, 0, decode.length);
        } catch (Throwable unused) {
            return bArr2;
        }
    }
}
