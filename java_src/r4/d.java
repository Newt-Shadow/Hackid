package r4;

import java.util.Collections;
import java.util.List;
import m4.h;
import y4.q0;
/* loaded from: classes.dex */
final class d implements h {

    /* renamed from: a  reason: collision with root package name */
    private final List f28965a;

    /* renamed from: b  reason: collision with root package name */
    private final List f28966b;

    public d(List list, List list2) {
        this.f28965a = list;
        this.f28966b = list2;
    }

    @Override // m4.h
    public int a(long j10) {
        int d10 = q0.d(this.f28966b, Long.valueOf(j10), false, false);
        if (d10 >= this.f28966b.size()) {
            return -1;
        }
        return d10;
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
        if (i10 >= this.f28966b.size()) {
            z11 = false;
        }
        y4.a.a(z11);
        return ((Long) this.f28966b.get(i10)).longValue();
    }

    @Override // m4.h
    public List f(long j10) {
        int f10 = q0.f(this.f28966b, Long.valueOf(j10), true, false);
        if (f10 == -1) {
            return Collections.emptyList();
        }
        return (List) this.f28965a.get(f10);
    }

    @Override // m4.h
    public int i() {
        return this.f28966b.size();
    }
}
