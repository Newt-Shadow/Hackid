package d3;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public abstract class u0 {
    public static List a(byte[] bArr) {
        long h10 = h(f(bArr));
        long h11 = h(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(b(h10));
        arrayList.add(b(h11));
        return arrayList;
    }

    private static byte[] b(long j10) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j10).array();
    }

    public static int c(byte[] bArr) {
        return bArr[9] & ForkServer.ERROR;
    }

    private static long d(byte b10, byte b11) {
        int i10;
        int i11;
        int i12 = b10 & ForkServer.ERROR;
        int i13 = i12 & 3;
        if (i13 != 0) {
            i10 = 2;
            if (i13 != 1 && i13 != 2) {
                i10 = b11 & 63;
            }
        } else {
            i10 = 1;
        }
        int i14 = i12 >> 3;
        return i10 * (i14 >= 16 ? 2500 << i11 : i14 >= 12 ? 10000 << (i11 & 1) : (i14 & 3) == 3 ? 60000 : 10000 << i11);
    }

    public static long e(byte[] bArr) {
        byte b10 = 0;
        byte b11 = bArr[0];
        if (bArr.length > 1) {
            b10 = bArr[1];
        }
        return d(b11, b10);
    }

    private static int f(byte[] bArr) {
        return (bArr[10] & ForkServer.ERROR) | ((bArr[11] & ForkServer.ERROR) << 8);
    }

    public static int g(ByteBuffer byteBuffer) {
        byte b10 = 0;
        byte b11 = byteBuffer.get(0);
        if (byteBuffer.limit() > 1) {
            b10 = byteBuffer.get(1);
        }
        return (int) ((d(b11, b10) * 48000) / 1000000);
    }

    private static long h(long j10) {
        return (j10 * 1000000000) / 48000;
    }
}
