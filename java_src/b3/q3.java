package b3;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
final class q3 extends a {

    /* renamed from: i  reason: collision with root package name */
    private final int f4338i;

    /* renamed from: j  reason: collision with root package name */
    private final int f4339j;

    /* renamed from: k  reason: collision with root package name */
    private final int[] f4340k;

    /* renamed from: l  reason: collision with root package name */
    private final int[] f4341l;

    /* renamed from: m  reason: collision with root package name */
    private final g4[] f4342m;

    /* renamed from: n  reason: collision with root package name */
    private final Object[] f4343n;

    /* renamed from: o  reason: collision with root package name */
    private final HashMap f4344o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q3(Collection collection, d4.o0 o0Var) {
        super(false, o0Var);
        int i10 = 0;
        int size = collection.size();
        this.f4340k = new int[size];
        this.f4341l = new int[size];
        this.f4342m = new g4[size];
        this.f4343n = new Object[size];
        this.f4344o = new HashMap();
        Iterator it = collection.iterator();
        int i11 = 0;
        int i12 = 0;
        while (it.hasNext()) {
            p2 p2Var = (p2) it.next();
            this.f4342m[i12] = p2Var.b();
            this.f4341l[i12] = i10;
            this.f4340k[i12] = i11;
            i10 += this.f4342m[i12].t();
            i11 += this.f4342m[i12].m();
            this.f4343n[i12] = p2Var.a();
            this.f4344o.put(this.f4343n[i12], Integer.valueOf(i12));
            i12++;
        }
        this.f4338i = i10;
        this.f4339j = i11;
    }

    @Override // b3.a
    protected Object B(int i10) {
        return this.f4343n[i10];
    }

    @Override // b3.a
    protected int D(int i10) {
        return this.f4340k[i10];
    }

    @Override // b3.a
    protected int E(int i10) {
        return this.f4341l[i10];
    }

    @Override // b3.a
    protected g4 H(int i10) {
        return this.f4342m[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List I() {
        return Arrays.asList(this.f4342m);
    }

    @Override // b3.g4
    public int m() {
        return this.f4339j;
    }

    @Override // b3.g4
    public int t() {
        return this.f4338i;
    }

    @Override // b3.a
    protected int w(Object obj) {
        Integer num = (Integer) this.f4344o.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // b3.a
    protected int x(int i10) {
        return y4.q0.h(this.f4340k, i10 + 1, false, false);
    }

    @Override // b3.a
    protected int y(int i10) {
        return y4.q0.h(this.f4341l, i10 + 1, false, false);
    }
}
