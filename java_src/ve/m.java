package ve;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: c  reason: collision with root package name */
    public static final a f31637c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private int f31638a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f31639b = new int[10];

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final int a(int i10) {
        return this.f31639b[i10];
    }

    public final int b() {
        if ((this.f31638a & 2) != 0) {
            return this.f31639b[1];
        }
        return -1;
    }

    public final int c() {
        if ((this.f31638a & 128) != 0) {
            return this.f31639b[7];
        }
        return 65535;
    }

    public final int d() {
        if ((this.f31638a & 16) != 0) {
            return this.f31639b[4];
        }
        return Integer.MAX_VALUE;
    }

    public final int e(int i10) {
        if ((this.f31638a & 32) != 0) {
            return this.f31639b[5];
        }
        return i10;
    }

    public final boolean f(int i10) {
        if (((1 << i10) & this.f31638a) != 0) {
            return true;
        }
        return false;
    }

    public final void g(m other) {
        kotlin.jvm.internal.m.e(other, "other");
        int i10 = 0;
        while (i10 < 10) {
            int i11 = i10 + 1;
            if (other.f(i10)) {
                h(i10, other.a(i10));
            }
            i10 = i11;
        }
    }

    public final m h(int i10, int i11) {
        if (i10 >= 0) {
            int[] iArr = this.f31639b;
            if (i10 < iArr.length) {
                this.f31638a = (1 << i10) | this.f31638a;
                iArr[i10] = i11;
            }
        }
        return this;
    }

    public final int i() {
        return Integer.bitCount(this.f31638a);
    }
}
