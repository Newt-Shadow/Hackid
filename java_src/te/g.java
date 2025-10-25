package te;

import java.util.List;
import kotlin.jvm.internal.m;
import ne.a0;
import ne.u;
import ne.y;
/* loaded from: classes2.dex */
public final class g implements u.a {

    /* renamed from: a */
    private final se.e f30730a;

    /* renamed from: b */
    private final List f30731b;

    /* renamed from: c */
    private final int f30732c;

    /* renamed from: d */
    private final se.c f30733d;

    /* renamed from: e */
    private final y f30734e;

    /* renamed from: f */
    private final int f30735f;

    /* renamed from: g */
    private final int f30736g;

    /* renamed from: h */
    private final int f30737h;

    /* renamed from: i */
    private int f30738i;

    public g(se.e call, List interceptors, int i10, se.c cVar, y request, int i11, int i12, int i13) {
        m.e(call, "call");
        m.e(interceptors, "interceptors");
        m.e(request, "request");
        this.f30730a = call;
        this.f30731b = interceptors;
        this.f30732c = i10;
        this.f30733d = cVar;
        this.f30734e = request;
        this.f30735f = i11;
        this.f30736g = i12;
        this.f30737h = i13;
    }

    public static /* synthetic */ g d(g gVar, int i10, se.c cVar, y yVar, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = gVar.f30732c;
        }
        if ((i14 & 2) != 0) {
            cVar = gVar.f30733d;
        }
        se.c cVar2 = cVar;
        if ((i14 & 4) != 0) {
            yVar = gVar.f30734e;
        }
        y yVar2 = yVar;
        if ((i14 & 8) != 0) {
            i11 = gVar.f30735f;
        }
        int i15 = i11;
        if ((i14 & 16) != 0) {
            i12 = gVar.f30736g;
        }
        int i16 = i12;
        if ((i14 & 32) != 0) {
            i13 = gVar.f30737h;
        }
        return gVar.c(i10, cVar2, yVar2, i15, i16, i13);
    }

    @Override // ne.u.a
    public a0 a(y request) {
        boolean z10;
        boolean z11;
        boolean z12;
        m.e(request, "request");
        boolean z13 = false;
        if (this.f30732c < this.f30731b.size()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f30738i++;
            se.c cVar = this.f30733d;
            if (cVar != null) {
                if (cVar.j().g(request.i())) {
                    if (this.f30738i == 1) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    if (!z12) {
                        throw new IllegalStateException(("network interceptor " + this.f30731b.get(this.f30732c - 1) + " must call proceed() exactly once").toString());
                    }
                } else {
                    throw new IllegalStateException(("network interceptor " + this.f30731b.get(this.f30732c - 1) + " must retain the same host and port").toString());
                }
            }
            g d10 = d(this, this.f30732c + 1, null, request, 0, 0, 0, 58, null);
            u uVar = (u) this.f30731b.get(this.f30732c);
            a0 a10 = uVar.a(d10);
            if (a10 != null) {
                if (this.f30733d != null) {
                    if (this.f30732c + 1 < this.f30731b.size() && d10.f30738i != 1) {
                        z11 = false;
                    } else {
                        z11 = true;
                    }
                    if (!z11) {
                        throw new IllegalStateException(("network interceptor " + uVar + " must call proceed() exactly once").toString());
                    }
                }
                if (a10.a() != null) {
                    z13 = true;
                }
                if (z13) {
                    return a10;
                }
                throw new IllegalStateException(("interceptor " + uVar + " returned a response with no body").toString());
            }
            throw new NullPointerException("interceptor " + uVar + " returned null");
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @Override // ne.u.a
    public y b() {
        return this.f30734e;
    }

    public final g c(int i10, se.c cVar, y request, int i11, int i12, int i13) {
        m.e(request, "request");
        return new g(this.f30730a, this.f30731b, i10, cVar, request, i11, i12, i13);
    }

    @Override // ne.u.a
    public ne.e call() {
        return this.f30730a;
    }

    public final se.e e() {
        return this.f30730a;
    }

    public final int f() {
        return this.f30735f;
    }

    public final se.c g() {
        return this.f30733d;
    }

    public final int h() {
        return this.f30736g;
    }

    public final y i() {
        return this.f30734e;
    }

    public final int j() {
        return this.f30737h;
    }

    public int k() {
        return this.f30736g;
    }
}
