package io.sentry.flutter;

import id.l;
import kotlin.jvm.internal.n;
import xc.t;
/* loaded from: classes2.dex */
final class SentryFlutter$updateOptions$21 extends n implements l {
    final /* synthetic */ SentryFlutter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SentryFlutter$updateOptions$21(SentryFlutter sentryFlutter) {
        super(1);
        this.this$0 = sentryFlutter;
    }

    @Override // id.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke(((Boolean) obj).booleanValue());
        return t.f32733a;
    }

    public final void invoke(boolean z10) {
        if (z10) {
            this.this$0.setAutoPerformanceTracingEnabled(true);
        }
    }
}
