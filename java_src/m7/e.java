package m7;

import android.os.Bundle;
import i7.a;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.Locale;
/* loaded from: classes.dex */
class e implements a.b {

    /* renamed from: a  reason: collision with root package name */
    private o7.b f25981a;

    /* renamed from: b  reason: collision with root package name */
    private o7.b f25982b;

    private static void b(o7.b bVar, String str, Bundle bundle) {
        if (bVar == null) {
            return;
        }
        bVar.b(str, bundle);
    }

    private void c(String str, Bundle bundle) {
        o7.b bVar;
        if ("clx".equals(bundle.getString("_o"))) {
            bVar = this.f25981a;
        } else {
            bVar = this.f25982b;
        }
        b(bVar, str, bundle);
    }

    @Override // i7.a.b
    public void a(int i10, Bundle bundle) {
        String string;
        n7.g.f().i(String.format(Locale.US, "Analytics listener received message. ID: %d, Extras: %s", Integer.valueOf(i10), bundle));
        if (bundle != null && (string = bundle.getString(Constants.NAME)) != null) {
            Bundle bundle2 = bundle.getBundle("params");
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
            c(string, bundle2);
        }
    }

    public void d(o7.b bVar) {
        this.f25982b = bVar;
    }

    public void e(o7.b bVar) {
        this.f25981a = bVar;
    }
}
