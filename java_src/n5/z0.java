package n5;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
/* loaded from: classes.dex */
public abstract class z0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f26409a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f26410b;

    /* renamed from: c  reason: collision with root package name */
    private static String f26411c;

    /* renamed from: d  reason: collision with root package name */
    private static int f26412d;

    public static int a(Context context) {
        b(context);
        return f26412d;
    }

    private static void b(Context context) {
        Bundle bundle;
        synchronized (f26409a) {
            if (f26410b) {
                return;
            }
            f26410b = true;
            try {
                bundle = t5.e.a(context).c(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e10) {
                Log.wtf("MetadataValueReader", "This should never happen.", e10);
            }
            if (bundle == null) {
                return;
            }
            f26411c = bundle.getString("com.google.app.id");
            f26412d = bundle.getInt("com.google.android.gms.version");
        }
    }
}
