package s4;

import java.util.Collections;
import java.util.List;
import m4.h;
import y4.q0;
/* loaded from: classes.dex */
final class b implements h {

    /* renamed from: a  reason: collision with root package name */
    private final m4.b[] f29407a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f29408b;

    public b(m4.b[] bVarArr, long[] jArr) {
        this.f29407a = bVarArr;
        this.f29408b = jArr;
    }

    @Override // m4.h
    public int a(long j10) {
        int e10 = q0.e(this.f29408b, j10, false, false);
        if (e10 >= this.f29408b.length) {
            return -1;
        }
        return e10;
    }

    @Override // m4.h
    public long b(int i10) {
        boolean z10;
        boolean z11 = true;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        if (i10 >= this.f29408b.length) {
            z11 = false;
        }
        y4.a.a(z11);
        return this.f29408b[i10];
    }

    @Override // m4.h
    public List f(long j10) {
        m4.b bVar;
        int i10 = q0.i(this.f29408b, j10, true, false);
        if (i10 != -1 && (bVar = this.f29407a[i10]) != m4.b.f25676r) {
            return Collections.singletonList(bVar);
        }
        return Collections.emptyList();
    }

    @Override // m4.h
    public int i() {
        return this.f29408b.length;
    }
}
