package i6;

import android.content.Context;
import android.content.res.Resources;
/* loaded from: classes.dex */
public abstract class p {
    public static String a(Context context) {
        try {
            return context.getResources().getResourcePackageName(l5.m.f25316a);
        } catch (Resources.NotFoundException unused) {
            return context.getPackageName();
        }
    }

    public static final String b(String str, Resources resources, String str2) {
        int identifier = resources.getIdentifier("google_app_id", "string", str2);
        if (identifier != 0) {
            try {
            } catch (Resources.NotFoundException unused) {
                return null;
            }
        }
        return resources.getString(identifier);
    }

    public static final Boolean c(String str, Resources resources, String str2) {
        int identifier = resources.getIdentifier("google_analytics_force_disable_updates", "bool", str2);
        if (identifier != 0) {
            try {
            } catch (Resources.NotFoundException unused) {
                return null;
            }
        }
        return Boolean.valueOf(resources.getBoolean(identifier));
    }
}
