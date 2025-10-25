package n3;

import g3.a0;
import g3.z;
import org.apache.tika.pipes.PipesConfigBase;
import y4.q0;
import y4.s;
/* loaded from: classes.dex */
final class b implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long f26112a;

    /* renamed from: b  reason: collision with root package name */
    private final s f26113b;

    /* renamed from: c  reason: collision with root package name */
    private final s f26114c;

    /* renamed from: d  reason: collision with root package name */
    private long f26115d;

    public b(long j10, long j11, long j12) {
        this.f26115d = j10;
        this.f26112a = j12;
        s sVar = new s();
        this.f26113b = sVar;
        s sVar2 = new s();
        this.f26114c = sVar2;
        sVar.a(0L);
        sVar2.a(j11);
    }

    @Override // n3.g
    public long a(long j10) {
        return this.f26113b.b(q0.g(this.f26114c, j10, true, true));
    }

    public boolean b(long j10) {
        s sVar = this.f26113b;
        if (j10 - sVar.b(sVar.c() - 1) < PipesConfigBase.DEFAULT_MAX_FOR_EMIT_BATCH) {
            return true;
        }
        return false;
    }

    public void c(long j10, long j11) {
        if (b(j10)) {
            return;
        }
        this.f26113b.a(j10);
        this.f26114c.a(j11);
    }

    @Override // n3.g
    public long d() {
        return this.f26112a;
    }

    @Override // g3.z
    public boolean e() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(long j10) {
        this.f26115d = j10;
    }

    @Override // g3.z
    public z.a h(long j10) {
        int g10 = q0.g(this.f26113b, j10, true, true);
        a0 a0Var = new a0(this.f26113b.b(g10), this.f26114c.b(g10));
        if (a0Var.f16143a != j10 && g10 != this.f26113b.c() - 1) {
            int i10 = g10 + 1;
            return new z.a(a0Var, new a0(this.f26113b.b(i10), this.f26114c.b(i10)));
        }
        return new z.a(a0Var);
    }

    @Override // g3.z
    public long i() {
        return this.f26115d;
    }
}
