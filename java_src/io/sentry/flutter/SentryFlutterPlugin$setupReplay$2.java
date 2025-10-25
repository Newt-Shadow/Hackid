package io.sentry.flutter;

import io.flutter.plugin.common.MethodChannel;
import io.sentry.android.replay.ReplayIntegration;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class SentryFlutterPlugin$setupReplay$2 extends n implements id.a {
    final /* synthetic */ SentryFlutterPlugin this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SentryFlutterPlugin$setupReplay$2(SentryFlutterPlugin sentryFlutterPlugin) {
        super(0);
        this.this$0 = sentryFlutterPlugin;
    }

    @Override // id.a
    public final io.sentry.android.replay.f invoke() {
        MethodChannel methodChannel;
        ReplayIntegration replayIntegration;
        methodChannel = this.this$0.channel;
        ReplayIntegration replayIntegration2 = null;
        if (methodChannel == null) {
            m.s("channel");
            methodChannel = null;
        }
        replayIntegration = this.this$0.replay;
        if (replayIntegration == null) {
            m.s("replay");
        } else {
            replayIntegration2 = replayIntegration;
        }
        return new SentryFlutterReplayRecorder(methodChannel, replayIntegration2);
    }
}
