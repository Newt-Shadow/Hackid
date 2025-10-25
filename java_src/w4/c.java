package w4;

import android.os.SystemClock;
import b3.x1;
import d4.s0;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import y4.q0;
/* loaded from: classes.dex */
public abstract class c implements y {

    /* renamed from: a  reason: collision with root package name */
    protected final s0 f31768a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f31769b;

    /* renamed from: c  reason: collision with root package name */
    protected final int[] f31770c;

    /* renamed from: d  reason: collision with root package name */
    private final int f31771d;

    /* renamed from: e  reason: collision with root package name */
    private final x1[] f31772e;

    /* renamed from: f  reason: collision with root package name */
    private final long[] f31773f;

    /* renamed from: g  reason: collision with root package name */
    private int f31774g;

    public c(s0 s0Var, int... iArr) {
        this(s0Var, iArr, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int w(x1 x1Var, x1 x1Var2) {
        return x1Var2.f4510h - x1Var.f4510h;
    }

    @Override // w4.b0
    public final s0 a() {
        return this.f31768a;
    }

    @Override // w4.y
    public boolean c(int i10, long j10) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean d10 = d(i10, elapsedRealtime);
        for (int i11 = 0; i11 < this.f31769b && !d10; i11++) {
            if (i11 != i10 && !d(i11, elapsedRealtime)) {
                d10 = true;
            } else {
                d10 = false;
            }
        }
        if (!d10) {
            return false;
        }
        long[] jArr = this.f31773f;
        jArr[i10] = Math.max(jArr[i10], q0.b(elapsedRealtime, j10, Long.MAX_VALUE));
        return true;
    }

    @Override // w4.y
    public boolean d(int i10, long j10) {
        if (this.f31773f[i10] > j10) {
            return true;
        }
        return false;
    }

    @Override // w4.y
    public void e() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f31768a == cVar.f31768a && Arrays.equals(this.f31770c, cVar.f31770c)) {
            return true;
        }
        return false;
    }

    @Override // w4.b0
    public final x1 h(int i10) {
        return this.f31772e[i10];
    }

    public int hashCode() {
        if (this.f31774g == 0) {
            this.f31774g = (System.identityHashCode(this.f31768a) * 31) + Arrays.hashCode(this.f31770c);
        }
        return this.f31774g;
    }

    @Override // w4.y
    public void i() {
    }

    @Override // w4.b0
    public final int j(int i10) {
        return this.f31770c[i10];
    }

    @Override // w4.y
    public int k(long j10, List list) {
        return list.size();
    }

    @Override // w4.y
    public final int l() {
        return this.f31770c[b()];
    }

    @Override // w4.b0
    public final int length() {
        return this.f31770c.length;
    }

    @Override // w4.b0
    public final int m(x1 x1Var) {
        for (int i10 = 0; i10 < this.f31769b; i10++) {
            if (this.f31772e[i10] == x1Var) {
                return i10;
            }
        }
        return -1;
    }

    @Override // w4.y
    public final x1 n() {
        return this.f31772e[b()];
    }

    @Override // w4.y
    public void p(float f10) {
    }

    @Override // w4.b0
    public final int u(int i10) {
        for (int i11 = 0; i11 < this.f31769b; i11++) {
            if (this.f31770c[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    public c(s0 s0Var, int[] iArr, int i10) {
        int i11 = 0;
        y4.a.f(iArr.length > 0);
        this.f31771d = i10;
        this.f31768a = (s0) y4.a.e(s0Var);
        int length = iArr.length;
        this.f31769b = length;
        this.f31772e = new x1[length];
        for (int i12 = 0; i12 < iArr.length; i12++) {
            this.f31772e[i12] = s0Var.b(iArr[i12]);
        }
        Arrays.sort(this.f31772e, new Comparator() { // from class: w4.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int w10;
                w10 = c.w((x1) obj, (x1) obj2);
                return w10;
            }
        });
        this.f31770c = new int[this.f31769b];
        while (true) {
            int i13 = this.f31769b;
            if (i11 < i13) {
                this.f31770c[i11] = s0Var.c(this.f31772e[i11]);
                i11++;
            } else {
                this.f31773f = new long[i13];
                return;
            }
        }
    }
}
