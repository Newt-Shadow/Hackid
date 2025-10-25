package y4;

import b3.l3;
/* loaded from: classes.dex */
public final class i0 implements t {

    /* renamed from: a  reason: collision with root package name */
    private final d f32898a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f32899b;

    /* renamed from: c  reason: collision with root package name */
    private long f32900c;

    /* renamed from: d  reason: collision with root package name */
    private long f32901d;

    /* renamed from: e  reason: collision with root package name */
    private l3 f32902e = l3.f4205d;

    public i0(d dVar) {
        this.f32898a = dVar;
    }

    public void a(long j10) {
        this.f32900c = j10;
        if (this.f32899b) {
            this.f32901d = this.f32898a.elapsedRealtime();
        }
    }

    public void b() {
        if (!this.f32899b) {
            this.f32901d = this.f32898a.elapsedRealtime();
            this.f32899b = true;
        }
    }

    @Override // y4.t
    public void c(l3 l3Var) {
        if (this.f32899b) {
            a(s());
        }
        this.f32902e = l3Var;
    }

    public void d() {
        if (this.f32899b) {
            a(s());
            this.f32899b = false;
        }
    }

    @Override // y4.t
    public l3 g() {
        return this.f32902e;
    }

    @Override // y4.t
    public long s() {
        long b10;
        long j10 = this.f32900c;
        if (this.f32899b) {
            long elapsedRealtime = this.f32898a.elapsedRealtime() - this.f32901d;
            l3 l3Var = this.f32902e;
            if (l3Var.f4209a == 1.0f) {
                b10 = q0.A0(elapsedRealtime);
            } else {
                b10 = l3Var.b(elapsedRealtime);
            }
            return j10 + b10;
        }
        return j10;
    }
}
