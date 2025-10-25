package q5;

import android.util.Log;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;
import n5.j;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f28379a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28380b;

    /* renamed from: c  reason: collision with root package name */
    private final j f28381c;

    /* renamed from: d  reason: collision with root package name */
    private final int f28382d;

    public a(String str, String... strArr) {
        String sb2;
        if (strArr.length == 0) {
            sb2 = "";
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append('[');
            for (String str2 : strArr) {
                if (sb3.length() > 1) {
                    sb3.append(StringUtils.COMMA);
                }
                sb3.append(str2);
            }
            sb3.append("] ");
            sb2 = sb3.toString();
        }
        this.f28380b = sb2;
        this.f28379a = str;
        this.f28381c = new j(str);
        int i10 = 2;
        while (i10 <= 7 && !Log.isLoggable(this.f28379a, i10)) {
            i10++;
        }
        this.f28382d = i10;
    }

    public void a(String str, Object... objArr) {
        if (d(3)) {
            Log.d(this.f28379a, c(str, objArr));
        }
    }

    public void b(String str, Object... objArr) {
        Log.e(this.f28379a, c(str, objArr));
    }

    protected String c(String str, Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.f28380b.concat(str);
    }

    public boolean d(int i10) {
        return this.f28382d <= i10;
    }

    public void e(String str, Object... objArr) {
        Log.w(this.f28379a, c(str, objArr));
    }
}
