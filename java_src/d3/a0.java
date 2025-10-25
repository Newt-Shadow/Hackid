package d3;

import d3.j;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public abstract class a0 implements j {

    /* renamed from: b  reason: collision with root package name */
    protected j.a f14419b;

    /* renamed from: c  reason: collision with root package name */
    protected j.a f14420c;

    /* renamed from: d  reason: collision with root package name */
    private j.a f14421d;

    /* renamed from: e  reason: collision with root package name */
    private j.a f14422e;

    /* renamed from: f  reason: collision with root package name */
    private ByteBuffer f14423f;

    /* renamed from: g  reason: collision with root package name */
    private ByteBuffer f14424g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f14425h;

    public a0() {
        ByteBuffer byteBuffer = j.f14542a;
        this.f14423f = byteBuffer;
        this.f14424g = byteBuffer;
        j.a aVar = j.a.f14543e;
        this.f14421d = aVar;
        this.f14422e = aVar;
        this.f14419b = aVar;
        this.f14420c = aVar;
    }

    @Override // d3.j
    public final void a() {
        flush();
        this.f14423f = j.f14542a;
        j.a aVar = j.a.f14543e;
        this.f14421d = aVar;
        this.f14422e = aVar;
        this.f14419b = aVar;
        this.f14420c = aVar;
        j();
    }

    @Override // d3.j
    public final void c() {
        this.f14425h = true;
        i();
    }

    @Override // d3.j
    public boolean d() {
        if (this.f14425h && this.f14424g == j.f14542a) {
            return true;
        }
        return false;
    }

    @Override // d3.j
    public final j.a e(j.a aVar) {
        this.f14421d = aVar;
        this.f14422e = g(aVar);
        if (isActive()) {
            return this.f14422e;
        }
        return j.a.f14543e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean f() {
        return this.f14424g.hasRemaining();
    }

    @Override // d3.j
    public final void flush() {
        this.f14424g = j.f14542a;
        this.f14425h = false;
        this.f14419b = this.f14421d;
        this.f14420c = this.f14422e;
        h();
    }

    protected abstract j.a g(j.a aVar);

    @Override // d3.j
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.f14424g;
        this.f14424g = j.f14542a;
        return byteBuffer;
    }

    protected void h() {
    }

    protected void i() {
    }

    @Override // d3.j
    public boolean isActive() {
        if (this.f14422e != j.a.f14543e) {
            return true;
        }
        return false;
    }

    protected void j() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuffer k(int i10) {
        if (this.f14423f.capacity() < i10) {
            this.f14423f = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
        } else {
            this.f14423f.clear();
        }
        ByteBuffer byteBuffer = this.f14423f;
        this.f14424g = byteBuffer;
        return byteBuffer;
    }
}
