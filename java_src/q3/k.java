package q3;

import b3.x1;
import d3.q0;
import kotlin.KotlinVersion;
import q3.i0;
/* loaded from: classes.dex */
public final class k implements m {

    /* renamed from: b  reason: collision with root package name */
    private final String f28163b;

    /* renamed from: c  reason: collision with root package name */
    private String f28164c;

    /* renamed from: d  reason: collision with root package name */
    private g3.b0 f28165d;

    /* renamed from: f  reason: collision with root package name */
    private int f28167f;

    /* renamed from: g  reason: collision with root package name */
    private int f28168g;

    /* renamed from: h  reason: collision with root package name */
    private long f28169h;

    /* renamed from: i  reason: collision with root package name */
    private x1 f28170i;

    /* renamed from: j  reason: collision with root package name */
    private int f28171j;

    /* renamed from: a  reason: collision with root package name */
    private final y4.e0 f28162a = new y4.e0(new byte[18]);

    /* renamed from: e  reason: collision with root package name */
    private int f28166e = 0;

    /* renamed from: k  reason: collision with root package name */
    private long f28172k = -9223372036854775807L;

    public k(String str) {
        this.f28163b = str;
    }

    private boolean a(y4.e0 e0Var, byte[] bArr, int i10) {
        int min = Math.min(e0Var.a(), i10 - this.f28167f);
        e0Var.l(bArr, this.f28167f, min);
        int i11 = this.f28167f + min;
        this.f28167f = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void g() {
        byte[] e10 = this.f28162a.e();
        if (this.f28170i == null) {
            x1 g10 = q0.g(e10, this.f28164c, this.f28163b, null);
            this.f28170i = g10;
            this.f28165d.c(g10);
        }
        this.f28171j = q0.a(e10);
        this.f28169h = (int) ((q0.f(e10) * 1000000) / this.f28170i.f4528z);
    }

    private boolean h(y4.e0 e0Var) {
        while (e0Var.a() > 0) {
            int i10 = this.f28168g << 8;
            this.f28168g = i10;
            int G = i10 | e0Var.G();
            this.f28168g = G;
            if (q0.d(G)) {
                byte[] e10 = this.f28162a.e();
                int i11 = this.f28168g;
                e10[0] = (byte) ((i11 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
                e10[1] = (byte) ((i11 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
                e10[2] = (byte) ((i11 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                e10[3] = (byte) (i11 & KotlinVersion.MAX_COMPONENT_VALUE);
                this.f28167f = 4;
                this.f28168g = 0;
                return true;
            }
        }
        return false;
    }

    @Override // q3.m
    public void b(y4.e0 e0Var) {
        y4.a.h(this.f28165d);
        while (e0Var.a() > 0) {
            int i10 = this.f28166e;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        int min = Math.min(e0Var.a(), this.f28171j - this.f28167f);
                        this.f28165d.b(e0Var, min);
                        int i11 = this.f28167f + min;
                        this.f28167f = i11;
                        int i12 = this.f28171j;
                        if (i11 == i12) {
                            long j10 = this.f28172k;
                            if (j10 != -9223372036854775807L) {
                                this.f28165d.f(j10, 1, i12, 0, null);
                                this.f28172k += this.f28169h;
                            }
                            this.f28166e = 0;
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (a(e0Var, this.f28162a.e(), 18)) {
                    g();
                    this.f28162a.T(0);
                    this.f28165d.b(this.f28162a, 18);
                    this.f28166e = 2;
                }
            } else if (h(e0Var)) {
                this.f28166e = 1;
            }
        }
    }

    @Override // q3.m
    public void c() {
        this.f28166e = 0;
        this.f28167f = 0;
        this.f28168g = 0;
        this.f28172k = -9223372036854775807L;
    }

    @Override // q3.m
    public void d() {
    }

    @Override // q3.m
    public void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f28172k = j10;
        }
    }

    @Override // q3.m
    public void f(g3.m mVar, i0.d dVar) {
        dVar.a();
        this.f28164c = dVar.b();
        this.f28165d = mVar.a(dVar.c(), 1);
    }
}
