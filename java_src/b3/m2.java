package b3;

import d4.t;
/* loaded from: classes.dex */
final class m2 {

    /* renamed from: a  reason: collision with root package name */
    public final t.b f4242a;

    /* renamed from: b  reason: collision with root package name */
    public final long f4243b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4244c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4245d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4246e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f4247f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f4248g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f4249h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f4250i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m2(t.b bVar, long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14;
        boolean z15;
        boolean z16 = false;
        if (z13 && !z11) {
            z14 = false;
        } else {
            z14 = true;
        }
        y4.a.a(z14);
        if (z12 && !z11) {
            z15 = false;
        } else {
            z15 = true;
        }
        y4.a.a(z15);
        if (!z10 || (!z11 && !z12 && !z13)) {
            z16 = true;
        }
        y4.a.a(z16);
        this.f4242a = bVar;
        this.f4243b = j10;
        this.f4244c = j11;
        this.f4245d = j12;
        this.f4246e = j13;
        this.f4247f = z10;
        this.f4248g = z11;
        this.f4249h = z12;
        this.f4250i = z13;
    }

    public m2 a(long j10) {
        if (j10 == this.f4244c) {
            return this;
        }
        return new m2(this.f4242a, this.f4243b, j10, this.f4245d, this.f4246e, this.f4247f, this.f4248g, this.f4249h, this.f4250i);
    }

    public m2 b(long j10) {
        if (j10 == this.f4243b) {
            return this;
        }
        return new m2(this.f4242a, j10, this.f4244c, this.f4245d, this.f4246e, this.f4247f, this.f4248g, this.f4249h, this.f4250i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m2.class != obj.getClass()) {
            return false;
        }
        m2 m2Var = (m2) obj;
        if (this.f4243b == m2Var.f4243b && this.f4244c == m2Var.f4244c && this.f4245d == m2Var.f4245d && this.f4246e == m2Var.f4246e && this.f4247f == m2Var.f4247f && this.f4248g == m2Var.f4248g && this.f4249h == m2Var.f4249h && this.f4250i == m2Var.f4250i && y4.q0.c(this.f4242a, m2Var.f4242a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((((527 + this.f4242a.hashCode()) * 31) + ((int) this.f4243b)) * 31) + ((int) this.f4244c)) * 31) + ((int) this.f4245d)) * 31) + ((int) this.f4246e)) * 31) + (this.f4247f ? 1 : 0)) * 31) + (this.f4248g ? 1 : 0)) * 31) + (this.f4249h ? 1 : 0)) * 31) + (this.f4250i ? 1 : 0);
    }
}
