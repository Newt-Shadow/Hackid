package t3;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class g implements b {
    @Override // t3.b
    public final a a(d dVar) {
        boolean z10;
        ByteBuffer byteBuffer = (ByteBuffer) y4.a.e(dVar.f15289c);
        if (byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        if (dVar.p()) {
            return null;
        }
        return b(dVar, byteBuffer);
    }

    protected abstract a b(d dVar, ByteBuffer byteBuffer);
}
