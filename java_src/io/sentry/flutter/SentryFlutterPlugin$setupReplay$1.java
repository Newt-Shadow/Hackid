package io.sentry.flutter;

import id.l;
import io.sentry.android.replay.ReplayIntegration;
import io.sentry.e1;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
final class SentryFlutterPlugin$setupReplay$1 extends n implements l {
    public static final SentryFlutterPlugin$setupReplay$1 INSTANCE = new SentryFlutterPlugin$setupReplay$1();

    SentryFlutterPlugin$setupReplay$1() {
        super(1);
    }

    @Override // id.l
    public final Boolean invoke(e1 e1Var) {
        return Boolean.valueOf(e1Var instanceof ReplayIntegration);
    }
}
