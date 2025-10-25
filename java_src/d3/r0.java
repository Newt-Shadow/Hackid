package d3;

import d3.j;
import java.nio.ByteBuffer;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
final class r0 extends a0 {

    /* renamed from: i  reason: collision with root package name */
    private static final int f14579i = Float.floatToIntBits(Float.NaN);

    private static void l(int i10, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i10 * 4.656612875245797E-10d));
        if (floatToIntBits == f14579i) {
            floatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(floatToIntBits);
    }

    @Override // d3.j
    public void b(ByteBuffer byteBuffer) {
        ByteBuffer k10;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i10 = limit - position;
        int i11 = this.f14419b.f14546c;
        if (i11 != 536870912) {
            if (i11 == 805306368) {
                k10 = k(i10);
                while (position < limit) {
                    l((byteBuffer.get(position) & ForkServer.ERROR) | ((byteBuffer.get(position + 1) & ForkServer.ERROR) << 8) | ((byteBuffer.get(position + 2) & ForkServer.ERROR) << 16) | ((byteBuffer.get(position + 3) & ForkServer.ERROR) << 24), k10);
                    position += 4;
                }
            } else {
                throw new IllegalStateException();
            }
        } else {
            k10 = k((i10 / 3) * 4);
            while (position < limit) {
                l(((byteBuffer.get(position) & ForkServer.ERROR) << 8) | ((byteBuffer.get(position + 1) & ForkServer.ERROR) << 16) | ((byteBuffer.get(position + 2) & ForkServer.ERROR) << 24), k10);
                position += 3;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        k10.flip();
    }

    @Override // d3.a0
    public j.a g(j.a aVar) {
        int i10 = aVar.f14546c;
        if (y4.q0.s0(i10)) {
            if (i10 != 4) {
                return new j.a(aVar.f14544a, aVar.f14545b, 4);
            }
            return j.a.f14543e;
        }
        throw new j.b(aVar);
    }
}
