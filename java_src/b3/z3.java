package b3;

import android.os.Bundle;
import b3.r;
/* loaded from: classes.dex */
public final class z3 extends s3 {

    /* renamed from: e  reason: collision with root package name */
    private static final String f4582e = y4.q0.q0(1);

    /* renamed from: f  reason: collision with root package name */
    private static final String f4583f = y4.q0.q0(2);

    /* renamed from: g  reason: collision with root package name */
    public static final r.a f4584g = new r.a() { // from class: b3.y3
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            z3 d10;
            d10 = z3.d(bundle);
            return d10;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final int f4585c;

    /* renamed from: d  reason: collision with root package name */
    private final float f4586d;

    public z3(int i10) {
        y4.a.b(i10 > 0, "maxStars must be a positive integer");
        this.f4585c = i10;
        this.f4586d = -1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static z3 d(Bundle bundle) {
        boolean z10;
        if (bundle.getInt(s3.f4361a, -1) == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        int i10 = bundle.getInt(f4582e, 5);
        float f10 = bundle.getFloat(f4583f, -1.0f);
        if (f10 == -1.0f) {
            return new z3(i10);
        }
        return new z3(i10, f10);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof z3)) {
            return false;
        }
        z3 z3Var = (z3) obj;
        if (this.f4585c != z3Var.f4585c || this.f4586d != z3Var.f4586d) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return n6.k.b(Integer.valueOf(this.f4585c), Float.valueOf(this.f4586d));
    }

    public z3(int i10, float f10) {
        boolean z10 = true;
        y4.a.b(i10 > 0, "maxStars must be a positive integer");
        y4.a.b((f10 < 0.0f || f10 > ((float) i10)) ? false : z10, "starRating is out of range [0, maxStars]");
        this.f4585c = i10;
        this.f4586d = f10;
    }
}
