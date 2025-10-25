package cc;

import android.os.Build;
import java.util.Locale;
import kotlin.jvm.internal.m;
import org.apache.tika.utils.StringUtils;
import rd.y;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5165a = new a();

    private a() {
    }

    private final String a() {
        boolean H;
        String q10;
        String str = Build.MODEL;
        m.d(str, "Build.MODEL");
        String str2 = Build.MANUFACTURER;
        m.d(str2, "Build.MANUFACTURER");
        H = y.H(str, str2, false, 2, null);
        if (!H) {
            str = str2 + StringUtils.SPACE + str;
        }
        m.d(str, "if (Build.MODEL.startsWi…\" + Build.MODEL\n        }");
        Locale locale = Locale.US;
        m.d(locale, "Locale.US");
        q10 = y.q(str, locale);
        return q10;
    }

    public static final String b(String sdkName, String versionName, String buildNumber) {
        m.e(sdkName, "sdkName");
        m.e(versionName, "versionName");
        m.e(buildNumber, "buildNumber");
        return sdkName + '/' + versionName + '.' + buildNumber + " (" + f5165a.a() + "; Android " + Build.VERSION.RELEASE + ')';
    }
}
