package b3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f3782a;

    /* renamed from: b  reason: collision with root package name */
    private final a f3783b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f3784c;

    /* loaded from: classes.dex */
    private final class a extends BroadcastReceiver implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC0071b f3785a;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f3786b;

        public a(Handler handler, InterfaceC0071b interfaceC0071b) {
            this.f3786b = handler;
            this.f3785a = interfaceC0071b;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f3786b.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f3784c) {
                this.f3785a.u();
            }
        }
    }

    /* renamed from: b3.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0071b {
        void u();
    }

    public b(Context context, Handler handler, InterfaceC0071b interfaceC0071b) {
        this.f3782a = context.getApplicationContext();
        this.f3783b = new a(handler, interfaceC0071b);
    }

    public void b(boolean z10) {
        if (z10 && !this.f3784c) {
            this.f3782a.registerReceiver(this.f3783b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            this.f3784c = true;
        } else if (!z10 && this.f3784c) {
            this.f3782a.unregisterReceiver(this.f3783b);
            this.f3784c = false;
        }
    }
}
