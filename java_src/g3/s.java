package g3;

import g3.t;
import g3.z;
import y4.q0;
/* loaded from: classes.dex */
public final class s implements z {

    /* renamed from: a  reason: collision with root package name */
    private final t f16226a;

    /* renamed from: b  reason: collision with root package name */
    private final long f16227b;

    public s(t tVar, long j10) {
        this.f16226a = tVar;
        this.f16227b = j10;
    }

    private a0 b(long j10, long j11) {
        return new a0((j10 * 1000000) / this.f16226a.f16232e, this.f16227b + j11);
    }

    @Override // g3.z
    public boolean e() {
        return true;
    }

    @Override // g3.z
    public z.a h(long j10) {
        long j11;
        y4.a.h(this.f16226a.f16238k);
        t tVar = this.f16226a;
        t.a aVar = tVar.f16238k;
        long[] jArr = aVar.f16240a;
        long[] jArr2 = aVar.f16241b;
        int i10 = q0.i(jArr, tVar.i(j10), true, false);
        long j12 = 0;
        if (i10 == -1) {
            j11 = 0;
        } else {
            j11 = jArr[i10];
        }
        if (i10 != -1) {
            j12 = jArr2[i10];
        }
        a0 b10 = b(j11, j12);
        if (b10.f16143a != j10 && i10 != jArr.length - 1) {
            int i11 = i10 + 1;
            return new z.a(b10, b(jArr[i11], jArr2[i11]));
        }
        return new z.a(b10);
    }

    @Override // g3.z
    public long i() {
        return this.f16226a.f();
    }
}
