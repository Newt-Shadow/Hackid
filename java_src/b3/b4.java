package b3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b4 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f3822a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f3823b;

    /* renamed from: c  reason: collision with root package name */
    private final b f3824c;

    /* renamed from: d  reason: collision with root package name */
    private final AudioManager f3825d;

    /* renamed from: e  reason: collision with root package name */
    private c f3826e;

    /* renamed from: f  reason: collision with root package name */
    private int f3827f;

    /* renamed from: g  reason: collision with root package name */
    private int f3828g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f3829h;

    /* loaded from: classes.dex */
    public interface b {
        void s(int i10);

        void z(int i10, boolean z10);
    }

    /* loaded from: classes.dex */
    private final class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Handler handler = b4.this.f3823b;
            final b4 b4Var = b4.this;
            handler.post(new Runnable() { // from class: b3.c4
                @Override // java.lang.Runnable
                public final void run() {
                    b4.b(b4.this);
                }
            });
        }
    }

    public b4(Context context, Handler handler, b bVar) {
        Context applicationContext = context.getApplicationContext();
        this.f3822a = applicationContext;
        this.f3823b = handler;
        this.f3824c = bVar;
        AudioManager audioManager = (AudioManager) y4.a.h((AudioManager) applicationContext.getSystemService("audio"));
        this.f3825d = audioManager;
        this.f3827f = 3;
        this.f3828g = f(audioManager, 3);
        this.f3829h = e(audioManager, this.f3827f);
        c cVar = new c();
        try {
            applicationContext.registerReceiver(cVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f3826e = cVar;
        } catch (RuntimeException e10) {
            y4.r.j("StreamVolumeManager", "Error registering stream volume receiver", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(b4 b4Var) {
        b4Var.i();
    }

    private static boolean e(AudioManager audioManager, int i10) {
        if (y4.q0.f32946a >= 23) {
            return audioManager.isStreamMute(i10);
        }
        if (f(audioManager, i10) == 0) {
            return true;
        }
        return false;
    }

    private static int f(AudioManager audioManager, int i10) {
        try {
            return audioManager.getStreamVolume(i10);
        } catch (RuntimeException e10) {
            y4.r.j("StreamVolumeManager", "Could not retrieve stream volume for stream type " + i10, e10);
            return audioManager.getStreamMaxVolume(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        int f10 = f(this.f3825d, this.f3827f);
        boolean e10 = e(this.f3825d, this.f3827f);
        if (this.f3828g != f10 || this.f3829h != e10) {
            this.f3828g = f10;
            this.f3829h = e10;
            this.f3824c.z(f10, e10);
        }
    }

    public int c() {
        return this.f3825d.getStreamMaxVolume(this.f3827f);
    }

    public int d() {
        int streamMinVolume;
        if (y4.q0.f32946a >= 28) {
            streamMinVolume = this.f3825d.getStreamMinVolume(this.f3827f);
            return streamMinVolume;
        }
        return 0;
    }

    public void g() {
        c cVar = this.f3826e;
        if (cVar != null) {
            try {
                this.f3822a.unregisterReceiver(cVar);
            } catch (RuntimeException e10) {
                y4.r.j("StreamVolumeManager", "Error unregistering stream volume receiver", e10);
            }
            this.f3826e = null;
        }
    }

    public void h(int i10) {
        if (this.f3827f == i10) {
            return;
        }
        this.f3827f = i10;
        i();
        this.f3824c.s(i10);
    }
}
