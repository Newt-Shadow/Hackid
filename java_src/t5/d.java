package t5;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.util.k;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f29934a;

    public d(Context context) {
        this.f29934a = context;
    }

    public int a(String str) {
        return this.f29934a.checkCallingOrSelfPermission(str);
    }

    public int b(String str, String str2) {
        return this.f29934a.getPackageManager().checkPermission(str, str2);
    }

    public ApplicationInfo c(String str, int i10) {
        return this.f29934a.getPackageManager().getApplicationInfo(str, i10);
    }

    public CharSequence d(String str) {
        Context context = this.f29934a;
        return context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(str, 0));
    }

    public PackageInfo e(String str, int i10) {
        return this.f29934a.getPackageManager().getPackageInfo(str, i10);
    }

    public boolean f() {
        String nameForUid;
        boolean isInstantApp;
        if (Binder.getCallingUid() == Process.myUid()) {
            return b.a(this.f29934a);
        }
        if (k.e() && (nameForUid = this.f29934a.getPackageManager().getNameForUid(Binder.getCallingUid())) != null) {
            isInstantApp = this.f29934a.getPackageManager().isInstantApp(nameForUid);
            return isInstantApp;
        }
        return false;
    }

    public final boolean g(int i10, String str) {
        try {
            AppOpsManager appOpsManager = (AppOpsManager) this.f29934a.getSystemService("appops");
            if (appOpsManager != null) {
                appOpsManager.checkPackage(i10, str);
                return true;
            }
            throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
        } catch (SecurityException unused) {
            return false;
        }
    }
}
