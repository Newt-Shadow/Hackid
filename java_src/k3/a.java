package k3;

import b3.x1;
import d3.a;
import g3.b0;
import java.util.Collections;
import k3.e;
import y4.e0;
/* loaded from: classes.dex */
final class a extends e {

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f24675e = {5512, 11025, 22050, 44100};

    /* renamed from: b  reason: collision with root package name */
    private boolean f24676b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f24677c;

    /* renamed from: d  reason: collision with root package name */
    private int f24678d;

    public a(b0 b0Var) {
        super(b0Var);
    }

    @Override // k3.e
    protected boolean b(e0 e0Var) {
        String str;
        if (!this.f24676b) {
            int G = e0Var.G();
            int i10 = (G >> 4) & 15;
            this.f24678d = i10;
            if (i10 == 2) {
                this.f24699a.c(new x1.b().g0("audio/mpeg").J(1).h0(f24675e[(G >> 2) & 3]).G());
                this.f24677c = true;
            } else if (i10 != 7 && i10 != 8) {
                if (i10 != 10) {
                    throw new e.a("Audio format not supported: " + this.f24678d);
                }
            } else {
                if (i10 == 7) {
                    str = "audio/g711-alaw";
                } else {
                    str = "audio/g711-mlaw";
                }
                this.f24699a.c(new x1.b().g0(str).J(1).h0(8000).G());
                this.f24677c = true;
            }
            this.f24676b = true;
        } else {
            e0Var.U(1);
        }
        return true;
    }

    @Override // k3.e
    protected boolean c(e0 e0Var, long j10) {
        if (this.f24678d == 2) {
            int a10 = e0Var.a();
            this.f24699a.b(e0Var, a10);
            this.f24699a.f(j10, 1, a10, 0, null);
            return true;
        }
        int G = e0Var.G();
        if (G == 0 && !this.f24677c) {
            int a11 = e0Var.a();
            byte[] bArr = new byte[a11];
            e0Var.l(bArr, 0, a11);
            a.b f10 = d3.a.f(bArr);
            this.f24699a.c(new x1.b().g0("audio/mp4a-latm").K(f10.f14418c).J(f10.f14417b).h0(f10.f14416a).V(Collections.singletonList(bArr)).G());
            this.f24677c = true;
            return false;
        } else if (this.f24678d == 10 && G != 1) {
            return false;
        } else {
            int a12 = e0Var.a();
            this.f24699a.b(e0Var, a12);
            this.f24699a.f(j10, 1, a12, 0, null);
            return true;
        }
    }
}
