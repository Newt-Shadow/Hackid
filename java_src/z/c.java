package z;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
/* loaded from: classes.dex */
public abstract class c {

    /* loaded from: classes.dex */
    static class a {
        static Object a(Bundle bundle, String str, Class cls) {
            return bundle.getParcelable(str, cls);
        }
    }

    public static Object a(Bundle bundle, String str, Class cls) {
        if (Build.VERSION.SDK_INT >= 34) {
            return a.a(bundle, str, cls);
        }
        Parcelable parcelable = bundle.getParcelable(str);
        if (!cls.isInstance(parcelable)) {
            return null;
        }
        return parcelable;
    }
}
