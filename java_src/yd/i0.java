package yd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class i0 {
    public static final int a(String str, int i10, int i11, int i12) {
        return (int) g0.c(str, i10, i11, i12);
    }

    public static final long b(String str, long j10, long j11, long j12) {
        Long o10;
        String d10 = g0.d(str);
        if (d10 != null) {
            o10 = rd.x.o(d10);
            if (o10 != null) {
                long longValue = o10.longValue();
                boolean z10 = false;
                if (j11 <= longValue && longValue <= j12) {
                    z10 = true;
                }
                if (z10) {
                    return longValue;
                }
                throw new IllegalStateException(("System property '" + str + "' should be in range " + j11 + ".." + j12 + ", but is '" + longValue + '\'').toString());
            }
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + d10 + '\'').toString());
        }
        return j10;
    }

    public static final String c(String str, String str2) {
        String d10 = g0.d(str);
        if (d10 != null) {
            return d10;
        }
        return str2;
    }

    public static final boolean d(String str, boolean z10) {
        String d10 = g0.d(str);
        if (d10 != null) {
            return Boolean.parseBoolean(d10);
        }
        return z10;
    }

    public static /* synthetic */ int e(String str, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            i11 = 1;
        }
        if ((i13 & 8) != 0) {
            i12 = Integer.MAX_VALUE;
        }
        return g0.b(str, i10, i11, i12);
    }

    public static /* synthetic */ long f(String str, long j10, long j11, long j12, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            j11 = 1;
        }
        long j13 = j11;
        if ((i10 & 8) != 0) {
            j12 = Long.MAX_VALUE;
        }
        return g0.c(str, j10, j13, j12);
    }
}
