package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.z;
import org.apache.tika.fork.ForkServer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f8430a;

        /* renamed from: b  reason: collision with root package name */
        public long f8431b;

        /* renamed from: c  reason: collision with root package name */
        public Object f8432c;

        /* renamed from: d  reason: collision with root package name */
        public final p f8433d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(p pVar) {
            pVar.getClass();
            this.f8433d = pVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int A(int i10, byte[] bArr, int i11, int i12, z.d dVar, a aVar) {
        f0 f0Var = (f0) dVar;
        int K = K(bArr, i11, aVar);
        f0Var.g(i.c(aVar.f8431b));
        while (K < i12) {
            int H = H(bArr, K, aVar);
            if (i10 != aVar.f8430a) {
                break;
            }
            K = K(bArr, H, aVar);
            f0Var.g(i.c(aVar.f8431b));
        }
        return K;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int B(byte[] bArr, int i10, a aVar) {
        int H = H(bArr, i10, aVar);
        int i11 = aVar.f8430a;
        if (i11 >= 0) {
            if (i11 == 0) {
                aVar.f8432c = "";
                return H;
            }
            aVar.f8432c = new String(bArr, H, i11, z.f8667b);
            return H + i11;
        }
        throw a0.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x001a -> B:9:0x001b). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int C(int r4, byte[] r5, int r6, int r7, com.google.crypto.tink.shaded.protobuf.z.d r8, com.google.crypto.tink.shaded.protobuf.e.a r9) {
        /*
            int r6 = H(r5, r6, r9)
            int r0 = r9.f8430a
            if (r0 < 0) goto L45
            java.lang.String r1 = ""
            if (r0 != 0) goto L10
            r8.add(r1)
            goto L1b
        L10:
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r3 = com.google.crypto.tink.shaded.protobuf.z.f8667b
            r2.<init>(r5, r6, r0, r3)
            r8.add(r2)
        L1a:
            int r6 = r6 + r0
        L1b:
            if (r6 >= r7) goto L44
            int r0 = H(r5, r6, r9)
            int r2 = r9.f8430a
            if (r4 == r2) goto L26
            goto L44
        L26:
            int r6 = H(r5, r0, r9)
            int r0 = r9.f8430a
            if (r0 < 0) goto L3f
            if (r0 != 0) goto L34
            r8.add(r1)
            goto L1b
        L34:
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r3 = com.google.crypto.tink.shaded.protobuf.z.f8667b
            r2.<init>(r5, r6, r0, r3)
            r8.add(r2)
            goto L1a
        L3f:
            com.google.crypto.tink.shaded.protobuf.a0 r4 = com.google.crypto.tink.shaded.protobuf.a0.g()
            throw r4
        L44:
            return r6
        L45:
            com.google.crypto.tink.shaded.protobuf.a0 r4 = com.google.crypto.tink.shaded.protobuf.a0.g()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.e.C(int, byte[], int, int, com.google.crypto.tink.shaded.protobuf.z$d, com.google.crypto.tink.shaded.protobuf.e$a):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0022 -> B:11:0x0023). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int D(int r5, byte[] r6, int r7, int r8, com.google.crypto.tink.shaded.protobuf.z.d r9, com.google.crypto.tink.shaded.protobuf.e.a r10) {
        /*
            int r7 = H(r6, r7, r10)
            int r0 = r10.f8430a
            if (r0 < 0) goto L5f
            java.lang.String r1 = ""
            if (r0 != 0) goto L10
            r9.add(r1)
            goto L23
        L10:
            int r2 = r7 + r0
            boolean r3 = com.google.crypto.tink.shaded.protobuf.o1.n(r6, r7, r2)
            if (r3 == 0) goto L5a
            java.lang.String r3 = new java.lang.String
            java.nio.charset.Charset r4 = com.google.crypto.tink.shaded.protobuf.z.f8667b
            r3.<init>(r6, r7, r0, r4)
            r9.add(r3)
        L22:
            r7 = r2
        L23:
            if (r7 >= r8) goto L59
            int r0 = H(r6, r7, r10)
            int r2 = r10.f8430a
            if (r5 == r2) goto L2e
            goto L59
        L2e:
            int r7 = H(r6, r0, r10)
            int r0 = r10.f8430a
            if (r0 < 0) goto L54
            if (r0 != 0) goto L3c
            r9.add(r1)
            goto L23
        L3c:
            int r2 = r7 + r0
            boolean r3 = com.google.crypto.tink.shaded.protobuf.o1.n(r6, r7, r2)
            if (r3 == 0) goto L4f
            java.lang.String r3 = new java.lang.String
            java.nio.charset.Charset r4 = com.google.crypto.tink.shaded.protobuf.z.f8667b
            r3.<init>(r6, r7, r0, r4)
            r9.add(r3)
            goto L22
        L4f:
            com.google.crypto.tink.shaded.protobuf.a0 r5 = com.google.crypto.tink.shaded.protobuf.a0.d()
            throw r5
        L54:
            com.google.crypto.tink.shaded.protobuf.a0 r5 = com.google.crypto.tink.shaded.protobuf.a0.g()
            throw r5
        L59:
            return r7
        L5a:
            com.google.crypto.tink.shaded.protobuf.a0 r5 = com.google.crypto.tink.shaded.protobuf.a0.d()
            throw r5
        L5f:
            com.google.crypto.tink.shaded.protobuf.a0 r5 = com.google.crypto.tink.shaded.protobuf.a0.g()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.e.D(int, byte[], int, int, com.google.crypto.tink.shaded.protobuf.z$d, com.google.crypto.tink.shaded.protobuf.e$a):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int E(byte[] bArr, int i10, a aVar) {
        int H = H(bArr, i10, aVar);
        int i11 = aVar.f8430a;
        if (i11 >= 0) {
            if (i11 == 0) {
                aVar.f8432c = "";
                return H;
            }
            aVar.f8432c = o1.e(bArr, H, i11);
            return H + i11;
        }
        throw a0.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int F(int i10, byte[] bArr, int i11, int i12, k1 k1Var, a aVar) {
        if (p1.a(i10) != 0) {
            int b10 = p1.b(i10);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 == 5) {
                                k1Var.n(i10, Integer.valueOf(g(bArr, i11)));
                                return i11 + 4;
                            }
                            throw a0.c();
                        }
                        k1 k10 = k1.k();
                        int i13 = (i10 & (-8)) | 4;
                        int i14 = 0;
                        while (true) {
                            if (i11 >= i12) {
                                break;
                            }
                            int H = H(bArr, i11, aVar);
                            int i15 = aVar.f8430a;
                            if (i15 == i13) {
                                i14 = i15;
                                i11 = H;
                                break;
                            }
                            i14 = i15;
                            i11 = F(i15, bArr, H, i12, k10, aVar);
                        }
                        if (i11 <= i12 && i14 == i13) {
                            k1Var.n(i10, k10);
                            return i11;
                        }
                        throw a0.h();
                    }
                    int H2 = H(bArr, i11, aVar);
                    int i16 = aVar.f8430a;
                    if (i16 >= 0) {
                        if (i16 <= bArr.length - H2) {
                            if (i16 == 0) {
                                k1Var.n(i10, h.f8444b);
                            } else {
                                k1Var.n(i10, h.n(bArr, H2, i16));
                            }
                            return H2 + i16;
                        }
                        throw a0.m();
                    }
                    throw a0.g();
                }
                k1Var.n(i10, Long.valueOf(i(bArr, i11)));
                return i11 + 8;
            }
            int K = K(bArr, i11, aVar);
            k1Var.n(i10, Long.valueOf(aVar.f8431b));
            return K;
        }
        throw a0.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int G(int i10, byte[] bArr, int i11, a aVar) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b10 = bArr[i11];
        if (b10 >= 0) {
            aVar.f8430a = i12 | (b10 << 7);
            return i13;
        }
        int i14 = i12 | ((b10 & Byte.MAX_VALUE) << 7);
        int i15 = i13 + 1;
        byte b11 = bArr[i13];
        if (b11 >= 0) {
            aVar.f8430a = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & Byte.MAX_VALUE) << 14);
        int i17 = i15 + 1;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            aVar.f8430a = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & Byte.MAX_VALUE) << 21);
        int i19 = i17 + 1;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            aVar.f8430a = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] < 0) {
                i19 = i21;
            } else {
                aVar.f8430a = i20;
                return i21;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int H(byte[] bArr, int i10, a aVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 >= 0) {
            aVar.f8430a = b10;
            return i11;
        }
        return G(b10, bArr, i11, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int I(int i10, byte[] bArr, int i11, int i12, z.d dVar, a aVar) {
        y yVar = (y) dVar;
        int H = H(bArr, i11, aVar);
        yVar.g(aVar.f8430a);
        while (H < i12) {
            int H2 = H(bArr, H, aVar);
            if (i10 != aVar.f8430a) {
                break;
            }
            H = H(bArr, H2, aVar);
            yVar.g(aVar.f8430a);
        }
        return H;
    }

    static int J(long j10, byte[] bArr, int i10, a aVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        long j11 = (j10 & 127) | ((b10 & Byte.MAX_VALUE) << 7);
        int i12 = 7;
        while (b10 < 0) {
            int i13 = i11 + 1;
            byte b11 = bArr[i11];
            i12 += 7;
            j11 |= (b11 & Byte.MAX_VALUE) << i12;
            i11 = i13;
            b10 = b11;
        }
        aVar.f8431b = j11;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int K(byte[] bArr, int i10, a aVar) {
        int i11 = i10 + 1;
        long j10 = bArr[i10];
        if (j10 >= 0) {
            aVar.f8431b = j10;
            return i11;
        }
        return J(j10, bArr, i11, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int L(int i10, byte[] bArr, int i11, int i12, z.d dVar, a aVar) {
        f0 f0Var = (f0) dVar;
        int K = K(bArr, i11, aVar);
        f0Var.g(aVar.f8431b);
        while (K < i12) {
            int H = H(bArr, K, aVar);
            if (i10 != aVar.f8430a) {
                break;
            }
            K = K(bArr, H, aVar);
            f0Var.g(aVar.f8431b);
        }
        return K;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int M(Object obj, d1 d1Var, byte[] bArr, int i10, int i11, int i12, a aVar) {
        int e02 = ((r0) d1Var).e0(obj, bArr, i10, i11, i12, aVar);
        aVar.f8432c = obj;
        return e02;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int N(Object obj, d1 d1Var, byte[] bArr, int i10, int i11, a aVar) {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = G(i13, bArr, i12, aVar);
            i13 = aVar.f8430a;
        }
        int i14 = i12;
        if (i13 >= 0 && i13 <= i11 - i14) {
            int i15 = i13 + i14;
            d1Var.g(obj, bArr, i14, i15, aVar);
            aVar.f8432c = obj;
            return i15;
        }
        throw a0.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i10, byte[] bArr, int i11, int i12, z.d dVar, a aVar) {
        boolean z10;
        boolean z11;
        f fVar = (f) dVar;
        int K = K(bArr, i11, aVar);
        if (aVar.f8431b != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        fVar.g(z10);
        while (K < i12) {
            int H = H(bArr, K, aVar);
            if (i10 != aVar.f8430a) {
                break;
            }
            K = K(bArr, H, aVar);
            if (aVar.f8431b != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            fVar.g(z11);
        }
        return K;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i10, a aVar) {
        int H = H(bArr, i10, aVar);
        int i11 = aVar.f8430a;
        if (i11 >= 0) {
            if (i11 <= bArr.length - H) {
                if (i11 == 0) {
                    aVar.f8432c = h.f8444b;
                    return H;
                }
                aVar.f8432c = h.n(bArr, H, i11);
                return H + i11;
            }
            throw a0.m();
        }
        throw a0.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x001b -> B:10:0x001c). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int c(int r2, byte[] r3, int r4, int r5, com.google.crypto.tink.shaded.protobuf.z.d r6, com.google.crypto.tink.shaded.protobuf.e.a r7) {
        /*
            int r4 = H(r3, r4, r7)
            int r0 = r7.f8430a
            if (r0 < 0) goto L53
            int r1 = r3.length
            int r1 = r1 - r4
            if (r0 > r1) goto L4e
            if (r0 != 0) goto L14
            com.google.crypto.tink.shaded.protobuf.h r0 = com.google.crypto.tink.shaded.protobuf.h.f8444b
            r6.add(r0)
            goto L1c
        L14:
            com.google.crypto.tink.shaded.protobuf.h r1 = com.google.crypto.tink.shaded.protobuf.h.n(r3, r4, r0)
            r6.add(r1)
        L1b:
            int r4 = r4 + r0
        L1c:
            if (r4 >= r5) goto L4d
            int r0 = H(r3, r4, r7)
            int r1 = r7.f8430a
            if (r2 == r1) goto L27
            goto L4d
        L27:
            int r4 = H(r3, r0, r7)
            int r0 = r7.f8430a
            if (r0 < 0) goto L48
            int r1 = r3.length
            int r1 = r1 - r4
            if (r0 > r1) goto L43
            if (r0 != 0) goto L3b
            com.google.crypto.tink.shaded.protobuf.h r0 = com.google.crypto.tink.shaded.protobuf.h.f8444b
            r6.add(r0)
            goto L1c
        L3b:
            com.google.crypto.tink.shaded.protobuf.h r1 = com.google.crypto.tink.shaded.protobuf.h.n(r3, r4, r0)
            r6.add(r1)
            goto L1b
        L43:
            com.google.crypto.tink.shaded.protobuf.a0 r2 = com.google.crypto.tink.shaded.protobuf.a0.m()
            throw r2
        L48:
            com.google.crypto.tink.shaded.protobuf.a0 r2 = com.google.crypto.tink.shaded.protobuf.a0.g()
            throw r2
        L4d:
            return r4
        L4e:
            com.google.crypto.tink.shaded.protobuf.a0 r2 = com.google.crypto.tink.shaded.protobuf.a0.m()
            throw r2
        L53:
            com.google.crypto.tink.shaded.protobuf.a0 r2 = com.google.crypto.tink.shaded.protobuf.a0.g()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.e.c(int, byte[], int, int, com.google.crypto.tink.shaded.protobuf.z$d, com.google.crypto.tink.shaded.protobuf.e$a):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double d(byte[] bArr, int i10) {
        return Double.longBitsToDouble(i(bArr, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(int i10, byte[] bArr, int i11, int i12, z.d dVar, a aVar) {
        m mVar = (m) dVar;
        mVar.g(d(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int H = H(bArr, i13, aVar);
            if (i10 != aVar.f8430a) {
                break;
            }
            mVar.g(d(bArr, H));
            i13 = H + 8;
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(int i10, byte[] bArr, int i11, int i12, Object obj, o0 o0Var, j1 j1Var, a aVar) {
        aVar.f8433d.a(o0Var, i10 >>> 3);
        return F(i10, bArr, i11, i12, r0.u(obj), aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & ForkServer.ERROR) << 24) | (bArr[i10] & ForkServer.ERROR) | ((bArr[i10 + 1] & ForkServer.ERROR) << 8) | ((bArr[i10 + 2] & ForkServer.ERROR) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(int i10, byte[] bArr, int i11, int i12, z.d dVar, a aVar) {
        y yVar = (y) dVar;
        yVar.g(g(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int H = H(bArr, i13, aVar);
            if (i10 != aVar.f8430a) {
                break;
            }
            yVar.g(g(bArr, H));
            i13 = H + 4;
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long i(byte[] bArr, int i10) {
        return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i10, byte[] bArr, int i11, int i12, z.d dVar, a aVar) {
        f0 f0Var = (f0) dVar;
        f0Var.g(i(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int H = H(bArr, i13, aVar);
            if (i10 != aVar.f8430a) {
                break;
            }
            f0Var.g(i(bArr, H));
            i13 = H + 8;
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float k(byte[] bArr, int i10) {
        return Float.intBitsToFloat(g(bArr, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(int i10, byte[] bArr, int i11, int i12, z.d dVar, a aVar) {
        v vVar = (v) dVar;
        vVar.g(k(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int H = H(bArr, i13, aVar);
            if (i10 != aVar.f8430a) {
                break;
            }
            vVar.g(k(bArr, H));
            i13 = H + 4;
        }
        return i13;
    }

    static int m(d1 d1Var, byte[] bArr, int i10, int i11, int i12, a aVar) {
        Object newInstance = d1Var.newInstance();
        int M = M(newInstance, d1Var, bArr, i10, i11, i12, aVar);
        d1Var.b(newInstance);
        aVar.f8432c = newInstance;
        return M;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(d1 d1Var, int i10, byte[] bArr, int i11, int i12, z.d dVar, a aVar) {
        int i13 = (i10 & (-8)) | 4;
        int m10 = m(d1Var, bArr, i11, i12, i13, aVar);
        dVar.add(aVar.f8432c);
        while (m10 < i12) {
            int H = H(bArr, m10, aVar);
            if (i10 != aVar.f8430a) {
                break;
            }
            m10 = m(d1Var, bArr, H, i12, i13, aVar);
            dVar.add(aVar.f8432c);
        }
        return m10;
    }

    static int o(d1 d1Var, byte[] bArr, int i10, int i11, a aVar) {
        Object newInstance = d1Var.newInstance();
        int N = N(newInstance, d1Var, bArr, i10, i11, aVar);
        d1Var.b(newInstance);
        aVar.f8432c = newInstance;
        return N;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p(d1 d1Var, int i10, byte[] bArr, int i11, int i12, z.d dVar, a aVar) {
        int o10 = o(d1Var, bArr, i11, i12, aVar);
        dVar.add(aVar.f8432c);
        while (o10 < i12) {
            int H = H(bArr, o10, aVar);
            if (i10 != aVar.f8430a) {
                break;
            }
            o10 = o(d1Var, bArr, H, i12, aVar);
            dVar.add(aVar.f8432c);
        }
        return o10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int q(byte[] bArr, int i10, z.d dVar, a aVar) {
        boolean z10;
        f fVar = (f) dVar;
        int H = H(bArr, i10, aVar);
        int i11 = aVar.f8430a + H;
        while (H < i11) {
            H = K(bArr, H, aVar);
            if (aVar.f8431b != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            fVar.g(z10);
        }
        if (H == i11) {
            return H;
        }
        throw a0.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int r(byte[] bArr, int i10, z.d dVar, a aVar) {
        m mVar = (m) dVar;
        int H = H(bArr, i10, aVar);
        int i11 = aVar.f8430a + H;
        while (H < i11) {
            mVar.g(d(bArr, H));
            H += 8;
        }
        if (H == i11) {
            return H;
        }
        throw a0.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int s(byte[] bArr, int i10, z.d dVar, a aVar) {
        y yVar = (y) dVar;
        int H = H(bArr, i10, aVar);
        int i11 = aVar.f8430a + H;
        while (H < i11) {
            yVar.g(g(bArr, H));
            H += 4;
        }
        if (H == i11) {
            return H;
        }
        throw a0.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int t(byte[] bArr, int i10, z.d dVar, a aVar) {
        f0 f0Var = (f0) dVar;
        int H = H(bArr, i10, aVar);
        int i11 = aVar.f8430a + H;
        while (H < i11) {
            f0Var.g(i(bArr, H));
            H += 8;
        }
        if (H == i11) {
            return H;
        }
        throw a0.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int u(byte[] bArr, int i10, z.d dVar, a aVar) {
        v vVar = (v) dVar;
        int H = H(bArr, i10, aVar);
        int i11 = aVar.f8430a + H;
        while (H < i11) {
            vVar.g(k(bArr, H));
            H += 4;
        }
        if (H == i11) {
            return H;
        }
        throw a0.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int v(byte[] bArr, int i10, z.d dVar, a aVar) {
        y yVar = (y) dVar;
        int H = H(bArr, i10, aVar);
        int i11 = aVar.f8430a + H;
        while (H < i11) {
            H = H(bArr, H, aVar);
            yVar.g(i.b(aVar.f8430a));
        }
        if (H == i11) {
            return H;
        }
        throw a0.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int w(byte[] bArr, int i10, z.d dVar, a aVar) {
        f0 f0Var = (f0) dVar;
        int H = H(bArr, i10, aVar);
        int i11 = aVar.f8430a + H;
        while (H < i11) {
            H = K(bArr, H, aVar);
            f0Var.g(i.c(aVar.f8431b));
        }
        if (H == i11) {
            return H;
        }
        throw a0.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int x(byte[] bArr, int i10, z.d dVar, a aVar) {
        y yVar = (y) dVar;
        int H = H(bArr, i10, aVar);
        int i11 = aVar.f8430a + H;
        while (H < i11) {
            H = H(bArr, H, aVar);
            yVar.g(aVar.f8430a);
        }
        if (H == i11) {
            return H;
        }
        throw a0.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int y(byte[] bArr, int i10, z.d dVar, a aVar) {
        f0 f0Var = (f0) dVar;
        int H = H(bArr, i10, aVar);
        int i11 = aVar.f8430a + H;
        while (H < i11) {
            H = K(bArr, H, aVar);
            f0Var.g(aVar.f8431b);
        }
        if (H == i11) {
            return H;
        }
        throw a0.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int z(int i10, byte[] bArr, int i11, int i12, z.d dVar, a aVar) {
        y yVar = (y) dVar;
        int H = H(bArr, i11, aVar);
        yVar.g(i.b(aVar.f8430a));
        while (H < i12) {
            int H2 = H(bArr, H, aVar);
            if (i10 != aVar.f8430a) {
                break;
            }
            H = H(bArr, H2, aVar);
            yVar.g(i.b(aVar.f8430a));
        }
        return H;
    }
}
