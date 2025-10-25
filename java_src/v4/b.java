package v4;

import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
final class b implements m4.h {

    /* renamed from: a  reason: collision with root package name */
    private final List f31206a;

    public b(List list) {
        this.f31206a = Collections.unmodifiableList(list);
    }

    @Override // m4.h
    public int a(long j10) {
        return j10 < 0 ? 0 : -1;
    }

    @Override // m4.h
    public long b(int i10) {
        boolean z10;
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        return 0L;
    }

    @Override // m4.h
    public List f(long j10) {
        if (j10 >= 0) {
            return this.f31206a;
        }
        return Collections.emptyList();
    }

    @Override // m4.h
    public int i() {
        return 1;
    }
}
