package gb;

import android.util.Log;
/* loaded from: classes.dex */
public final class i implements lb.i {

    /* renamed from: a  reason: collision with root package name */
    private final fb.b f16358a;

    public i(fb.b config) {
        kotlin.jvm.internal.m.e(config, "config");
        this.f16358a = config;
    }

    @Override // lb.i
    public void a(String message) {
        kotlin.jvm.internal.m.e(message, "message");
        if (b()) {
            Log.println(3, "PostHog", message);
        }
    }

    public boolean b() {
        return this.f16358a.g();
    }
}
