package ae;

import java.util.concurrent.Executor;
import td.i0;
import td.k1;
import yd.g0;
/* loaded from: classes2.dex */
public final class b extends k1 implements Executor {

    /* renamed from: d  reason: collision with root package name */
    public static final b f325d = new b();

    /* renamed from: e  reason: collision with root package name */
    private static final i0 f326e;

    static {
        int b10;
        int e10;
        k kVar = k.f343c;
        b10 = od.i.b(64, g0.a());
        e10 = yd.i0.e("kotlinx.coroutines.io.parallelism", b10, 0, 0, 12, null);
        f326e = i0.D0(kVar, e10, null, 2, null);
    }

    private b() {
    }

    @Override // td.i0
    public i0 A0(int i10, String str) {
        return k.f343c.A0(i10, str);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO".toString());
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        q0(ad.j.f295a, runnable);
    }

    @Override // td.i0
    public void q0(ad.i iVar, Runnable runnable) {
        f326e.q0(iVar, runnable);
    }

    @Override // td.i0
    public String toString() {
        return "Dispatchers.IO";
    }
}
