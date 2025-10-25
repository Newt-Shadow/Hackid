package o3;

import b3.x1;
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final int f27277a;

    /* renamed from: b  reason: collision with root package name */
    public final int f27278b;

    /* renamed from: c  reason: collision with root package name */
    public final long f27279c;

    /* renamed from: d  reason: collision with root package name */
    public final long f27280d;

    /* renamed from: e  reason: collision with root package name */
    public final long f27281e;

    /* renamed from: f  reason: collision with root package name */
    public final x1 f27282f;

    /* renamed from: g  reason: collision with root package name */
    public final int f27283g;

    /* renamed from: h  reason: collision with root package name */
    public final long[] f27284h;

    /* renamed from: i  reason: collision with root package name */
    public final long[] f27285i;

    /* renamed from: j  reason: collision with root package name */
    public final int f27286j;

    /* renamed from: k  reason: collision with root package name */
    private final p[] f27287k;

    public o(int i10, int i11, long j10, long j11, long j12, x1 x1Var, int i12, p[] pVarArr, int i13, long[] jArr, long[] jArr2) {
        this.f27277a = i10;
        this.f27278b = i11;
        this.f27279c = j10;
        this.f27280d = j11;
        this.f27281e = j12;
        this.f27282f = x1Var;
        this.f27283g = i12;
        this.f27287k = pVarArr;
        this.f27286j = i13;
        this.f27284h = jArr;
        this.f27285i = jArr2;
    }

    public p a(int i10) {
        p[] pVarArr = this.f27287k;
        if (pVarArr == null) {
            return null;
        }
        return pVarArr[i10];
    }
}
