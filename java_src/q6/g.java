package q6;

import n6.m;
/* loaded from: classes.dex */
public abstract class g {
    public static int a(long j10, long j11) {
        int i10 = (j10 > j11 ? 1 : (j10 == j11 ? 0 : -1));
        if (i10 < 0) {
            return -1;
        }
        return i10 > 0 ? 1 : 0;
    }

    public static int b(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static long c(long... jArr) {
        boolean z10;
        if (jArr.length > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        m.d(z10);
        long j10 = jArr[0];
        for (int i10 = 1; i10 < jArr.length; i10++) {
            long j11 = jArr[i10];
            if (j11 > j10) {
                j10 = j11;
            }
        }
        return j10;
    }
}
