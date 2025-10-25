package com.google.crypto.tink.shaded.protobuf;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public abstract class z {

    /* renamed from: a  reason: collision with root package name */
    static final Charset f8666a = Charset.forName("US-ASCII");

    /* renamed from: b  reason: collision with root package name */
    static final Charset f8667b = Charset.forName("UTF-8");

    /* renamed from: c  reason: collision with root package name */
    static final Charset f8668c = Charset.forName("ISO-8859-1");

    /* renamed from: d  reason: collision with root package name */
    public static final byte[] f8669d;

    /* renamed from: e  reason: collision with root package name */
    public static final ByteBuffer f8670e;

    /* renamed from: f  reason: collision with root package name */
    public static final i f8671f;

    /* loaded from: classes.dex */
    public interface a {
    }

    /* loaded from: classes.dex */
    public interface b {
    }

    /* loaded from: classes.dex */
    public interface c {
        boolean a(int i10);
    }

    /* loaded from: classes.dex */
    public interface d extends List, RandomAccess {
        void b();

        d c(int i10);

        boolean w();
    }

    static {
        byte[] bArr = new byte[0];
        f8669d = bArr;
        f8670e = ByteBuffer.wrap(bArr);
        f8671f = i.h(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(Object obj) {
        obj.getClass();
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object b(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }

    public static int c(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int d(byte[] bArr) {
        return e(bArr, 0, bArr.length);
    }

    static int e(byte[] bArr, int i10, int i11) {
        int h10 = h(i11, bArr, i10, i11);
        if (h10 == 0) {
            return 1;
        }
        return h10;
    }

    public static int f(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static boolean g(byte[] bArr) {
        return o1.m(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    public static String i(byte[] bArr) {
        return new String(bArr, f8667b);
    }
}
