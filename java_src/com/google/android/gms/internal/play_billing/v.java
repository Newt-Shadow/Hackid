package com.google.android.gms.internal.play_billing;

import com.arthenica.ffmpegkit.StreamInformation;
import java.util.Arrays;
import java.util.Objects;
import org.apache.tika.fork.ForkServer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class v extends m {

    /* renamed from: g  reason: collision with root package name */
    static final m f7125g = new v(null, new Object[0], 0);

    /* renamed from: d  reason: collision with root package name */
    private final transient Object f7126d;

    /* renamed from: e  reason: collision with root package name */
    final transient Object[] f7127e;

    /* renamed from: f  reason: collision with root package name */
    private final transient int f7128f;

    private v(Object obj, Object[] objArr, int i10) {
        this.f7126d = obj;
        this.f7127e = objArr;
        this.f7128f = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, int[]] */
    /* JADX WARN: Type inference failed for: r4v3 */
    public static v h(int i10, Object[] objArr, l lVar) {
        int i11;
        short[] sArr;
        int i12 = i10;
        Object[] objArr2 = objArr;
        if (i12 == 0) {
            return (v) f7125g;
        }
        Object obj = null;
        if (i12 == 1) {
            Object obj2 = objArr2[0];
            Objects.requireNonNull(obj2);
            Object obj3 = objArr2[1];
            Objects.requireNonNull(obj3);
            e.a(obj2, obj3);
            return new v(null, objArr2, 1);
        }
        b.b(i12, objArr2.length >> 1, StreamInformation.KEY_INDEX);
        int max = Math.max(i12, 2);
        if (max < 751619276) {
            i11 = Integer.highestOneBit(max - 1);
            do {
                i11 += i11;
            } while (i11 * 0.7d < max);
        } else {
            i11 = 1073741824;
            if (max >= 1073741824) {
                throw new IllegalArgumentException("collection too large");
            }
        }
        if (i12 == 1) {
            Object obj4 = objArr2[0];
            Objects.requireNonNull(obj4);
            Object obj5 = objArr2[1];
            Objects.requireNonNull(obj5);
            e.a(obj4, obj5);
            i12 = 1;
        } else {
            int i13 = i11 - 1;
            char c10 = 65535;
            if (i11 <= 128) {
                byte[] bArr = new byte[i11];
                Arrays.fill(bArr, (byte) -1);
                int i14 = 0;
                for (int i15 = 0; i15 < i12; i15++) {
                    int i16 = i14 + i14;
                    int i17 = i15 + i15;
                    Object obj6 = objArr2[i17];
                    Objects.requireNonNull(obj6);
                    Object obj7 = objArr2[i17 ^ 1];
                    Objects.requireNonNull(obj7);
                    e.a(obj6, obj7);
                    int a10 = f.a(obj6.hashCode());
                    while (true) {
                        int i18 = a10 & i13;
                        int i19 = bArr[i18] & ForkServer.ERROR;
                        if (i19 == 255) {
                            bArr[i18] = (byte) i16;
                            if (i14 < i15) {
                                objArr2[i16] = obj6;
                                objArr2[i16 ^ 1] = obj7;
                            }
                            i14++;
                        } else if (obj6.equals(objArr2[i19])) {
                            int i20 = i19 ^ 1;
                            Object obj8 = objArr2[i20];
                            Objects.requireNonNull(obj8);
                            k kVar = new k(obj6, obj7, obj8);
                            objArr2[i20] = obj7;
                            obj = kVar;
                            break;
                        } else {
                            a10 = i18 + 1;
                        }
                    }
                }
                if (i14 == i12) {
                    obj = bArr;
                } else {
                    obj = new Object[]{bArr, Integer.valueOf(i14), obj};
                }
            } else if (i11 <= 32768) {
                sArr = new short[i11];
                Arrays.fill(sArr, (short) -1);
                int i21 = 0;
                for (int i22 = 0; i22 < i12; i22++) {
                    int i23 = i21 + i21;
                    int i24 = i22 + i22;
                    Object obj9 = objArr2[i24];
                    Objects.requireNonNull(obj9);
                    Object obj10 = objArr2[i24 ^ 1];
                    Objects.requireNonNull(obj10);
                    e.a(obj9, obj10);
                    int a11 = f.a(obj9.hashCode());
                    while (true) {
                        int i25 = a11 & i13;
                        char c11 = (char) sArr[i25];
                        if (c11 == 65535) {
                            sArr[i25] = (short) i23;
                            if (i21 < i22) {
                                objArr2[i23] = obj9;
                                objArr2[i23 ^ 1] = obj10;
                            }
                            i21++;
                        } else if (obj9.equals(objArr2[c11])) {
                            int i26 = c11 ^ 1;
                            Object obj11 = objArr2[i26];
                            Objects.requireNonNull(obj11);
                            k kVar2 = new k(obj9, obj10, obj11);
                            objArr2[i26] = obj10;
                            obj = kVar2;
                            break;
                        } else {
                            a11 = i25 + 1;
                        }
                    }
                }
                if (i21 != i12) {
                    obj = new Object[]{sArr, Integer.valueOf(i21), obj};
                }
                obj = sArr;
            } else {
                sArr = new int[i11];
                Arrays.fill((int[]) sArr, -1);
                int i27 = 0;
                int i28 = 0;
                while (i27 < i12) {
                    int i29 = i28 + i28;
                    int i30 = i27 + i27;
                    Object obj12 = objArr2[i30];
                    Objects.requireNonNull(obj12);
                    Object obj13 = objArr2[i30 ^ 1];
                    Objects.requireNonNull(obj13);
                    e.a(obj12, obj13);
                    int a12 = f.a(obj12.hashCode());
                    while (true) {
                        int i31 = a12 & i13;
                        ?? r15 = sArr[i31];
                        if (r15 == c10) {
                            sArr[i31] = i29;
                            if (i28 < i27) {
                                objArr2[i29] = obj12;
                                objArr2[i29 ^ 1] = obj13;
                            }
                            i28++;
                        } else if (obj12.equals(objArr2[r15])) {
                            int i32 = r15 ^ 1;
                            Object obj14 = objArr2[i32];
                            Objects.requireNonNull(obj14);
                            k kVar3 = new k(obj12, obj13, obj14);
                            objArr2[i32] = obj13;
                            obj = kVar3;
                            break;
                        } else {
                            a12 = i31 + 1;
                            c10 = 65535;
                        }
                    }
                    i27++;
                    c10 = 65535;
                }
                if (i28 != i12) {
                    obj = new Object[]{sArr, Integer.valueOf(i28), obj};
                }
                obj = sArr;
            }
        }
        if (obj instanceof Object[]) {
            Object[] objArr3 = (Object[]) obj;
            k kVar4 = (k) objArr3[2];
            if (lVar != null) {
                lVar.f7040c = kVar4;
                Object obj15 = objArr3[0];
                int intValue = ((Integer) objArr3[1]).intValue();
                objArr2 = Arrays.copyOf(objArr2, intValue + intValue);
                obj = obj15;
                i12 = intValue;
            } else {
                throw kVar4.a();
            }
        }
        return new v(obj, objArr2, i12);
    }

    @Override // com.google.android.gms.internal.play_billing.m
    final g a() {
        return new u(this.f7127e, 1, this.f7128f);
    }

    @Override // com.google.android.gms.internal.play_billing.m
    final n e() {
        return new s(this, this.f7127e, 0, this.f7128f);
    }

    @Override // com.google.android.gms.internal.play_billing.m
    final n f() {
        return new t(this, new u(this.f7127e, 0, this.f7128f));
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009f A[RETURN] */
    @Override // com.google.android.gms.internal.play_billing.m, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r10) {
        /*
            r9 = this;
            r0 = 0
            if (r10 != 0) goto L6
        L3:
            r10 = r0
            goto L9c
        L6:
            int r1 = r9.f7128f
            java.lang.Object[] r2 = r9.f7127e
            r3 = 1
            if (r1 != r3) goto L20
            r1 = 0
            r1 = r2[r1]
            java.util.Objects.requireNonNull(r1)
            boolean r10 = r1.equals(r10)
            if (r10 == 0) goto L3
            r10 = r2[r3]
            java.util.Objects.requireNonNull(r10)
            goto L9c
        L20:
            java.lang.Object r1 = r9.f7126d
            if (r1 != 0) goto L25
            goto L3
        L25:
            boolean r4 = r1 instanceof byte[]
            r5 = -1
            if (r4 == 0) goto L51
            r4 = r1
            byte[] r4 = (byte[]) r4
            int r1 = r4.length
            int r6 = r1 + (-1)
            int r1 = r10.hashCode()
            int r1 = com.google.android.gms.internal.play_billing.f.a(r1)
        L38:
            r1 = r1 & r6
            r5 = r4[r1]
            r7 = 255(0xff, float:3.57E-43)
            r5 = r5 & r7
            if (r5 != r7) goto L41
            goto L3
        L41:
            r7 = r2[r5]
            boolean r7 = r10.equals(r7)
            if (r7 == 0) goto L4e
            r10 = r5 ^ 1
            r10 = r2[r10]
            goto L9c
        L4e:
            int r1 = r1 + 1
            goto L38
        L51:
            boolean r4 = r1 instanceof short[]
            if (r4 == 0) goto L7d
            r4 = r1
            short[] r4 = (short[]) r4
            int r1 = r4.length
            int r6 = r1 + (-1)
            int r1 = r10.hashCode()
            int r1 = com.google.android.gms.internal.play_billing.f.a(r1)
        L63:
            r1 = r1 & r6
            short r5 = r4[r1]
            char r5 = (char) r5
            r7 = 65535(0xffff, float:9.1834E-41)
            if (r5 != r7) goto L6d
            goto L3
        L6d:
            r7 = r2[r5]
            boolean r7 = r10.equals(r7)
            if (r7 == 0) goto L7a
            r10 = r5 ^ 1
            r10 = r2[r10]
            goto L9c
        L7a:
            int r1 = r1 + 1
            goto L63
        L7d:
            int[] r1 = (int[]) r1
            int r4 = r1.length
            int r4 = r4 + r5
            int r6 = r10.hashCode()
            int r6 = com.google.android.gms.internal.play_billing.f.a(r6)
        L89:
            r6 = r6 & r4
            r7 = r1[r6]
            if (r7 != r5) goto L90
            goto L3
        L90:
            r8 = r2[r7]
            boolean r8 = r10.equals(r8)
            if (r8 == 0) goto La0
            r10 = r7 ^ 1
            r10 = r2[r10]
        L9c:
            if (r10 != 0) goto L9f
            return r0
        L9f:
            return r10
        La0:
            int r6 = r6 + 1
            goto L89
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.v.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.f7128f;
    }
}
