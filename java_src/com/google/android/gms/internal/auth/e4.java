package com.google.android.gms.internal.auth;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class e4 {

    /* renamed from: a  reason: collision with root package name */
    private static final c4 f6003a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f6004b = 0;

    static {
        if (a4.u() && a4.v()) {
            int i10 = c1.f5979a;
        }
        f6003a = new d4();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ int a(byte[] bArr, int i10, int i11) {
        int i12 = i11 - i10;
        byte b10 = bArr[i10 - 1];
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 == 2) {
                    byte b11 = bArr[i10];
                    byte b12 = bArr[i10 + 1];
                    if (b10 <= -12 && b11 <= -65 && b12 <= -65) {
                        return ((b11 << 8) ^ b10) ^ (b12 << 16);
                    }
                } else {
                    throw new AssertionError();
                }
            } else {
                byte b13 = bArr[i10];
                if (b10 <= -12 && b13 <= -65) {
                    return b10 ^ (b13 << 8);
                }
            }
        } else if (b10 <= -12) {
            return b10;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(byte[] bArr) {
        return f6003a.b(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(byte[] bArr, int i10, int i11) {
        return f6003a.b(bArr, i10, i11);
    }
}
