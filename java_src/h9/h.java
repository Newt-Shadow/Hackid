package h9;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import h9.h;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final Context f16917a;

    /* renamed from: e  reason: collision with root package name */
    private Runnable f16921e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f16922f;

    /* renamed from: c  reason: collision with root package name */
    private boolean f16919c = false;

    /* renamed from: b  reason: collision with root package name */
    private final BroadcastReceiver f16918b = new b();

    /* renamed from: d  reason: collision with root package name */
    private Handler f16920d = new Handler();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class b extends BroadcastReceiver {
        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(boolean z10) {
            h.this.f(z10);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            final boolean z10;
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                if (intent.getIntExtra("plugged", -1) <= 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                h.this.f16920d.post(new Runnable() { // from class: h9.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.b.this.b(z10);
                    }
                });
            }
        }
    }

    public h(Context context, Runnable runnable) {
        this.f16917a = context;
        this.f16921e = runnable;
    }

    private void e() {
        this.f16920d.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(boolean z10) {
        this.f16922f = z10;
        if (this.f16919c) {
            c();
        }
    }

    private void g() {
        if (!this.f16919c) {
            this.f16917a.registerReceiver(this.f16918b, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            this.f16919c = true;
        }
    }

    private void i() {
        if (this.f16919c) {
            this.f16917a.unregisterReceiver(this.f16918b);
            this.f16919c = false;
        }
    }

    public void c() {
        e();
        if (this.f16922f) {
            this.f16920d.postDelayed(this.f16921e, 300000L);
        }
    }

    public void d() {
        e();
        i();
    }

    public void h() {
        g();
        c();
    }
}
