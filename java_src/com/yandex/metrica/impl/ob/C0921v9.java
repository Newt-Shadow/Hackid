package com.yandex.metrica.impl.ob;

import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.v9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0921v9 {

    /* renamed from: a  reason: collision with root package name */
    private final a f13796a;

    /* renamed from: b  reason: collision with root package name */
    private final Ql f13797b;

    /* renamed from: com.yandex.metrica.impl.ob.v9$a */
    /* loaded from: classes2.dex */
    public static class a {
    }

    public C0921v9() {
        this(new a(), new Ql());
    }

    public byte[] a(byte[] bArr, String str) {
        try {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, 16);
            a aVar = this.f13796a;
            byte[] bytes = str.getBytes();
            aVar.getClass();
            C0958wm c0958wm = new C0958wm(AESEncrypter.DEFAULT_ALGORITHM, bytes, copyOfRange);
            if (A2.a(bArr)) {
                return null;
            }
            return this.f13797b.uncompress(c0958wm.a(bArr, 16, bArr.length - 16));
        } catch (Throwable unused) {
            return null;
        }
    }

    public C0921v9(a aVar, Ql ql) {
        this.f13796a = aVar;
        this.f13797b = ql;
    }
}
