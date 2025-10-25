package l3;

import g3.l;
import g3.u;
/* loaded from: classes.dex */
final class c extends u {

    /* renamed from: b  reason: collision with root package name */
    private final long f25189b;

    public c(l lVar, long j10) {
        super(lVar);
        boolean z10;
        if (lVar.c() >= j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        this.f25189b = j10;
    }

    @Override // g3.u, g3.l
    public long b() {
        return super.b() - this.f25189b;
    }

    @Override // g3.u, g3.l
    public long c() {
        return super.c() - this.f25189b;
    }

    @Override // g3.u, g3.l
    public long g() {
        return super.g() - this.f25189b;
    }
}
