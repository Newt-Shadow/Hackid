package m4;

import java.util.List;
/* loaded from: classes.dex */
public abstract class m extends e3.h implements h {

    /* renamed from: d  reason: collision with root package name */
    private h f25737d;

    /* renamed from: e  reason: collision with root package name */
    private long f25738e;

    @Override // m4.h
    public int a(long j10) {
        return ((h) y4.a.e(this.f25737d)).a(j10 - this.f25738e);
    }

    @Override // m4.h
    public long b(int i10) {
        return ((h) y4.a.e(this.f25737d)).b(i10) + this.f25738e;
    }

    @Override // m4.h
    public List f(long j10) {
        return ((h) y4.a.e(this.f25737d)).f(j10 - this.f25738e);
    }

    @Override // m4.h
    public int i() {
        return ((h) y4.a.e(this.f25737d)).i();
    }

    @Override // e3.a
    public void l() {
        super.l();
        this.f25737d = null;
    }

    public void w(long j10, h hVar, long j11) {
        this.f15297b = j10;
        this.f25737d = hVar;
        if (j11 != Long.MAX_VALUE) {
            j10 = j11;
        }
        this.f25738e = j10;
    }
}
