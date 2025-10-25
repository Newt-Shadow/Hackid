package w4;

import d4.s0;
import java.util.List;
/* loaded from: classes.dex */
public final class z extends c {

    /* renamed from: h  reason: collision with root package name */
    private final int f31931h;

    /* renamed from: i  reason: collision with root package name */
    private final Object f31932i;

    public z(s0 s0Var, int i10, int i11) {
        this(s0Var, i10, i11, 0, null);
    }

    @Override // w4.y
    public int b() {
        return 0;
    }

    @Override // w4.y
    public void g(long j10, long j11, long j12, List list, f4.o[] oVarArr) {
    }

    @Override // w4.y
    public int o() {
        return this.f31931h;
    }

    @Override // w4.y
    public Object q() {
        return this.f31932i;
    }

    public z(s0 s0Var, int i10, int i11, int i12, Object obj) {
        super(s0Var, new int[]{i10}, i11);
        this.f31931h = i12;
        this.f31932i = obj;
    }
}
