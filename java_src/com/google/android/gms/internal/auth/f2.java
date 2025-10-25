package com.google.android.gms.internal.auth;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public abstract class f2 {

    /* renamed from: a  reason: collision with root package name */
    static final Charset f6008a = Charset.forName("US-ASCII");

    /* renamed from: b  reason: collision with root package name */
    static final Charset f6009b = Charset.forName("UTF-8");

    /* renamed from: c  reason: collision with root package name */
    static final Charset f6010c = Charset.forName("ISO-8859-1");

    /* renamed from: d  reason: collision with root package name */
    public static final byte[] f6011d;

    /* renamed from: e  reason: collision with root package name */
    public static final ByteBuffer f6012e;

    /* renamed from: f  reason: collision with root package name */
    public static final t1 f6013f;

    static {
        byte[] bArr = new byte[0];
        f6011d = bArr;
        f6012e = ByteBuffer.wrap(bArr);
        int i10 = t1.f6169a;
        r1 r1Var = new r1(bArr, 0, 0, false, null);
        try {
            r1Var.c(0);
            f6013f = r1Var;
        } catch (g2 e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static int a(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object c(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("messageType");
    }

    public static String d(byte[] bArr) {
        return new String(bArr, f6009b);
    }
}
