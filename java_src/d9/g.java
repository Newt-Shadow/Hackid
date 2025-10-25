package d9;

import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public final class g extends h {

    /* renamed from: c  reason: collision with root package name */
    private final h f15091c;

    public g(h hVar) {
        super(hVar.d(), hVar.a());
        this.f15091c = hVar;
    }

    @Override // d9.h
    public byte[] b() {
        byte[] b10 = this.f15091c.b();
        int d10 = d() * a();
        byte[] bArr = new byte[d10];
        for (int i10 = 0; i10 < d10; i10++) {
            bArr[i10] = (byte) (255 - (b10[i10] & ForkServer.ERROR));
        }
        return bArr;
    }

    @Override // d9.h
    public byte[] c(int i10, byte[] bArr) {
        byte[] c10 = this.f15091c.c(i10, bArr);
        int d10 = d();
        for (int i11 = 0; i11 < d10; i11++) {
            c10[i11] = (byte) (255 - (c10[i11] & ForkServer.ERROR));
        }
        return c10;
    }

    @Override // d9.h
    public h e() {
        return this.f15091c;
    }

    @Override // d9.h
    public boolean f() {
        return this.f15091c.f();
    }

    @Override // d9.h
    public h g() {
        return new g(this.f15091c.g());
    }
}
