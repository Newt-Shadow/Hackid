package a5;

import b3.o;
import b3.u3;
import b3.x1;
import e3.g;
import java.nio.ByteBuffer;
import org.apache.tika.pipes.PipesConfigBase;
import y4.e0;
import y4.q0;
/* loaded from: classes.dex */
public final class b extends o {

    /* renamed from: n  reason: collision with root package name */
    private final g f106n;

    /* renamed from: o  reason: collision with root package name */
    private final e0 f107o;

    /* renamed from: p  reason: collision with root package name */
    private long f108p;

    /* renamed from: q  reason: collision with root package name */
    private a f109q;

    /* renamed from: r  reason: collision with root package name */
    private long f110r;

    public b() {
        super(6);
        this.f106n = new g(1);
        this.f107o = new e0();
    }

    private float[] Y(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.f107o.R(byteBuffer.array(), byteBuffer.limit());
        this.f107o.T(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i10 = 0; i10 < 3; i10++) {
            fArr[i10] = Float.intBitsToFloat(this.f107o.t());
        }
        return fArr;
    }

    private void Z() {
        a aVar = this.f109q;
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // b3.o
    protected void O() {
        Z();
    }

    @Override // b3.o
    protected void Q(long j10, boolean z10) {
        this.f110r = Long.MIN_VALUE;
        Z();
    }

    @Override // b3.o
    protected void U(x1[] x1VarArr, long j10, long j11) {
        this.f108p = j11;
    }

    @Override // b3.u3
    public int b(x1 x1Var) {
        if ("application/x-camera-motion".equals(x1Var.f4514l)) {
            return u3.v(4);
        }
        return u3.v(0);
    }

    @Override // b3.t3
    public boolean d() {
        return j();
    }

    @Override // b3.t3, b3.u3
    public String getName() {
        return "CameraMotionRenderer";
    }

    @Override // b3.t3
    public boolean isReady() {
        return true;
    }

    @Override // b3.t3
    public void x(long j10, long j11) {
        while (!j() && this.f110r < PipesConfigBase.DEFAULT_MAX_FOR_EMIT_BATCH + j10) {
            this.f106n.l();
            if (V(J(), this.f106n, 0) == -4 && !this.f106n.q()) {
                g gVar = this.f106n;
                this.f110r = gVar.f15291e;
                if (this.f109q != null && !gVar.p()) {
                    this.f106n.x();
                    float[] Y = Y((ByteBuffer) q0.j(this.f106n.f15289c));
                    if (Y != null) {
                        ((a) q0.j(this.f109q)).b(this.f110r - this.f108p, Y);
                    }
                }
            } else {
                return;
            }
        }
    }

    @Override // b3.o, b3.p3.b
    public void y(int i10, Object obj) {
        if (i10 == 8) {
            this.f109q = (a) obj;
        } else {
            super.y(i10, obj);
        }
    }
}
