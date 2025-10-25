package io.sentry.flutter;

import id.l;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.j5;
import java.util.Locale;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import xc.t;
/* loaded from: classes2.dex */
final class SentryFlutter$updateOptions$14 extends n implements l {
    final /* synthetic */ SentryAndroidOptions $options;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SentryFlutter$updateOptions$14(SentryAndroidOptions sentryAndroidOptions) {
        super(1);
        this.$options = sentryAndroidOptions;
    }

    @Override // id.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((String) obj);
        return t.f32733a;
    }

    public final void invoke(String it) {
        m.e(it, "it");
        if (this.$options.isDebug()) {
            Locale ROOT = Locale.ROOT;
            m.d(ROOT, "ROOT");
            String upperCase = it.toUpperCase(ROOT);
            m.d(upperCase, "this as java.lang.String).toUpperCase(locale)");
            this.$options.setDiagnosticLevel(j5.valueOf(upperCase));
        }
    }
}
