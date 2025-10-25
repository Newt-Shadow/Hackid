package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public abstract class ob {

    /* renamed from: a  reason: collision with root package name */
    static final Charset f6615a;

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f6616b;

    static {
        Charset.forName("US-ASCII");
        f6615a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f6616b = bArr;
        ByteBuffer.wrap(bArr);
        int i10 = ma.f6560a;
        try {
            new la(bArr, 0, 0, false, null).c(0);
        } catch (qb e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("messageType");
    }

    public static int b(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(ic icVar) {
        return false;
    }
}
