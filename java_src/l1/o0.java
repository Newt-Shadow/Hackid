package l1;

import android.view.View;
import android.view.WindowId;
/* loaded from: classes.dex */
class o0 implements p0 {

    /* renamed from: a  reason: collision with root package name */
    private final WindowId f25154a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(View view) {
        this.f25154a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        if ((obj instanceof o0) && ((o0) obj).f25154a.equals(this.f25154a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f25154a.hashCode();
    }
}
