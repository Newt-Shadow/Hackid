package io.sentry.vendor;

import java.io.UnsupportedEncodingException;
/* loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.sentry.vendor.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC0212a {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f23851a;

        /* renamed from: b  reason: collision with root package name */
        public int f23852b;

        AbstractC0212a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b extends AbstractC0212a {

        /* renamed from: j  reason: collision with root package name */
        private static final byte[] f23853j = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

        /* renamed from: k  reason: collision with root package name */
        private static final byte[] f23854k = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f23855c;

        /* renamed from: d  reason: collision with root package name */
        int f23856d;

        /* renamed from: e  reason: collision with root package name */
        private int f23857e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f23858f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f23859g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f23860h;

        /* renamed from: i  reason: collision with root package name */
        private final byte[] f23861i;

        public b(int i10, byte[] bArr) {
            boolean z10;
            boolean z11;
            byte[] bArr2;
            int i11;
            this.f23851a = bArr;
            if ((i10 & 1) == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f23858f = z10;
            if ((i10 & 2) == 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.f23859g = z11;
            this.f23860h = (i10 & 4) != 0;
            if ((i10 & 8) == 0) {
                bArr2 = f23853j;
            } else {
                bArr2 = f23854k;
            }
            this.f23861i = bArr2;
            this.f23855c = new byte[2];
            this.f23856d = 0;
            if (z11) {
                i11 = 19;
            } else {
                i11 = -1;
            }
            this.f23857e = i11;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x00e6 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00dd -> B:22:0x008a). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(byte[] r18, int r19, int r20, boolean r21) {
            /*
                Method dump skipped, instructions count: 478
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.vendor.a.b.a(byte[], int, int, boolean):boolean");
        }
    }

    public static byte[] a(byte[] bArr, int i10) {
        return b(bArr, 0, bArr.length, i10);
    }

    public static byte[] b(byte[] bArr, int i10, int i11, int i12) {
        b bVar = new b(i12, null);
        int i13 = (i11 / 3) * 4;
        int i14 = 2;
        if (bVar.f23858f) {
            if (i11 % 3 > 0) {
                i13 += 4;
            }
        } else {
            int i15 = i11 % 3;
            if (i15 != 1) {
                if (i15 == 2) {
                    i13 += 3;
                }
            } else {
                i13 += 2;
            }
        }
        if (bVar.f23859g && i11 > 0) {
            int i16 = ((i11 - 1) / 57) + 1;
            if (!bVar.f23860h) {
                i14 = 1;
            }
            i13 += i16 * i14;
        }
        bVar.f23851a = new byte[i13];
        bVar.a(bArr, i10, i11, true);
        return bVar.f23851a;
    }

    public static String c(byte[] bArr, int i10) {
        try {
            return new String(a(bArr, i10), "US-ASCII");
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }
}
