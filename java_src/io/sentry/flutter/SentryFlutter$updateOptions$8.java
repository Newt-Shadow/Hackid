package io.sentry.flutter;

import id.l;
import io.sentry.android.core.SentryAndroidOptions;
import kotlin.jvm.internal.n;
import xc.t;
/* loaded from: classes2.dex */
final class SentryFlutter$updateOptions$8 extends n implements l {
    final /* synthetic */ SentryAndroidOptions $options;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SentryFlutter$updateOptions$8(SentryAndroidOptions sentryAndroidOptions) {
        super(1);
        this.$options = sentryAndroidOptions;
    }

    @Override // id.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke(((Number) obj).longValue());
        return t.f32733a;
    }

    public final void invoke(long j10) {
        this.$options.setAnrTimeoutIntervalMillis(j10);
    }
}
