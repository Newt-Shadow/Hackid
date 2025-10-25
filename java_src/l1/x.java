package l1;

import android.os.Build;
import android.view.ViewGroup;
/* loaded from: classes.dex */
abstract class x {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f25169a = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static v a(ViewGroup viewGroup) {
        return new u(viewGroup);
    }

    private static void b(ViewGroup viewGroup, boolean z10) {
        if (f25169a) {
            try {
                viewGroup.suppressLayout(z10);
            } catch (NoSuchMethodError unused) {
                f25169a = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(ViewGroup viewGroup, boolean z10) {
        if (Build.VERSION.SDK_INT >= 29) {
            viewGroup.suppressLayout(z10);
        } else {
            b(viewGroup, z10);
        }
    }
}
