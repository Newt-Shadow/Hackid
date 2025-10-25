package b3;

import android.os.Bundle;
import b3.l4;
import b3.r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public final class l4 implements r {

    /* renamed from: b  reason: collision with root package name */
    public static final l4 f4212b = new l4(o6.q.D());

    /* renamed from: c  reason: collision with root package name */
    private static final String f4213c = y4.q0.q0(0);

    /* renamed from: d  reason: collision with root package name */
    public static final r.a f4214d = new r.a() { // from class: b3.j4
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            l4 d10;
            d10 = l4.d(bundle);
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final o6.q f4215a;

    /* loaded from: classes.dex */
    public static final class a implements r {

        /* renamed from: f  reason: collision with root package name */
        private static final String f4216f = y4.q0.q0(0);

        /* renamed from: g  reason: collision with root package name */
        private static final String f4217g = y4.q0.q0(1);

        /* renamed from: h  reason: collision with root package name */
        private static final String f4218h = y4.q0.q0(3);

        /* renamed from: i  reason: collision with root package name */
        private static final String f4219i = y4.q0.q0(4);

        /* renamed from: j  reason: collision with root package name */
        public static final r.a f4220j = new r.a() { // from class: b3.k4
            @Override // b3.r.a
            public final r fromBundle(Bundle bundle) {
                l4.a f10;
                f10 = l4.a.f(bundle);
                return f10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final int f4221a;

        /* renamed from: b  reason: collision with root package name */
        private final d4.s0 f4222b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f4223c;

        /* renamed from: d  reason: collision with root package name */
        private final int[] f4224d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean[] f4225e;

        public a(d4.s0 s0Var, boolean z10, int[] iArr, boolean[] zArr) {
            boolean z11;
            int i10 = s0Var.f14950a;
            this.f4221a = i10;
            boolean z12 = false;
            if (i10 == iArr.length && i10 == zArr.length) {
                z11 = true;
            } else {
                z11 = false;
            }
            y4.a.a(z11);
            this.f4222b = s0Var;
            if (z10 && i10 > 1) {
                z12 = true;
            }
            this.f4223c = z12;
            this.f4224d = (int[]) iArr.clone();
            this.f4225e = (boolean[]) zArr.clone();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ a f(Bundle bundle) {
            d4.s0 s0Var = (d4.s0) d4.s0.f14949h.fromBundle((Bundle) y4.a.e(bundle.getBundle(f4216f)));
            return new a(s0Var, bundle.getBoolean(f4219i, false), (int[]) n6.i.a(bundle.getIntArray(f4217g), new int[s0Var.f14950a]), (boolean[]) n6.i.a(bundle.getBooleanArray(f4218h), new boolean[s0Var.f14950a]));
        }

        public x1 b(int i10) {
            return this.f4222b.b(i10);
        }

        public int c() {
            return this.f4222b.f14952c;
        }

        public boolean d() {
            return q6.a.b(this.f4225e, true);
        }

        public boolean e(int i10) {
            return this.f4225e[i10];
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f4223c == aVar.f4223c && this.f4222b.equals(aVar.f4222b) && Arrays.equals(this.f4224d, aVar.f4224d) && Arrays.equals(this.f4225e, aVar.f4225e)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((this.f4222b.hashCode() * 31) + (this.f4223c ? 1 : 0)) * 31) + Arrays.hashCode(this.f4224d)) * 31) + Arrays.hashCode(this.f4225e);
        }
    }

    public l4(List list) {
        this.f4215a = o6.q.t(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l4 d(Bundle bundle) {
        o6.q b10;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(f4213c);
        if (parcelableArrayList == null) {
            b10 = o6.q.D();
        } else {
            b10 = y4.c.b(a.f4220j, parcelableArrayList);
        }
        return new l4(b10);
    }

    public o6.q b() {
        return this.f4215a;
    }

    public boolean c(int i10) {
        for (int i11 = 0; i11 < this.f4215a.size(); i11++) {
            a aVar = (a) this.f4215a.get(i11);
            if (aVar.d() && aVar.c() == i10) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && l4.class == obj.getClass()) {
            return this.f4215a.equals(((l4) obj).f4215a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4215a.hashCode();
    }
}
