package io.sentry.flutter;

import id.l;
import io.sentry.android.core.SentryAndroidOptions;
import kotlin.jvm.internal.n;
import xc.t;
/* loaded from: classes2.dex */
final class SentryFlutter$updateOptions$12 extends n implements l {
    final /* synthetic */ SentryAndroidOptions $options;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SentryFlutter$updateOptions$12(SentryAndroidOptions sentryAndroidOptions) {
        super(1);
        this.$options = sentryAndroidOptions;
    }

    @Override // id.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke(((Number) obj).intValue());
        return t.f32733a;
    }

    public final void invoke(int i10) {
        this.$options.setMaxBreadcrumbs(i10);
    }
}
