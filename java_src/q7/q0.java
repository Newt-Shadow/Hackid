package q7;

import android.content.Context;
/* loaded from: classes.dex */
class q0 {

    /* renamed from: a  reason: collision with root package name */
    private String f28522a;

    private static String b(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        if (installerPackageName == null) {
            return "";
        }
        return installerPackageName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String a(Context context) {
        String str;
        if (this.f28522a == null) {
            this.f28522a = b(context);
        }
        if ("".equals(this.f28522a)) {
            str = null;
        } else {
            str = this.f28522a;
        }
        return str;
    }
}
