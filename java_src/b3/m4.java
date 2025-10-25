package b3;

import android.content.Context;
import android.os.PowerManager;
/* loaded from: classes.dex */
final class m4 {

    /* renamed from: a  reason: collision with root package name */
    private final PowerManager f4276a;

    /* renamed from: b  reason: collision with root package name */
    private PowerManager.WakeLock f4277b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f4278c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4279d;

    public m4(Context context) {
        this.f4276a = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    private void c() {
        PowerManager.WakeLock wakeLock = this.f4277b;
        if (wakeLock == null) {
            return;
        }
        if (this.f4278c && this.f4279d) {
            wakeLock.acquire();
        } else {
            wakeLock.release();
        }
    }

    public void a(boolean z10) {
        if (z10 && this.f4277b == null) {
            PowerManager powerManager = this.f4276a;
            if (powerManager == null) {
                y4.r.i("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                return;
            }
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
            this.f4277b = newWakeLock;
            newWakeLock.setReferenceCounted(false);
        }
        this.f4278c = z10;
        c();
    }

    public void b(boolean z10) {
        this.f4279d = z10;
        c();
    }
}
