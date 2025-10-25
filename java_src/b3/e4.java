package b3;

import android.os.Bundle;
import b3.r;
/* loaded from: classes.dex */
public final class e4 extends s3 {

    /* renamed from: e  reason: collision with root package name */
    private static final String f3866e = y4.q0.q0(1);

    /* renamed from: f  reason: collision with root package name */
    private static final String f3867f = y4.q0.q0(2);

    /* renamed from: g  reason: collision with root package name */
    public static final r.a f3868g = new r.a() { // from class: b3.d4
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            e4 d10;
            d10 = e4.d(bundle);
            return d10;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final boolean f3869c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f3870d;

    public e4() {
        this.f3869c = false;
        this.f3870d = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static e4 d(Bundle bundle) {
        boolean z10;
        if (bundle.getInt(s3.f4361a, -1) == 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        if (bundle.getBoolean(f3866e, false)) {
            return new e4(bundle.getBoolean(f3867f, false));
        }
        return new e4();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e4)) {
            return false;
        }
        e4 e4Var = (e4) obj;
        if (this.f3870d != e4Var.f3870d || this.f3869c != e4Var.f3869c) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return n6.k.b(Boolean.valueOf(this.f3869c), Boolean.valueOf(this.f3870d));
    }

    public e4(boolean z10) {
        this.f3869c = true;
        this.f3870d = z10;
    }
}
