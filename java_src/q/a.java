package q;

import android.os.Bundle;
/* loaded from: classes.dex */
public interface a {

    /* renamed from: q.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0286a implements a {
        @Override // q.a
        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putInt("androidx.browser.trusted.displaymode.KEY_ID", 0);
            return bundle;
        }
    }

    /* loaded from: classes.dex */
    public static class b implements a {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f27926a;

        /* renamed from: b  reason: collision with root package name */
        private final int f27927b;

        public b(boolean z10, int i10) {
            this.f27926a = z10;
            this.f27927b = i10;
        }

        @Override // q.a
        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putInt("androidx.browser.trusted.displaymode.KEY_ID", 1);
            bundle.putBoolean("androidx.browser.trusted.displaymode.KEY_STICKY", this.f27926a);
            bundle.putInt("androidx.browser.trusted.displaymode.KEY_CUTOUT_MODE", this.f27927b);
            return bundle;
        }
    }

    Bundle a();
}
