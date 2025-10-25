package af;

import af.d;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import kotlin.KotlinVersion;
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final d.a f351a = new d.a();

    /* renamed from: b  reason: collision with root package name */
    private static final int f352b = -1234567890;

    public static final boolean a(byte[] a10, int i10, byte[] b10, int i11, int i12) {
        kotlin.jvm.internal.m.e(a10, "a");
        kotlin.jvm.internal.m.e(b10, "b");
        for (int i13 = 0; i13 < i12; i13++) {
            if (a10[i13 + i10] != b10[i13 + i11]) {
                return false;
            }
        }
        return true;
    }

    public static final void b(long j10, long j11, long j12) {
        if ((j11 | j12) >= 0 && j11 <= j10 && j10 - j11 >= j12) {
            return;
        }
        throw new ArrayIndexOutOfBoundsException("size=" + j10 + " offset=" + j11 + " byteCount=" + j12);
    }

    public static final int c() {
        return f352b;
    }

    public static final int d(g gVar, int i10) {
        kotlin.jvm.internal.m.e(gVar, "<this>");
        if (i10 == f352b) {
            return gVar.size();
        }
        return i10;
    }

    public static final int e(byte[] bArr, int i10) {
        kotlin.jvm.internal.m.e(bArr, "<this>");
        if (i10 == f352b) {
            return bArr.length;
        }
        return i10;
    }

    public static final int f(int i10) {
        return ((i10 & KotlinVersion.MAX_COMPONENT_VALUE) << 24) | (((-16777216) & i10) >>> 24) | ((16711680 & i10) >>> 8) | ((65280 & i10) << 8);
    }

    public static final long g(long j10) {
        return ((j10 & 255) << 56) | (((-72057594037927936L) & j10) >>> 56) | ((71776119061217280L & j10) >>> 40) | ((280375465082880L & j10) >>> 24) | ((1095216660480L & j10) >>> 8) | ((4278190080L & j10) << 8) | ((16711680 & j10) << 24) | ((65280 & j10) << 40);
    }

    public static final short h(short s10) {
        int i10 = s10 & 65535;
        return (short) (((i10 & KotlinVersion.MAX_COMPONENT_VALUE) << 8) | ((65280 & i10) >>> 8));
    }

    public static final String i(byte b10) {
        String r10;
        r10 = rd.y.r(new char[]{bf.b.f()[(b10 >> 4) & 15], bf.b.f()[b10 & 15]});
        return r10;
    }

    public static final String j(int i10) {
        String s10;
        if (i10 == 0) {
            return CommonUrlParts.Values.FALSE_INTEGER;
        }
        int i11 = 0;
        char[] cArr = {bf.b.f()[(i10 >> 28) & 15], bf.b.f()[(i10 >> 24) & 15], bf.b.f()[(i10 >> 20) & 15], bf.b.f()[(i10 >> 16) & 15], bf.b.f()[(i10 >> 12) & 15], bf.b.f()[(i10 >> 8) & 15], bf.b.f()[(i10 >> 4) & 15], bf.b.f()[i10 & 15]};
        while (i11 < 8 && cArr[i11] == '0') {
            i11++;
        }
        s10 = rd.y.s(cArr, i11, 8);
        return s10;
    }
}
