package l3;

import g3.a0;
import g3.b0;
import g3.m;
import g3.z;
/* loaded from: classes.dex */
public final class d implements m {

    /* renamed from: a  reason: collision with root package name */
    private final long f25190a;

    /* renamed from: b  reason: collision with root package name */
    private final m f25191b;

    /* loaded from: classes.dex */
    class a implements z {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ z f25192a;

        a(z zVar) {
            this.f25192a = zVar;
        }

        @Override // g3.z
        public boolean e() {
            return this.f25192a.e();
        }

        @Override // g3.z
        public z.a h(long j10) {
            z.a h10 = this.f25192a.h(j10);
            a0 a0Var = h10.f16252a;
            a0 a0Var2 = new a0(a0Var.f16143a, a0Var.f16144b + d.this.f25190a);
            a0 a0Var3 = h10.f16253b;
            return new z.a(a0Var2, new a0(a0Var3.f16143a, a0Var3.f16144b + d.this.f25190a));
        }

        @Override // g3.z
        public long i() {
            return this.f25192a.i();
        }
    }

    public d(long j10, m mVar) {
        this.f25190a = j10;
        this.f25191b = mVar;
    }

    @Override // g3.m
    public b0 a(int i10, int i11) {
        return this.f25191b.a(i10, i11);
    }

    @Override // g3.m
    public void l(z zVar) {
        this.f25191b.l(new a(zVar));
    }

    @Override // g3.m
    public void n() {
        this.f25191b.n();
    }
}
