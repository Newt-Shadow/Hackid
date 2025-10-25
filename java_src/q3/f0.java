package q3;

import y4.m0;
import y4.q0;
/* loaded from: classes.dex */
final class f0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f28077a;

    /* renamed from: d  reason: collision with root package name */
    private boolean f28080d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f28081e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f28082f;

    /* renamed from: b  reason: collision with root package name */
    private final m0 f28078b = new m0(0);

    /* renamed from: g  reason: collision with root package name */
    private long f28083g = -9223372036854775807L;

    /* renamed from: h  reason: collision with root package name */
    private long f28084h = -9223372036854775807L;

    /* renamed from: i  reason: collision with root package name */
    private long f28085i = -9223372036854775807L;

    /* renamed from: c  reason: collision with root package name */
    private final y4.e0 f28079c = new y4.e0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(int i10) {
        this.f28077a = i10;
    }

    private int a(g3.l lVar) {
        this.f28079c.Q(q0.f32951f);
        this.f28080d = true;
        lVar.l();
        return 0;
    }

    private int f(g3.l lVar, g3.y yVar, int i10) {
        int min = (int) Math.min(this.f28077a, lVar.b());
        long j10 = 0;
        if (lVar.c() != j10) {
            yVar.f16251a = j10;
            return 1;
        }
        this.f28079c.P(min);
        lVar.l();
        lVar.p(this.f28079c.e(), 0, min);
        this.f28083g = g(this.f28079c, i10);
        this.f28081e = true;
        return 0;
    }

    private long g(y4.e0 e0Var, int i10) {
        int g10 = e0Var.g();
        for (int f10 = e0Var.f(); f10 < g10; f10++) {
            if (e0Var.e()[f10] == 71) {
                long c10 = j0.c(e0Var, f10, i10);
                if (c10 != -9223372036854775807L) {
                    return c10;
                }
            }
        }
        return -9223372036854775807L;
    }

    private int h(g3.l lVar, g3.y yVar, int i10) {
        long b10 = lVar.b();
        int min = (int) Math.min(this.f28077a, b10);
        long j10 = b10 - min;
        if (lVar.c() != j10) {
            yVar.f16251a = j10;
            return 1;
        }
        this.f28079c.P(min);
        lVar.l();
        lVar.p(this.f28079c.e(), 0, min);
        this.f28084h = i(this.f28079c, i10);
        this.f28082f = true;
        return 0;
    }

    private long i(y4.e0 e0Var, int i10) {
        int f10 = e0Var.f();
        int g10 = e0Var.g();
        for (int i11 = g10 - 188; i11 >= f10; i11--) {
            if (j0.b(e0Var.e(), f10, g10, i11)) {
                long c10 = j0.c(e0Var, i11, i10);
                if (c10 != -9223372036854775807L) {
                    return c10;
                }
            }
        }
        return -9223372036854775807L;
    }

    public long b() {
        return this.f28085i;
    }

    public m0 c() {
        return this.f28078b;
    }

    public boolean d() {
        return this.f28080d;
    }

    public int e(g3.l lVar, g3.y yVar, int i10) {
        if (i10 <= 0) {
            return a(lVar);
        }
        if (!this.f28082f) {
            return h(lVar, yVar, i10);
        }
        if (this.f28084h == -9223372036854775807L) {
            return a(lVar);
        }
        if (!this.f28081e) {
            return f(lVar, yVar, i10);
        }
        long j10 = this.f28083g;
        if (j10 == -9223372036854775807L) {
            return a(lVar);
        }
        long b10 = this.f28078b.b(this.f28084h) - this.f28078b.b(j10);
        this.f28085i = b10;
        if (b10 < 0) {
            y4.r.i("TsDurationReader", "Invalid duration: " + this.f28085i + ". Using TIME_UNSET instead.");
            this.f28085i = -9223372036854775807L;
        }
        return a(lVar);
    }
}
