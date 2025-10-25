package ae;

import td.i0;
import yd.n;
/* loaded from: classes2.dex */
public final class c extends f {

    /* renamed from: i  reason: collision with root package name */
    public static final c f327i = new c();

    private c() {
        super(j.f339c, j.f340d, j.f341e, j.f337a);
    }

    @Override // td.i0
    public i0 A0(int i10, String str) {
        n.a(i10);
        if (i10 >= j.f339c) {
            return n.b(this, str);
        }
        return super.A0(i10, str);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // td.i0
    public String toString() {
        return "Dispatchers.Default";
    }
}
