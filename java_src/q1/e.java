package q1;

import android.util.Log;
import androidx.window.extensions.WindowExtensionsProvider;
import kotlin.jvm.internal.d0;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f27955a = new e();

    /* renamed from: b  reason: collision with root package name */
    private static final String f27956b = d0.b(e.class).b();

    private e() {
    }

    public final int a() {
        try {
            return WindowExtensionsProvider.getWindowExtensions().getVendorApiLevel();
        } catch (NoClassDefFoundError unused) {
            if (c.f27947a.a() != j.LOG) {
                return 0;
            }
            Log.d(f27956b, "Embedding extension version not found");
            return 0;
        } catch (UnsupportedOperationException unused2) {
            if (c.f27947a.a() != j.LOG) {
                return 0;
            }
            Log.d(f27956b, "Stub Extension");
            return 0;
        }
    }
}
