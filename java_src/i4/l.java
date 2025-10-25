package i4;

import b3.y1;
import d4.m0;
/* loaded from: classes.dex */
final class l implements m0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f17198a;

    /* renamed from: b  reason: collision with root package name */
    private final p f17199b;

    /* renamed from: c  reason: collision with root package name */
    private int f17200c = -1;

    public l(p pVar, int i10) {
        this.f17199b = pVar;
        this.f17198a = i10;
    }

    private boolean c() {
        int i10 = this.f17200c;
        if (i10 != -1 && i10 != -3 && i10 != -2) {
            return true;
        }
        return false;
    }

    @Override // d4.m0
    public void a() {
        int i10 = this.f17200c;
        if (i10 != -2) {
            if (i10 == -1) {
                this.f17199b.T();
                return;
            } else if (i10 != -3) {
                this.f17199b.U(i10);
                return;
            } else {
                return;
            }
        }
        throw new r(this.f17199b.q().b(this.f17198a).b(0).f4514l);
    }

    public void b() {
        boolean z10;
        if (this.f17200c == -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        this.f17200c = this.f17199b.x(this.f17198a);
    }

    public void d() {
        if (this.f17200c != -1) {
            this.f17199b.o0(this.f17198a);
            this.f17200c = -1;
        }
    }

    @Override // d4.m0
    public boolean isReady() {
        if (this.f17200c != -3 && (!c() || !this.f17199b.P(this.f17200c))) {
            return false;
        }
        return true;
    }

    @Override // d4.m0
    public int j(long j10) {
        if (c()) {
            return this.f17199b.n0(this.f17200c, j10);
        }
        return 0;
    }

    @Override // d4.m0
    public int l(y1 y1Var, e3.g gVar, int i10) {
        if (this.f17200c == -3) {
            gVar.j(4);
            return -4;
        } else if (!c()) {
            return -3;
        } else {
            return this.f17199b.d0(this.f17200c, y1Var, gVar, i10);
        }
    }
}
