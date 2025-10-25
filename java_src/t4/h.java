package t4;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import y4.q0;
/* loaded from: classes.dex */
final class h implements m4.h {

    /* renamed from: a  reason: collision with root package name */
    private final d f29927a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f29928b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f29929c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f29930d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f29931e;

    public h(d dVar, Map map, Map map2, Map map3) {
        Map emptyMap;
        this.f29927a = dVar;
        this.f29930d = map2;
        this.f29931e = map3;
        if (map != null) {
            emptyMap = Collections.unmodifiableMap(map);
        } else {
            emptyMap = Collections.emptyMap();
        }
        this.f29929c = emptyMap;
        this.f29928b = dVar.j();
    }

    @Override // m4.h
    public int a(long j10) {
        int e10 = q0.e(this.f29928b, j10, false, false);
        if (e10 >= this.f29928b.length) {
            return -1;
        }
        return e10;
    }

    @Override // m4.h
    public long b(int i10) {
        return this.f29928b[i10];
    }

    @Override // m4.h
    public List f(long j10) {
        return this.f29927a.h(j10, this.f29929c, this.f29930d, this.f29931e);
    }

    @Override // m4.h
    public int i() {
        return this.f29928b.length;
    }
}
