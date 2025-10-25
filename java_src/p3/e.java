package p3;

import g3.l;
import g3.n;
import java.util.Arrays;
import y4.e0;
/* loaded from: classes.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private final f f27816a = new f();

    /* renamed from: b  reason: collision with root package name */
    private final e0 f27817b = new e0(new byte[65025], 0);

    /* renamed from: c  reason: collision with root package name */
    private int f27818c = -1;

    /* renamed from: d  reason: collision with root package name */
    private int f27819d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f27820e;

    private int a(int i10) {
        int i11;
        int i12 = 0;
        this.f27819d = 0;
        do {
            int i13 = this.f27819d;
            int i14 = i10 + i13;
            f fVar = this.f27816a;
            if (i14 >= fVar.f27827g) {
                break;
            }
            int[] iArr = fVar.f27830j;
            this.f27819d = i13 + 1;
            i11 = iArr[i13 + i10];
            i12 += i11;
        } while (i11 == 255);
        return i12;
    }

    public f b() {
        return this.f27816a;
    }

    public e0 c() {
        return this.f27817b;
    }

    public boolean d(l lVar) {
        boolean z10;
        boolean z11;
        int i10;
        if (lVar != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        if (this.f27820e) {
            this.f27820e = false;
            this.f27817b.P(0);
        }
        while (!this.f27820e) {
            if (this.f27818c < 0) {
                if (!this.f27816a.c(lVar) || !this.f27816a.a(lVar, true)) {
                    return false;
                }
                f fVar = this.f27816a;
                int i11 = fVar.f27828h;
                if ((fVar.f27822b & 1) == 1 && this.f27817b.g() == 0) {
                    i11 += a(0);
                    i10 = this.f27819d + 0;
                } else {
                    i10 = 0;
                }
                if (!n.e(lVar, i11)) {
                    return false;
                }
                this.f27818c = i10;
            }
            int a10 = a(this.f27818c);
            int i12 = this.f27818c + this.f27819d;
            if (a10 > 0) {
                e0 e0Var = this.f27817b;
                e0Var.c(e0Var.g() + a10);
                if (!n.d(lVar, this.f27817b.e(), this.f27817b.g(), a10)) {
                    return false;
                }
                e0 e0Var2 = this.f27817b;
                e0Var2.S(e0Var2.g() + a10);
                if (this.f27816a.f27830j[i12 - 1] != 255) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                this.f27820e = z11;
            }
            if (i12 == this.f27816a.f27827g) {
                i12 = -1;
            }
            this.f27818c = i12;
        }
        return true;
    }

    public void e() {
        this.f27816a.b();
        this.f27817b.P(0);
        this.f27818c = -1;
        this.f27820e = false;
    }

    public void f() {
        if (this.f27817b.e().length == 65025) {
            return;
        }
        e0 e0Var = this.f27817b;
        e0Var.R(Arrays.copyOf(e0Var.e(), Math.max(65025, this.f27817b.g())), this.f27817b.g());
    }
}
