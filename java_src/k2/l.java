package k2;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public class l extends f {
    public l(i iVar, d dVar, int i10) {
        ByteOrder byteOrder;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        if (dVar.f24657a) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        allocate.order(byteOrder);
        this.f24670a = iVar.k(allocate, dVar.f24660d + (i10 * dVar.f24663g) + 28);
    }
}
