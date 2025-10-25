package p4;

import android.graphics.Bitmap;
import io.flutter.Build;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;
import kotlin.KotlinVersion;
import m4.b;
import m4.g;
import m4.h;
import y4.e0;
import y4.q0;
/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: o  reason: collision with root package name */
    private final e0 f27860o;

    /* renamed from: p  reason: collision with root package name */
    private final e0 f27861p;

    /* renamed from: q  reason: collision with root package name */
    private final C0284a f27862q;

    /* renamed from: r  reason: collision with root package name */
    private Inflater f27863r;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p4.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0284a {

        /* renamed from: a  reason: collision with root package name */
        private final e0 f27864a = new e0();

        /* renamed from: b  reason: collision with root package name */
        private final int[] f27865b = new int[256];

        /* renamed from: c  reason: collision with root package name */
        private boolean f27866c;

        /* renamed from: d  reason: collision with root package name */
        private int f27867d;

        /* renamed from: e  reason: collision with root package name */
        private int f27868e;

        /* renamed from: f  reason: collision with root package name */
        private int f27869f;

        /* renamed from: g  reason: collision with root package name */
        private int f27870g;

        /* renamed from: h  reason: collision with root package name */
        private int f27871h;

        /* renamed from: i  reason: collision with root package name */
        private int f27872i;

        /* JADX INFO: Access modifiers changed from: private */
        public void e(e0 e0Var, int i10) {
            boolean z10;
            int J;
            if (i10 < 4) {
                return;
            }
            e0Var.U(3);
            if ((e0Var.G() & 128) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            int i11 = i10 - 4;
            if (z10) {
                if (i11 < 7 || (J = e0Var.J()) < 4) {
                    return;
                }
                this.f27871h = e0Var.M();
                this.f27872i = e0Var.M();
                this.f27864a.P(J - 4);
                i11 -= 7;
            }
            int f10 = this.f27864a.f();
            int g10 = this.f27864a.g();
            if (f10 < g10 && i11 > 0) {
                int min = Math.min(i11, g10 - f10);
                e0Var.l(this.f27864a.e(), f10, min);
                this.f27864a.T(f10 + min);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(e0 e0Var, int i10) {
            if (i10 < 19) {
                return;
            }
            this.f27867d = e0Var.M();
            this.f27868e = e0Var.M();
            e0Var.U(11);
            this.f27869f = e0Var.M();
            this.f27870g = e0Var.M();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(e0 e0Var, int i10) {
            if (i10 % 5 != 2) {
                return;
            }
            e0Var.U(2);
            Arrays.fill(this.f27865b, 0);
            int i11 = i10 / 5;
            for (int i12 = 0; i12 < i11; i12++) {
                int G = e0Var.G();
                int G2 = e0Var.G();
                int G3 = e0Var.G();
                int G4 = e0Var.G();
                double d10 = G2;
                double d11 = G3 - 128;
                double d12 = G4 - 128;
                this.f27865b[G] = (q0.q((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 0, KotlinVersion.MAX_COMPONENT_VALUE) << 8) | (e0Var.G() << 24) | (q0.q((int) ((1.402d * d11) + d10), 0, KotlinVersion.MAX_COMPONENT_VALUE) << 16) | q0.q((int) (d10 + (d12 * 1.772d)), 0, KotlinVersion.MAX_COMPONENT_VALUE);
            }
            this.f27866c = true;
        }

        public m4.b d() {
            int i10;
            int G;
            int i11;
            if (this.f27867d != 0 && this.f27868e != 0 && this.f27871h != 0 && this.f27872i != 0 && this.f27864a.g() != 0 && this.f27864a.f() == this.f27864a.g() && this.f27866c) {
                this.f27864a.T(0);
                int i12 = this.f27871h * this.f27872i;
                int[] iArr = new int[i12];
                int i13 = 0;
                while (i13 < i12) {
                    int G2 = this.f27864a.G();
                    if (G2 != 0) {
                        i10 = i13 + 1;
                        iArr[i13] = this.f27865b[G2];
                    } else {
                        int G3 = this.f27864a.G();
                        if (G3 != 0) {
                            if ((G3 & 64) == 0) {
                                G = G3 & 63;
                            } else {
                                G = ((G3 & 63) << 8) | this.f27864a.G();
                            }
                            if ((G3 & 128) == 0) {
                                i11 = 0;
                            } else {
                                i11 = this.f27865b[this.f27864a.G()];
                            }
                            i10 = G + i13;
                            Arrays.fill(iArr, i13, i10, i11);
                        }
                    }
                    i13 = i10;
                }
                return new b.C0247b().f(Bitmap.createBitmap(iArr, this.f27871h, this.f27872i, Bitmap.Config.ARGB_8888)).k(this.f27869f / this.f27867d).l(0).h(this.f27870g / this.f27868e, 0).i(0).n(this.f27871h / this.f27867d).g(this.f27872i / this.f27868e).a();
            }
            return null;
        }

        public void h() {
            this.f27867d = 0;
            this.f27868e = 0;
            this.f27869f = 0;
            this.f27870g = 0;
            this.f27871h = 0;
            this.f27872i = 0;
            this.f27864a.P(0);
            this.f27866c = false;
        }
    }

    public a() {
        super("PgsDecoder");
        this.f27860o = new e0();
        this.f27861p = new e0();
        this.f27862q = new C0284a();
    }

    private void B(e0 e0Var) {
        if (e0Var.a() > 0 && e0Var.j() == 120) {
            if (this.f27863r == null) {
                this.f27863r = new Inflater();
            }
            if (q0.p0(e0Var, this.f27861p, this.f27863r)) {
                e0Var.R(this.f27861p.e(), this.f27861p.g());
            }
        }
    }

    private static m4.b C(e0 e0Var, C0284a c0284a) {
        int g10 = e0Var.g();
        int G = e0Var.G();
        int M = e0Var.M();
        int f10 = e0Var.f() + M;
        m4.b bVar = null;
        if (f10 > g10) {
            e0Var.T(g10);
            return null;
        }
        if (G != 128) {
            switch (G) {
                case 20:
                    c0284a.g(e0Var, M);
                    break;
                case 21:
                    c0284a.e(e0Var, M);
                    break;
                case Build.API_LEVELS.API_22 /* 22 */:
                    c0284a.f(e0Var, M);
                    break;
            }
        } else {
            bVar = c0284a.d();
            c0284a.h();
        }
        e0Var.T(f10);
        return bVar;
    }

    @Override // m4.g
    protected h z(byte[] bArr, int i10, boolean z10) {
        this.f27860o.R(bArr, i10);
        B(this.f27860o);
        this.f27862q.h();
        ArrayList arrayList = new ArrayList();
        while (this.f27860o.a() >= 3) {
            m4.b C = C(this.f27860o, this.f27862q);
            if (C != null) {
                arrayList.add(C);
            }
        }
        return new b(Collections.unmodifiableList(arrayList));
    }
}
