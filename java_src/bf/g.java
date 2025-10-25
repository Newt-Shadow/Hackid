package bf;

import af.a1;
import af.m;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class g extends m {

    /* renamed from: b  reason: collision with root package name */
    private final long f4754b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f4755c;

    /* renamed from: d  reason: collision with root package name */
    private long f4756d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(a1 delegate, long j10, boolean z10) {
        super(delegate);
        kotlin.jvm.internal.m.e(delegate, "delegate");
        this.f4754b = j10;
        this.f4755c = z10;
    }

    private final void b(af.d dVar, long j10) {
        af.d dVar2 = new af.d();
        dVar2.W0(dVar);
        dVar.c0(dVar2, j10);
        dVar2.a();
    }

    @Override // af.m, af.a1
    public long L0(af.d sink, long j10) {
        kotlin.jvm.internal.m.e(sink, "sink");
        long j11 = this.f4756d;
        long j12 = this.f4754b;
        if (j11 > j12) {
            j10 = 0;
        } else if (this.f4755c) {
            long j13 = j12 - j11;
            if (j13 == 0) {
                return -1L;
            }
            j10 = Math.min(j10, j13);
        }
        long L0 = super.L0(sink, j10);
        int i10 = (L0 > (-1L) ? 1 : (L0 == (-1L) ? 0 : -1));
        if (i10 != 0) {
            this.f4756d += L0;
        }
        long j14 = this.f4756d;
        long j15 = this.f4754b;
        if ((j14 < j15 && i10 == 0) || j14 > j15) {
            if (L0 > 0 && j14 > j15) {
                b(sink, sink.k0() - (this.f4756d - this.f4754b));
            }
            throw new IOException("expected " + this.f4754b + " bytes but got " + this.f4756d);
        }
        return L0;
    }
}
