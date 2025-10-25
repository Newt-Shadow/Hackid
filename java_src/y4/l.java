package y4;

import android.util.SparseBooleanArray;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private final SparseBooleanArray f32914a;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final SparseBooleanArray f32915a = new SparseBooleanArray();

        /* renamed from: b  reason: collision with root package name */
        private boolean f32916b;

        public b a(int i10) {
            y4.a.f(!this.f32916b);
            this.f32915a.append(i10, true);
            return this;
        }

        public b b(l lVar) {
            for (int i10 = 0; i10 < lVar.c(); i10++) {
                a(lVar.b(i10));
            }
            return this;
        }

        public b c(int... iArr) {
            for (int i10 : iArr) {
                a(i10);
            }
            return this;
        }

        public b d(int i10, boolean z10) {
            if (z10) {
                return a(i10);
            }
            return this;
        }

        public l e() {
            y4.a.f(!this.f32916b);
            this.f32916b = true;
            return new l(this.f32915a);
        }
    }

    public boolean a(int i10) {
        return this.f32914a.get(i10);
    }

    public int b(int i10) {
        y4.a.c(i10, 0, c());
        return this.f32914a.keyAt(i10);
    }

    public int c() {
        return this.f32914a.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (q0.f32946a < 24) {
            if (c() != lVar.c()) {
                return false;
            }
            for (int i10 = 0; i10 < c(); i10++) {
                if (b(i10) != lVar.b(i10)) {
                    return false;
                }
            }
            return true;
        }
        return this.f32914a.equals(lVar.f32914a);
    }

    public int hashCode() {
        if (q0.f32946a < 24) {
            int c10 = c();
            for (int i10 = 0; i10 < c(); i10++) {
                c10 = (c10 * 31) + b(i10);
            }
            return c10;
        }
        return this.f32914a.hashCode();
    }

    private l(SparseBooleanArray sparseBooleanArray) {
        this.f32914a = sparseBooleanArray;
    }
}
