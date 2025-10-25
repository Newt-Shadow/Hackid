package e2;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
/* loaded from: classes.dex */
final class a {

    /* renamed from: e2.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    interface InterfaceC0156a {
        void a(boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, InterfaceC0156a interfaceC0156a, b bVar) {
        if (context == null) {
            Log.d("permissions_handler", "Context cannot be null.");
            bVar.a("PermissionHandler.AppSettingsManager", "Android context cannot be null.");
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setData(Uri.parse("package:" + context.getPackageName()));
            intent.addFlags(268435456);
            intent.addFlags(1073741824);
            intent.addFlags(8388608);
            context.startActivity(intent);
            interfaceC0156a.a(true);
        } catch (Exception unused) {
            interfaceC0156a.a(false);
        }
    }
}
