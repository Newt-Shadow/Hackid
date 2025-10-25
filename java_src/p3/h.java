package p3;

import b3.x1;
import d3.u0;
import java.util.Arrays;
import java.util.List;
import o6.q;
import p3.i;
import y4.e0;
/* loaded from: classes.dex */
final class h extends i {

    /* renamed from: o  reason: collision with root package name */
    private static final byte[] f27832o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: p  reason: collision with root package name */
    private static final byte[] f27833p = {79, 112, 117, 115, 84, 97, 103, 115};

    /* renamed from: n  reason: collision with root package name */
    private boolean f27834n;

    private static boolean n(e0 e0Var, byte[] bArr) {
        if (e0Var.a() < bArr.length) {
            return false;
        }
        int f10 = e0Var.f();
        byte[] bArr2 = new byte[bArr.length];
        e0Var.l(bArr2, 0, bArr.length);
        e0Var.T(f10);
        return Arrays.equals(bArr2, bArr);
    }

    public static boolean o(e0 e0Var) {
        return n(e0Var, f27832o);
    }

    @Override // p3.i
    protected long f(e0 e0Var) {
        return c(u0.e(e0Var.e()));
    }

    @Override // p3.i
    protected boolean i(e0 e0Var, long j10, i.b bVar) {
        if (n(e0Var, f27832o)) {
            byte[] copyOf = Arrays.copyOf(e0Var.e(), e0Var.g());
            int c10 = u0.c(copyOf);
            List a10 = u0.a(copyOf);
            if (bVar.f27848a != null) {
                return true;
            }
            bVar.f27848a = new x1.b().g0("audio/opus").J(c10).h0(48000).V(a10).G();
            return true;
        }
        byte[] bArr = f27833p;
        if (n(e0Var, bArr)) {
            y4.a.h(bVar.f27848a);
            if (this.f27834n) {
                return true;
            }
            this.f27834n = true;
            e0Var.U(bArr.length);
            t3.a c11 = g3.e0.c(q.y(g3.e0.j(e0Var, false, false).f16186b));
            if (c11 == null) {
                return true;
            }
            bVar.f27848a = bVar.f27848a.b().Z(c11.b(bVar.f27848a.f4512j)).G();
            return true;
        }
        y4.a.h(bVar.f27848a);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p3.i
    public void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f27834n = false;
        }
    }
}
