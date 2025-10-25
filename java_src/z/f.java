package z;

import android.content.res.Configuration;
import android.os.LocaleList;
/* loaded from: classes.dex */
public abstract class f {

    /* loaded from: classes.dex */
    static class a {
        static LocaleList a(Configuration configuration) {
            return configuration.getLocales();
        }
    }

    public static i a(Configuration configuration) {
        return i.h(a.a(configuration));
    }
}
