package k2;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public class j extends e {
    public j(i iVar, d dVar, long j10) {
        ByteOrder byteOrder;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        if (dVar.f24657a) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        allocate.order(byteOrder);
        long j11 = dVar.f24659c + (j10 * dVar.f24661e);
        this.f24666a = iVar.k(allocate, j11);
        this.f24667b = iVar.k(allocate, 4 + j11);
        this.f24668c = iVar.k(allocate, 8 + j11);
        this.f24669d = iVar.k(allocate, j11 + 20);
    }
}
