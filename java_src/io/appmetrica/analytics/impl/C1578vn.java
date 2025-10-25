package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
/* renamed from: io.appmetrica.analytics.impl.vn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1578vn implements Zn {

    /* renamed from: a  reason: collision with root package name */
    public final Q8 f20835a;

    public C1578vn() {
        this(new Q8());
    }

    @Override // io.appmetrica.analytics.impl.Zn
    public final byte[] a(W8 w82, C1323lh c1323lh) {
        byte[] bArr = new byte[0];
        try {
            bArr = Base64Utils.decompressBase64GzipAsBytes(w82.f19159b);
        } catch (Throwable unused) {
        }
        byte[] a10 = ((P8) this.f20835a.f18812a.a(w82.f19172o)).a(bArr);
        return a10 == null ? new byte[0] : a10;
    }

    public C1578vn(Q8 q82) {
        this.f20835a = q82;
    }

    public final Q8 a() {
        return this.f20835a;
    }
}
