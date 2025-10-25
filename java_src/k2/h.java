package k2;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public class h extends d {

    /* renamed from: j  reason: collision with root package name */
    private final i f24672j;

    public h(boolean z10, i iVar) {
        ByteOrder byteOrder;
        this.f24657a = z10;
        this.f24672j = iVar;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        if (z10) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        allocate.order(byteOrder);
        this.f24658b = iVar.g(allocate, 16L);
        this.f24659c = iVar.h(allocate, 32L);
        this.f24660d = iVar.h(allocate, 40L);
        this.f24661e = iVar.g(allocate, 54L);
        this.f24662f = iVar.g(allocate, 56L);
        this.f24663g = iVar.g(allocate, 58L);
        this.f24664h = iVar.g(allocate, 60L);
        this.f24665i = iVar.g(allocate, 62L);
    }

    @Override // k2.d
    public c a(long j10, int i10) {
        return new b(this.f24672j, this, j10, i10);
    }

    @Override // k2.d
    public e b(long j10) {
        return new k(this.f24672j, this, j10);
    }

    @Override // k2.d
    public f c(int i10) {
        return new m(this.f24672j, this, i10);
    }
}
