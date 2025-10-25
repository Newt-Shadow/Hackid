package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class od {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f6618a = 0;

    static {
        if (ld.f() && ld.g()) {
            int i10 = x9.f6884a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0076 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x007a A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(byte[] r5, int r6, int r7) {
        /*
        L0:
            if (r6 >= r7) goto L9
            r0 = r5[r6]
            if (r0 < 0) goto L9
            int r6 = r6 + 1
            goto L0
        L9:
            if (r6 < r7) goto Ld
            goto L7a
        Ld:
            if (r6 >= r7) goto L7a
            int r0 = r6 + 1
            r6 = r5[r6]
            if (r6 >= 0) goto L78
            r1 = -32
            r2 = -65
            if (r6 >= r1) goto L29
            if (r0 < r7) goto L1e
            goto L57
        L1e:
            r1 = -62
            if (r6 < r1) goto L76
            int r6 = r0 + 1
            r0 = r5[r0]
            if (r0 <= r2) goto Ld
            goto L76
        L29:
            r3 = -16
            if (r6 >= r3) goto L4f
            int r3 = r7 + (-1)
            if (r0 < r3) goto L36
            int r6 = d(r5, r0, r7)
            goto L57
        L36:
            int r3 = r0 + 1
            r0 = r5[r0]
            if (r0 > r2) goto L76
            r4 = -96
            if (r6 != r1) goto L42
            if (r0 < r4) goto L76
        L42:
            r1 = -19
            if (r6 != r1) goto L48
            if (r0 >= r4) goto L76
        L48:
            int r6 = r3 + 1
            r0 = r5[r3]
            if (r0 <= r2) goto Ld
            goto L76
        L4f:
            int r1 = r7 + (-2)
            if (r0 < r1) goto L5a
            int r6 = d(r5, r0, r7)
        L57:
            if (r6 == 0) goto L7a
            goto L76
        L5a:
            int r1 = r0 + 1
            r0 = r5[r0]
            if (r0 > r2) goto L76
            int r6 = r6 << 28
            int r0 = r0 + 112
            int r6 = r6 + r0
            int r6 = r6 >> 30
            if (r6 != 0) goto L76
            int r6 = r1 + 1
            r0 = r5[r1]
            if (r0 > r2) goto L76
            int r0 = r6 + 1
            r6 = r5[r6]
            if (r6 > r2) goto L76
            goto L78
        L76:
            r5 = 0
            return r5
        L78:
            r6 = r0
            goto Ld
        L7a:
            r5 = 1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.od.a(byte[], int, int):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(String str) {
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        while (i11 < length && str.charAt(i11) < 128) {
            i11++;
        }
        int i12 = length;
        while (true) {
            if (i11 >= length) {
                break;
            }
            char charAt = str.charAt(i11);
            if (charAt < 2048) {
                i12 += (127 - charAt) >>> 31;
                i11++;
            } else {
                int length2 = str.length();
                while (i11 < length2) {
                    char charAt2 = str.charAt(i11);
                    if (charAt2 < 2048) {
                        i10 += (127 - charAt2) >>> 31;
                    } else {
                        i10 += 2;
                        if (charAt2 >= 55296 && charAt2 <= 57343) {
                            if (Character.codePointAt(str, i11) >= 65536) {
                                i11++;
                            } else {
                                throw new nd(i11, length2);
                            }
                        }
                    }
                    i11++;
                }
                i12 += i10;
            }
        }
        if (i12 >= length) {
            return i12;
        }
        long j10 = i12 + 4294967296L;
        StringBuilder sb2 = new StringBuilder(String.valueOf(j10).length() + 34);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(j10);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0114, code lost:
        return r10 + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int c(java.lang.String r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.od.c(java.lang.String, byte[], int, int):int");
    }

    static /* synthetic */ int d(byte[] bArr, int i10, int i11) {
        int i12 = i11 - i10;
        byte b10 = bArr[i10 - 1];
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 == 2) {
                    byte b11 = bArr[i10];
                    byte b12 = bArr[i10 + 1];
                    if (b10 <= -12 && b11 <= -65 && b12 <= -65) {
                        return (b12 << 16) ^ ((b11 << 8) ^ b10);
                    }
                    return -1;
                }
                throw new AssertionError();
            }
            byte b13 = bArr[i10];
            if (b10 <= -12 && b13 <= -65) {
                return (b13 << 8) ^ b10;
            }
            return -1;
        } else if (b10 <= -12) {
            return b10;
        } else {
            return -1;
        }
    }
}
