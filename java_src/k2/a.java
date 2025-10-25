package k2;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public class a extends c {
    public a(i iVar, d dVar, long j10, int i10) {
        ByteOrder byteOrder;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        if (dVar.f24657a) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        allocate.order(byteOrder);
        long j11 = j10 + (i10 * 8);
        this.f24655a = iVar.k(allocate, j11);
        this.f24656b = iVar.k(allocate, j11 + 4);
    }
}
