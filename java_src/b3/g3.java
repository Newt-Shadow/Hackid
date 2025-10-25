package b3;

import android.os.Bundle;
import b3.r;
/* loaded from: classes.dex */
public final class g3 extends s3 {

    /* renamed from: d  reason: collision with root package name */
    private static final String f4039d = y4.q0.q0(1);

    /* renamed from: e  reason: collision with root package name */
    public static final r.a f4040e = new r.a() { // from class: b3.f3
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            g3 d10;
            d10 = g3.d(bundle);
            return d10;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final float f4041c;

    public g3() {
        this.f4041c = -1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static g3 d(Bundle bundle) {
        boolean z10 = true;
        if (bundle.getInt(s3.f4361a, -1) != 1) {
            z10 = false;
        }
        y4.a.a(z10);
        float f10 = bundle.getFloat(f4039d, -1.0f);
        if (f10 == -1.0f) {
            return new g3();
        }
        return new g3(f10);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof g3) || this.f4041c != ((g3) obj).f4041c) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return n6.k.b(Float.valueOf(this.f4041c));
    }

    public g3(float f10) {
        y4.a.b(f10 >= 0.0f && f10 <= 100.0f, "percent must be in the range of [0, 100]");
        this.f4041c = f10;
    }
}
