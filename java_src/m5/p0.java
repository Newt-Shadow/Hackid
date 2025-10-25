package m5;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes.dex */
public final class p0 extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    Context f25858a;

    /* renamed from: b  reason: collision with root package name */
    private final o0 f25859b;

    public p0(o0 o0Var) {
        this.f25859b = o0Var;
    }

    public final void a(Context context) {
        this.f25858a = context;
    }

    public final synchronized void b() {
        Context context = this.f25858a;
        if (context != null) {
            context.unregisterReceiver(this);
        }
        this.f25858a = null;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String str;
        Uri data = intent.getData();
        if (data != null) {
            str = data.getSchemeSpecificPart();
        } else {
            str = null;
        }
        if ("com.google.android.gms".equals(str)) {
            this.f25859b.a();
            b();
        }
    }
}
