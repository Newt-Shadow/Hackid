package k2;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public class g extends d {

    /* renamed from: j  reason: collision with root package name */
    private final i f24671j;

    public g(boolean z10, i iVar) {
        ByteOrder byteOrder;
        this.f24657a = z10;
        this.f24671j = iVar;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        if (z10) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        allocate.order(byteOrder);
        this.f24658b = iVar.g(allocate, 16L);
        this.f24659c = iVar.k(allocate, 28L);
        this.f24660d = iVar.k(allocate, 32L);
        this.f24661e = iVar.g(allocate, 42L);
        this.f24662f = iVar.g(allocate, 44L);
        this.f24663g = iVar.g(allocate, 46L);
        this.f24664h = iVar.g(allocate, 48L);
        this.f24665i = iVar.g(allocate, 50L);
    }

    @Override // k2.d
    public c a(long j10, int i10) {
        return new a(this.f24671j, this, j10, i10);
    }

    @Override // k2.d
    public e b(long j10) {
        return new j(this.f24671j, this, j10);
    }

    @Override // k2.d
    public f c(int i10) {
        return new l(this.f24671j, this, i10);
    }
}
