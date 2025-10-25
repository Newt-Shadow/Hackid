package f4;

import b3.x1;
/* loaded from: classes.dex */
public abstract class a extends n {

    /* renamed from: k  reason: collision with root package name */
    public final long f15751k;

    /* renamed from: l  reason: collision with root package name */
    public final long f15752l;

    /* renamed from: m  reason: collision with root package name */
    private c f15753m;

    /* renamed from: n  reason: collision with root package name */
    private int[] f15754n;

    public a(x4.j jVar, x4.n nVar, x1 x1Var, int i10, Object obj, long j10, long j11, long j12, long j13, long j14) {
        super(jVar, nVar, x1Var, i10, obj, j10, j11, j14);
        this.f15751k = j12;
        this.f15752l = j13;
    }

    public final int i(int i10) {
        return ((int[]) y4.a.h(this.f15754n))[i10];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final c j() {
        return (c) y4.a.h(this.f15753m);
    }

    public void k(c cVar) {
        this.f15753m = cVar;
        this.f15754n = cVar.b();
    }
}
