package j0;
/* loaded from: classes.dex */
public final class f extends i0 {

    /* renamed from: b  reason: collision with root package name */
    private final Object f23988b;

    /* renamed from: c  reason: collision with root package name */
    private final int f23989c;

    public f(Object obj, int i10, int i11) {
        super(i11, null);
        this.f23988b = obj;
        this.f23989c = i10;
    }

    public final void b() {
        int i10;
        Object obj = this.f23988b;
        boolean z10 = false;
        if (obj != null) {
            i10 = obj.hashCode();
        } else {
            i10 = 0;
        }
        if (i10 == this.f23989c) {
            z10 = true;
        }
        if (z10) {
            return;
        }
        throw new IllegalStateException("Data in DataStore was mutated but DataStore is only compatible with Immutable types.".toString());
    }

    public final Object c() {
        return this.f23988b;
    }
}
