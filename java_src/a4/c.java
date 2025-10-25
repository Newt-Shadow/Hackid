package a4;

import java.nio.ByteBuffer;
import t3.a;
import y4.d0;
import y4.e0;
import y4.m0;
/* loaded from: classes.dex */
public final class c extends t3.g {

    /* renamed from: a  reason: collision with root package name */
    private final e0 f71a = new e0();

    /* renamed from: b  reason: collision with root package name */
    private final d0 f72b = new d0();

    /* renamed from: c  reason: collision with root package name */
    private m0 f73c;

    @Override // t3.g
    protected t3.a b(t3.d dVar, ByteBuffer byteBuffer) {
        a.b eVar;
        m0 m0Var = this.f73c;
        if (m0Var == null || dVar.f29848i != m0Var.e()) {
            m0 m0Var2 = new m0(dVar.f15291e);
            this.f73c = m0Var2;
            m0Var2.a(dVar.f15291e - dVar.f29848i);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f71a.R(array, limit);
        this.f72b.o(array, limit);
        this.f72b.r(39);
        long h10 = (this.f72b.h(1) << 32) | this.f72b.h(32);
        this.f72b.r(20);
        int h11 = this.f72b.h(12);
        int h12 = this.f72b.h(8);
        this.f71a.U(14);
        if (h12 != 0) {
            if (h12 != 255) {
                if (h12 != 4) {
                    if (h12 != 5) {
                        if (h12 != 6) {
                            eVar = null;
                        } else {
                            eVar = g.a(this.f71a, h10, this.f73c);
                        }
                    } else {
                        eVar = d.a(this.f71a, h10, this.f73c);
                    }
                } else {
                    eVar = f.a(this.f71a);
                }
            } else {
                eVar = a.a(this.f71a, h11, h10);
            }
        } else {
            eVar = new e();
        }
        if (eVar == null) {
            return new t3.a(new a.b[0]);
        }
        return new t3.a(eVar);
    }
}
