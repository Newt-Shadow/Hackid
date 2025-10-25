package io.sentry.flutter;

import id.l;
import io.flutter.plugins.firebase.analytics.Constants;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.protocol.p;
import io.sentry.u5;
import java.util.Map;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import xc.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class SentryFlutter$updateOptions$28 extends n implements l {
    final /* synthetic */ Map<String, Object> $data;
    final /* synthetic */ SentryAndroidOptions $options;
    final /* synthetic */ SentryFlutter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.sentry.flutter.SentryFlutter$updateOptions$28$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends n implements l {
        final /* synthetic */ SentryAndroidOptions $options;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SentryAndroidOptions sentryAndroidOptions) {
            super(1);
            this.$options = sentryAndroidOptions;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((Map) obj);
            return t.f32733a;
        }

        public final void invoke(Map<String, ? extends Object> it) {
            m.e(it, "it");
            u5 sessionReplay = this.$options.getSessionReplay();
            Object obj = it.get(Constants.NAME);
            m.c(obj, "null cannot be cast to non-null type kotlin.String");
            Object obj2 = it.get("version");
            m.c(obj2, "null cannot be cast to non-null type kotlin.String");
            sessionReplay.v(new p((String) obj, (String) obj2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SentryFlutter$updateOptions$28(SentryFlutter sentryFlutter, SentryAndroidOptions sentryAndroidOptions, Map<String, ? extends Object> map) {
        super(1);
        this.this$0 = sentryFlutter;
        this.$options = sentryAndroidOptions;
        this.$data = map;
    }

    @Override // id.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Map) obj);
        return t.f32733a;
    }

    public final void invoke(Map<String, ? extends Object> replayArgs) {
        m.e(replayArgs, "replayArgs");
        this.this$0.updateReplayOptions(this.$options, replayArgs);
        SentryFlutterKt.getIfNotNull(this.$data, "sdk", new AnonymousClass1(this.$options));
    }
}
