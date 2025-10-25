package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import io.appmetrica.analytics.coreutils.internal.io.GZIPCompressor;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.n3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1359n3 {

    /* renamed from: a  reason: collision with root package name */
    public final C1334m3 f20156a;

    /* renamed from: b  reason: collision with root package name */
    public final GZIPCompressor f20157b;

    public C1359n3() {
        this(new C1334m3(), new GZIPCompressor());
    }

    public final byte[] a(byte[] bArr) {
        try {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, 16);
            C1334m3 c1334m3 = this.f20156a;
            byte[] bytes = "hBnBQbZrmjPXEWVJ".getBytes();
            c1334m3.getClass();
            AESEncrypter aESEncrypter = new AESEncrypter(AESEncrypter.DEFAULT_ALGORITHM, bytes, copyOfRange);
            if (bArr != null && bArr.length != 0) {
                return this.f20157b.uncompress(aESEncrypter.decrypt(bArr, 16, bArr.length - 16));
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public C1359n3(C1334m3 c1334m3, GZIPCompressor gZIPCompressor) {
        this.f20156a = c1334m3;
        this.f20157b = gZIPCompressor;
    }
}
