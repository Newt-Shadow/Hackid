package io.sentry.flutter;

import id.l;
import io.flutter.plugins.firebase.analytics.Constants;
import io.sentry.protocol.p;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.c0;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import xc.t;
/* loaded from: classes2.dex */
final class SentryFlutter$updateOptions$24 extends n implements l {
    final /* synthetic */ c0 $sdkVersion;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.sentry.flutter.SentryFlutter$updateOptions$24$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends n implements l {
        final /* synthetic */ c0 $sdkVersion;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(c0 c0Var) {
            super(1);
            this.$sdkVersion = c0Var;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((List) obj);
            return t.f32733a;
        }

        public final void invoke(List<String> it) {
            m.e(it, "it");
            c0 c0Var = this.$sdkVersion;
            for (String str : it) {
                ((p) c0Var.f24971a).c(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.sentry.flutter.SentryFlutter$updateOptions$24$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass2 extends n implements l {
        final /* synthetic */ c0 $sdkVersion;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(c0 c0Var) {
            super(1);
            this.$sdkVersion = c0Var;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((List) obj);
            return t.f32733a;
        }

        public final void invoke(List<? extends Map<String, String>> it) {
            m.e(it, "it");
            c0 c0Var = this.$sdkVersion;
            Iterator<T> it2 = it.iterator();
            while (it2.hasNext()) {
                Map map = (Map) it2.next();
                Object obj = map.get(Constants.NAME);
                m.c(obj, "null cannot be cast to non-null type kotlin.String");
                Object obj2 = map.get("version");
                m.c(obj2, "null cannot be cast to non-null type kotlin.String");
                ((p) c0Var.f24971a).d((String) obj, (String) obj2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SentryFlutter$updateOptions$24(c0 c0Var) {
        super(1);
        this.$sdkVersion = c0Var;
    }

    @Override // id.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Map) obj);
        return t.f32733a;
    }

    public final void invoke(Map<String, ? extends Object> flutterSdk) {
        m.e(flutterSdk, "flutterSdk");
        SentryFlutterKt.getIfNotNull(flutterSdk, "integrations", new AnonymousClass1(this.$sdkVersion));
        SentryFlutterKt.getIfNotNull(flutterSdk, "packages", new AnonymousClass2(this.$sdkVersion));
    }
}
