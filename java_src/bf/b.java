package bf;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a */
    private static final char[] f4745a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX WARN: Removed duplicated region for block: B:553:0x0047 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:556:0x0081 A[EDGE_INSN: B:556:0x0081->B:350:0x0081 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:559:0x0217 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:566:0x016c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:578:0x00da A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int c(byte[] r19, int r20) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bf.b.c(byte[], int):int");
    }

    public static final void d(af.g gVar, af.d buffer, int i10, int i11) {
        m.e(gVar, "<this>");
        m.e(buffer, "buffer");
        buffer.l0(gVar.l(), i10, i11);
    }

    public static final int e(char c10) {
        boolean z10;
        boolean z11;
        boolean z12 = true;
        if ('0' <= c10 && c10 < ':') {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return c10 - '0';
        }
        char c11 = 'a';
        if ('a' <= c10 && c10 < 'g') {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            c11 = 'A';
            if ('A' > c10 || c10 >= 'G') {
                z12 = false;
            }
            if (!z12) {
                throw new IllegalArgumentException("Unexpected hex digit: " + c10);
            }
        }
        return (c10 - c11) + 10;
    }

    public static final char[] f() {
        return f4745a;
    }
}
