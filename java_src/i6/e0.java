package i6;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
/* loaded from: classes.dex */
public abstract class e0 {
    public static String a(Context context, String str, String str2) {
        n5.q.k(context);
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str2)) {
            str2 = p.a(context);
        }
        return p.b("google_app_id", resources, str2);
    }

    public static String b(String str, String[] strArr, String[] strArr2) {
        n5.q.k(strArr);
        n5.q.k(strArr2);
        int min = Math.min(strArr.length, strArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            String str2 = strArr[i10];
            if ((str == null && str2 == null) || (str != null && str.equals(str2))) {
                return strArr2[i10];
            }
        }
        return null;
    }
}
