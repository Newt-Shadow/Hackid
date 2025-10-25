package io.sentry.flutter;

import id.l;
import io.sentry.android.core.SentryAndroidOptions;
import kotlin.jvm.internal.n;
import xc.t;
/* loaded from: classes2.dex */
final class SentryFlutter$updateOptions$15 extends n implements l {
    final /* synthetic */ SentryAndroidOptions $options;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SentryFlutter$updateOptions$15(SentryAndroidOptions sentryAndroidOptions) {
        super(1);
        this.$options = sentryAndroidOptions;
    }

    @Override // id.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke(((Boolean) obj).booleanValue());
        return t.f32733a;
    }

    public final void invoke(boolean z10) {
        this.$options.setAnrEnabled(z10);
    }
}
