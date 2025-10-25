package k5;

import android.util.Log;
import java.util.Objects;
/* loaded from: classes.dex */
public final class k extends ClassLoader {
    @Override // java.lang.ClassLoader
    protected final Class loadClass(String str, boolean z10) {
        if (Objects.equals(str, "com.google.android.gms.iid.MessengerCompat")) {
            if (Log.isLoggable("CloudMessengerCompat", 3)) {
                Log.d("CloudMessengerCompat", "Using renamed FirebaseIidMessengerCompat class");
                return l.class;
            }
            return l.class;
        }
        return super.loadClass(str, z10);
    }
}
