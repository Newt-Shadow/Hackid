package b1;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes.dex */
public abstract class b {
    public static SharedPreferences a(Context context) {
        return context.getSharedPreferences(c(context), b());
    }

    private static int b() {
        return 0;
    }

    private static String c(Context context) {
        return context.getPackageName() + "_preferences";
    }
}
