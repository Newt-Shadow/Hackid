package pc;

import android.app.Activity;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private Activity f27916a;

    private final boolean a() {
        Activity activity = this.f27916a;
        m.b(activity);
        if ((activity.getWindow().getAttributes().flags & 128) != 0) {
            return true;
        }
        return false;
    }

    public final defpackage.c b() {
        if (this.f27916a != null) {
            return new defpackage.c(Boolean.valueOf(a()));
        }
        throw new a();
    }

    public final void c(Activity activity) {
        this.f27916a = activity;
    }

    public final void d(d message) {
        m.e(message, "message");
        Activity activity = this.f27916a;
        if (activity != null) {
            m.b(activity);
            boolean a10 = a();
            Boolean a11 = message.a();
            m.b(a11);
            if (a11.booleanValue()) {
                if (!a10) {
                    activity.getWindow().addFlags(128);
                    return;
                }
                return;
            } else if (a10) {
                activity.getWindow().clearFlags(128);
                return;
            } else {
                return;
            }
        }
        throw new a();
    }
}
