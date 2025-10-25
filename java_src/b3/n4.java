package b3;

import android.content.Context;
import android.net.wifi.WifiManager;
/* loaded from: classes.dex */
final class n4 {

    /* renamed from: a  reason: collision with root package name */
    private final WifiManager f4287a;

    /* renamed from: b  reason: collision with root package name */
    private WifiManager.WifiLock f4288b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f4289c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4290d;

    public n4(Context context) {
        this.f4287a = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    private void c() {
        WifiManager.WifiLock wifiLock = this.f4288b;
        if (wifiLock == null) {
            return;
        }
        if (this.f4289c && this.f4290d) {
            wifiLock.acquire();
        } else {
            wifiLock.release();
        }
    }

    public void a(boolean z10) {
        if (z10 && this.f4288b == null) {
            WifiManager wifiManager = this.f4287a;
            if (wifiManager == null) {
                y4.r.i("WifiLockManager", "WifiManager is null, therefore not creating the WifiLock.");
                return;
            }
            WifiManager.WifiLock createWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
            this.f4288b = createWifiLock;
            createWifiLock.setReferenceCounted(false);
        }
        this.f4289c = z10;
        c();
    }

    public void b(boolean z10) {
        this.f4290d = z10;
        c();
    }
}
