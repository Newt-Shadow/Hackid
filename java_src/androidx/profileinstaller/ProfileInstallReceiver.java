package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import androidx.profileinstaller.f;
/* loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements f.c {
        a() {
        }

        @Override // androidx.profileinstaller.f.c
        public void a(int i10, Object obj) {
            f.f3123b.a(i10, obj);
        }

        @Override // androidx.profileinstaller.f.c
        public void b(int i10, Object obj) {
            f.f3123b.b(i10, obj);
            ProfileInstallReceiver.this.setResultCode(i10);
        }
    }

    static void a(f.c cVar) {
        Process.sendSignal(Process.myPid(), 10);
        cVar.b(12, null);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if ("androidx.profileinstaller.action.INSTALL_PROFILE".equals(action)) {
            f.k(context, new androidx.privacysandbox.ads.adservices.measurement.j(), new a(), true);
        } else if ("androidx.profileinstaller.action.SKIP_FILE".equals(action)) {
            Bundle extras2 = intent.getExtras();
            if (extras2 != null) {
                String string = extras2.getString("EXTRA_SKIP_FILE_OPERATION");
                if ("WRITE_SKIP_FILE".equals(string)) {
                    f.l(context, new androidx.privacysandbox.ads.adservices.measurement.j(), new a());
                } else if ("DELETE_SKIP_FILE".equals(string)) {
                    f.c(context, new androidx.privacysandbox.ads.adservices.measurement.j(), new a());
                }
            }
        } else if ("androidx.profileinstaller.action.SAVE_PROFILE".equals(action)) {
            a(new a());
        } else if ("androidx.profileinstaller.action.BENCHMARK_OPERATION".equals(action) && (extras = intent.getExtras()) != null) {
            String string2 = extras.getString("EXTRA_BENCHMARK_OPERATION");
            a aVar = new a();
            if ("DROP_SHADER_CACHE".equals(string2)) {
                androidx.profileinstaller.a.b(context, aVar);
            } else {
                aVar.b(16, null);
            }
        }
    }
}
