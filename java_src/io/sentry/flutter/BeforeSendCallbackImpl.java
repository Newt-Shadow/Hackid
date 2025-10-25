package io.sentry.flutter;

import io.sentry.c0;
import io.sentry.protocol.p;
import io.sentry.s5;
import io.sentry.z4;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
final class BeforeSendCallbackImpl implements s5.d {
    private final void setEventEnvironmentTag(z4 z4Var, String str, String str2) {
        z4Var.d0("event.origin", str);
        z4Var.d0("event.environment", str2);
    }

    static /* synthetic */ void setEventEnvironmentTag$default(BeforeSendCallbackImpl beforeSendCallbackImpl, z4 z4Var, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = "android";
        }
        beforeSendCallbackImpl.setEventEnvironmentTag(z4Var, str, str2);
    }

    @Override // io.sentry.s5.d
    public z4 execute(z4 event, c0 hint) {
        m.e(event, "event");
        m.e(hint, "hint");
        p L = event.L();
        if (L != null) {
            String f10 = L.f();
            int hashCode = f10.hashCode();
            if (hashCode != -1079289216) {
                if (hashCode != 214992565) {
                    if (hashCode == 1378491996 && f10.equals(SentryFlutter.FLUTTER_SDK)) {
                        setEventEnvironmentTag(event, "flutter", "dart");
                    }
                } else if (f10.equals(SentryFlutter.NATIVE_SDK)) {
                    setEventEnvironmentTag$default(this, event, null, "native", 2, null);
                }
            } else if (f10.equals(SentryFlutter.ANDROID_SDK)) {
                setEventEnvironmentTag$default(this, event, null, "java", 2, null);
            }
        }
        return event;
    }
}
