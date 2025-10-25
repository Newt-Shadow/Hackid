package d3;

import d3.j;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* loaded from: classes.dex */
public final class y0 implements j {

    /* renamed from: b  reason: collision with root package name */
    private int f14692b;

    /* renamed from: c  reason: collision with root package name */
    private float f14693c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    private float f14694d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private j.a f14695e;

    /* renamed from: f  reason: collision with root package name */
    private j.a f14696f;

    /* renamed from: g  reason: collision with root package name */
    private j.a f14697g;

    /* renamed from: h  reason: collision with root package name */
    private j.a f14698h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f14699i;

    /* renamed from: j  reason: collision with root package name */
    private x0 f14700j;

    /* renamed from: k  reason: collision with root package name */
    private ByteBuffer f14701k;

    /* renamed from: l  reason: collision with root package name */
    private ShortBuffer f14702l;

    /* renamed from: m  reason: collision with root package name */
    private ByteBuffer f14703m;

    /* renamed from: n  reason: collision with root package name */
    private long f14704n;

    /* renamed from: o  reason: collision with root package name */
    private long f14705o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f14706p;

    public y0() {
        j.a aVar = j.a.f14543e;
        this.f14695e = aVar;
        this.f14696f = aVar;
        this.f14697g = aVar;
        this.f14698h = aVar;
        ByteBuffer byteBuffer = j.f14542a;
        this.f14701k = byteBuffer;
        this.f14702l = byteBuffer.asShortBuffer();
        this.f14703m = byteBuffer;
        this.f14692b = -1;
    }

    @Override // d3.j
    public void a() {
        this.f14693c = 1.0f;
        this.f14694d = 1.0f;
        j.a aVar = j.a.f14543e;
        this.f14695e = aVar;
        this.f14696f = aVar;
        this.f14697g = aVar;
        this.f14698h = aVar;
        ByteBuffer byteBuffer = j.f14542a;
        this.f14701k = byteBuffer;
        this.f14702l = byteBuffer.asShortBuffer();
        this.f14703m = byteBuffer;
        this.f14692b = -1;
        this.f14699i = false;
        this.f14700j = null;
        this.f14704n = 0L;
        this.f14705o = 0L;
        this.f14706p = false;
    }

    @Override // d3.j
    public void b(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
        int remaining = byteBuffer.remaining();
        this.f14704n += remaining;
        ((x0) y4.a.e(this.f14700j)).t(asShortBuffer);
        byteBuffer.position(byteBuffer.position() + remaining);
    }

    @Override // d3.j
    public void c() {
        x0 x0Var = this.f14700j;
        if (x0Var != null) {
            x0Var.s();
        }
        this.f14706p = true;
    }

    @Override // d3.j
    public boolean d() {
        x0 x0Var;
        if (this.f14706p && ((x0Var = this.f14700j) == null || x0Var.k() == 0)) {
            return true;
        }
        return false;
    }

    @Override // d3.j
    public j.a e(j.a aVar) {
        if (aVar.f14546c == 2) {
            int i10 = this.f14692b;
            if (i10 == -1) {
                i10 = aVar.f14544a;
            }
            this.f14695e = aVar;
            j.a aVar2 = new j.a(i10, aVar.f14545b, 2);
            this.f14696f = aVar2;
            this.f14699i = true;
            return aVar2;
        }
        throw new j.b(aVar);
    }

    public long f(long j10) {
        if (this.f14705o >= 1024) {
            long l10 = this.f14704n - ((x0) y4.a.e(this.f14700j)).l();
            int i10 = this.f14698h.f14544a;
            int i11 = this.f14697g.f14544a;
            if (i10 == i11) {
                return y4.q0.M0(j10, l10, this.f14705o);
            }
            return y4.q0.M0(j10, l10 * i10, this.f14705o * i11);
        }
        return (long) (this.f14693c * j10);
    }

    @Override // d3.j
    public void flush() {
        if (isActive()) {
            j.a aVar = this.f14695e;
            this.f14697g = aVar;
            j.a aVar2 = this.f14696f;
            this.f14698h = aVar2;
            if (this.f14699i) {
                this.f14700j = new x0(aVar.f14544a, aVar.f14545b, this.f14693c, this.f14694d, aVar2.f14544a);
            } else {
                x0 x0Var = this.f14700j;
                if (x0Var != null) {
                    x0Var.i();
                }
            }
        }
        this.f14703m = j.f14542a;
        this.f14704n = 0L;
        this.f14705o = 0L;
        this.f14706p = false;
    }

    public void g(float f10) {
        if (this.f14694d != f10) {
            this.f14694d = f10;
            this.f14699i = true;
        }
    }

    @Override // d3.j
    public ByteBuffer getOutput() {
        int k10;
        x0 x0Var = this.f14700j;
        if (x0Var != null && (k10 = x0Var.k()) > 0) {
            if (this.f14701k.capacity() < k10) {
                ByteBuffer order = ByteBuffer.allocateDirect(k10).order(ByteOrder.nativeOrder());
                this.f14701k = order;
                this.f14702l = order.asShortBuffer();
            } else {
                this.f14701k.clear();
                this.f14702l.clear();
            }
            x0Var.j(this.f14702l);
            this.f14705o += k10;
            this.f14701k.limit(k10);
            this.f14703m = this.f14701k;
        }
        ByteBuffer byteBuffer = this.f14703m;
        this.f14703m = j.f14542a;
        return byteBuffer;
    }

    public void h(float f10) {
        if (this.f14693c != f10) {
            this.f14693c = f10;
            this.f14699i = true;
        }
    }

    @Override // d3.j
    public boolean isActive() {
        if (this.f14696f.f14544a != -1 && (Math.abs(this.f14693c - 1.0f) >= 1.0E-4f || Math.abs(this.f14694d - 1.0f) >= 1.0E-4f || this.f14696f.f14544a != this.f14695e.f14544a)) {
            return true;
        }
        return false;
    }
}
