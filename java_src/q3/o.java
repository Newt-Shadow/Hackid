package q3;

import b3.x1;
import java.util.Arrays;
import java.util.Collections;
import org.apache.tika.fork.ForkServer;
import q3.i0;
import y4.q0;
/* loaded from: classes.dex */
public final class o implements m {

    /* renamed from: l  reason: collision with root package name */
    private static final float[] f28203l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* renamed from: a  reason: collision with root package name */
    private final k0 f28204a;

    /* renamed from: b  reason: collision with root package name */
    private final y4.e0 f28205b;

    /* renamed from: e  reason: collision with root package name */
    private final u f28208e;

    /* renamed from: f  reason: collision with root package name */
    private b f28209f;

    /* renamed from: g  reason: collision with root package name */
    private long f28210g;

    /* renamed from: h  reason: collision with root package name */
    private String f28211h;

    /* renamed from: i  reason: collision with root package name */
    private g3.b0 f28212i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f28213j;

    /* renamed from: c  reason: collision with root package name */
    private final boolean[] f28206c = new boolean[4];

    /* renamed from: d  reason: collision with root package name */
    private final a f28207d = new a(128);

    /* renamed from: k  reason: collision with root package name */
    private long f28214k = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: f  reason: collision with root package name */
        private static final byte[] f28215f = {0, 0, 1};

        /* renamed from: a  reason: collision with root package name */
        private boolean f28216a;

        /* renamed from: b  reason: collision with root package name */
        private int f28217b;

        /* renamed from: c  reason: collision with root package name */
        public int f28218c;

        /* renamed from: d  reason: collision with root package name */
        public int f28219d;

        /* renamed from: e  reason: collision with root package name */
        public byte[] f28220e;

        public a(int i10) {
            this.f28220e = new byte[i10];
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (!this.f28216a) {
                return;
            }
            int i12 = i11 - i10;
            byte[] bArr2 = this.f28220e;
            int length = bArr2.length;
            int i13 = this.f28218c;
            if (length < i13 + i12) {
                this.f28220e = Arrays.copyOf(bArr2, (i13 + i12) * 2);
            }
            System.arraycopy(bArr, i10, this.f28220e, this.f28218c, i12);
            this.f28218c += i12;
        }

        public boolean b(int i10, int i11) {
            int i12 = this.f28217b;
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 != 3) {
                            if (i12 == 4) {
                                if (i10 == 179 || i10 == 181) {
                                    this.f28218c -= i11;
                                    this.f28216a = false;
                                    return true;
                                }
                            } else {
                                throw new IllegalStateException();
                            }
                        } else if ((i10 & 240) != 32) {
                            y4.r.i("H263Reader", "Unexpected start code value");
                            c();
                        } else {
                            this.f28219d = this.f28218c;
                            this.f28217b = 4;
                        }
                    } else if (i10 > 31) {
                        y4.r.i("H263Reader", "Unexpected start code value");
                        c();
                    } else {
                        this.f28217b = 3;
                    }
                } else if (i10 != 181) {
                    y4.r.i("H263Reader", "Unexpected start code value");
                    c();
                } else {
                    this.f28217b = 2;
                }
            } else if (i10 == 176) {
                this.f28217b = 1;
                this.f28216a = true;
            }
            byte[] bArr = f28215f;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f28216a = false;
            this.f28218c = 0;
            this.f28217b = 0;
        }
    }

    /* loaded from: classes.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final g3.b0 f28221a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f28222b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f28223c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f28224d;

        /* renamed from: e  reason: collision with root package name */
        private int f28225e;

        /* renamed from: f  reason: collision with root package name */
        private int f28226f;

        /* renamed from: g  reason: collision with root package name */
        private long f28227g;

        /* renamed from: h  reason: collision with root package name */
        private long f28228h;

        public b(g3.b0 b0Var) {
            this.f28221a = b0Var;
        }

        public void a(byte[] bArr, int i10, int i11) {
            boolean z10;
            if (this.f28223c) {
                int i12 = this.f28226f;
                int i13 = (i10 + 1) - i12;
                if (i13 < i11) {
                    if (((bArr[i13] & 192) >> 6) == 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f28224d = z10;
                    this.f28223c = false;
                    return;
                }
                this.f28226f = i12 + (i11 - i10);
            }
        }

        public void b(long j10, int i10, boolean z10) {
            if (this.f28225e == 182 && z10 && this.f28222b) {
                long j11 = this.f28228h;
                if (j11 != -9223372036854775807L) {
                    this.f28221a.f(j11, this.f28224d ? 1 : 0, (int) (j10 - this.f28227g), i10, null);
                }
            }
            if (this.f28225e != 179) {
                this.f28227g = j10;
            }
        }

        public void c(int i10, long j10) {
            boolean z10;
            this.f28225e = i10;
            this.f28224d = false;
            boolean z11 = true;
            if (i10 != 182 && i10 != 179) {
                z10 = false;
            } else {
                z10 = true;
            }
            this.f28222b = z10;
            if (i10 != 182) {
                z11 = false;
            }
            this.f28223c = z11;
            this.f28226f = 0;
            this.f28228h = j10;
        }

        public void d() {
            this.f28222b = false;
            this.f28223c = false;
            this.f28224d = false;
            this.f28225e = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(k0 k0Var) {
        this.f28204a = k0Var;
        if (k0Var != null) {
            this.f28208e = new u(178, 128);
            this.f28205b = new y4.e0();
            return;
        }
        this.f28208e = null;
        this.f28205b = null;
    }

    private static x1 a(a aVar, int i10, String str) {
        byte[] copyOf = Arrays.copyOf(aVar.f28220e, aVar.f28218c);
        y4.d0 d0Var = new y4.d0(copyOf);
        d0Var.s(i10);
        d0Var.s(4);
        d0Var.q();
        d0Var.r(8);
        if (d0Var.g()) {
            d0Var.r(4);
            d0Var.r(3);
        }
        int h10 = d0Var.h(4);
        float f10 = 1.0f;
        if (h10 == 15) {
            int h11 = d0Var.h(8);
            int h12 = d0Var.h(8);
            if (h12 == 0) {
                y4.r.i("H263Reader", "Invalid aspect ratio");
            } else {
                f10 = h11 / h12;
            }
        } else {
            float[] fArr = f28203l;
            if (h10 < fArr.length) {
                f10 = fArr[h10];
            } else {
                y4.r.i("H263Reader", "Invalid aspect ratio");
            }
        }
        if (d0Var.g()) {
            d0Var.r(2);
            d0Var.r(1);
            if (d0Var.g()) {
                d0Var.r(15);
                d0Var.q();
                d0Var.r(15);
                d0Var.q();
                d0Var.r(15);
                d0Var.q();
                d0Var.r(3);
                d0Var.r(11);
                d0Var.q();
                d0Var.r(15);
                d0Var.q();
            }
        }
        if (d0Var.h(2) != 0) {
            y4.r.i("H263Reader", "Unhandled video object layer shape");
        }
        d0Var.q();
        int h13 = d0Var.h(16);
        d0Var.q();
        if (d0Var.g()) {
            if (h13 == 0) {
                y4.r.i("H263Reader", "Invalid vop_increment_time_resolution");
            } else {
                int i11 = 0;
                for (int i12 = h13 - 1; i12 > 0; i12 >>= 1) {
                    i11++;
                }
                d0Var.r(i11);
            }
        }
        d0Var.q();
        int h14 = d0Var.h(13);
        d0Var.q();
        int h15 = d0Var.h(13);
        d0Var.q();
        d0Var.q();
        return new x1.b().U(str).g0("video/mp4v-es").n0(h14).S(h15).c0(f10).V(Collections.singletonList(copyOf)).G();
    }

    @Override // q3.m
    public void b(y4.e0 e0Var) {
        int i10;
        y4.a.h(this.f28209f);
        y4.a.h(this.f28212i);
        int f10 = e0Var.f();
        int g10 = e0Var.g();
        byte[] e10 = e0Var.e();
        this.f28210g += e0Var.a();
        this.f28212i.b(e0Var, e0Var.a());
        while (true) {
            int c10 = y4.w.c(e10, f10, g10, this.f28206c);
            if (c10 == g10) {
                break;
            }
            int i11 = c10 + 3;
            int i12 = e0Var.e()[i11] & ForkServer.ERROR;
            int i13 = c10 - f10;
            int i14 = 0;
            if (!this.f28213j) {
                if (i13 > 0) {
                    this.f28207d.a(e10, f10, c10);
                }
                if (i13 < 0) {
                    i10 = -i13;
                } else {
                    i10 = 0;
                }
                if (this.f28207d.b(i12, i10)) {
                    g3.b0 b0Var = this.f28212i;
                    a aVar = this.f28207d;
                    b0Var.c(a(aVar, aVar.f28219d, (String) y4.a.e(this.f28211h)));
                    this.f28213j = true;
                }
            }
            this.f28209f.a(e10, f10, c10);
            u uVar = this.f28208e;
            if (uVar != null) {
                if (i13 > 0) {
                    uVar.a(e10, f10, c10);
                } else {
                    i14 = -i13;
                }
                if (this.f28208e.b(i14)) {
                    u uVar2 = this.f28208e;
                    ((y4.e0) q0.j(this.f28205b)).R(this.f28208e.f28347d, y4.w.q(uVar2.f28347d, uVar2.f28348e));
                    ((k0) q0.j(this.f28204a)).a(this.f28214k, this.f28205b);
                }
                if (i12 == 178 && e0Var.e()[c10 + 2] == 1) {
                    this.f28208e.e(i12);
                }
            }
            int i15 = g10 - c10;
            this.f28209f.b(this.f28210g - i15, i15, this.f28213j);
            this.f28209f.c(i12, this.f28214k);
            f10 = i11;
        }
        if (!this.f28213j) {
            this.f28207d.a(e10, f10, g10);
        }
        this.f28209f.a(e10, f10, g10);
        u uVar3 = this.f28208e;
        if (uVar3 != null) {
            uVar3.a(e10, f10, g10);
        }
    }

    @Override // q3.m
    public void c() {
        y4.w.a(this.f28206c);
        this.f28207d.c();
        b bVar = this.f28209f;
        if (bVar != null) {
            bVar.d();
        }
        u uVar = this.f28208e;
        if (uVar != null) {
            uVar.d();
        }
        this.f28210g = 0L;
        this.f28214k = -9223372036854775807L;
    }

    @Override // q3.m
    public void d() {
    }

    @Override // q3.m
    public void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f28214k = j10;
        }
    }

    @Override // q3.m
    public void f(g3.m mVar, i0.d dVar) {
        dVar.a();
        this.f28211h = dVar.b();
        g3.b0 a10 = mVar.a(dVar.c(), 2);
        this.f28212i = a10;
        this.f28209f = new b(a10);
        k0 k0Var = this.f28204a;
        if (k0Var != null) {
            k0Var.b(mVar, dVar);
        }
    }
}
