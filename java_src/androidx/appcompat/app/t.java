package androidx.appcompat.app;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ServiceInfo;
/* loaded from: classes.dex */
public abstract class t extends Service {

    /* loaded from: classes.dex */
    private static class a {
        static int a() {
            return 512;
        }
    }

    public static ServiceInfo a(Context context) {
        return context.getPackageManager().getServiceInfo(new ComponentName(context, t.class), a.a() | 128);
    }
}
