package k5;

import android.os.Bundle;
/* loaded from: classes.dex */
final class z extends a0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public z(int i10, int i11, Bundle bundle) {
        super(i10, i11, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k5.a0
    public final void a(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            d(null);
        } else {
            c(new b0(4, "Invalid response to one way request", null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k5.a0
    public final boolean b() {
        return true;
    }
}
