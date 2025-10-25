package u4;

import java.util.Collections;
import java.util.List;
import m4.h;
/* loaded from: classes.dex */
final class b implements h {

    /* renamed from: b  reason: collision with root package name */
    public static final b f30813b = new b();

    /* renamed from: a  reason: collision with root package name */
    private final List f30814a;

    public b(m4.b bVar) {
        this.f30814a = Collections.singletonList(bVar);
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
            return this.f30814a;
        }
        return Collections.emptyList();
    }

    @Override // m4.h
    public int i() {
        return 1;
    }

    private b() {
        this.f30814a = Collections.emptyList();
    }
}
