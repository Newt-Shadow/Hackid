package b3;

import android.os.Bundle;
import b3.r;
/* loaded from: classes.dex */
public final class a2 extends s3 {

    /* renamed from: e  reason: collision with root package name */
    private static final String f3774e = y4.q0.q0(1);

    /* renamed from: f  reason: collision with root package name */
    private static final String f3775f = y4.q0.q0(2);

    /* renamed from: g  reason: collision with root package name */
    public static final r.a f3776g = new r.a() { // from class: b3.z1
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            a2 d10;
            d10 = a2.d(bundle);
            return d10;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final boolean f3777c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f3778d;

    public a2() {
        this.f3777c = false;
        this.f3778d = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static a2 d(Bundle bundle) {
        boolean z10;
        if (bundle.getInt(s3.f4361a, -1) == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        if (bundle.getBoolean(f3774e, false)) {
            return new a2(bundle.getBoolean(f3775f, false));
        }
        return new a2();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a2)) {
            return false;
        }
        a2 a2Var = (a2) obj;
        if (this.f3778d != a2Var.f3778d || this.f3777c != a2Var.f3777c) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return n6.k.b(Boolean.valueOf(this.f3777c), Boolean.valueOf(this.f3778d));
    }

    public a2(boolean z10) {
        this.f3777c = true;
        this.f3778d = z10;
    }
}
