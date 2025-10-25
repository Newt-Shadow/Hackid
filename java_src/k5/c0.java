package k5;

import android.os.Bundle;
/* loaded from: classes.dex */
final class c0 extends a0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(int i10, int i11, Bundle bundle) {
        super(i10, i11, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k5.a0
    public final void a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        d(bundle2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k5.a0
    public final boolean b() {
        return false;
    }
}
