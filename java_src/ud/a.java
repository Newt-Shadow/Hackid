package ud;

import android.os.Looper;
import java.util.List;
import td.d2;
import yd.t;
/* loaded from: classes2.dex */
public final class a implements t {
    @Override // yd.t
    public String a() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override // yd.t
    public d2 b(List list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new d(f.a(mainLooper, true), null, 2, null);
        }
        throw new IllegalStateException("The main looper is not available");
    }

    @Override // yd.t
    public int c() {
        return 1073741823;
    }
}
