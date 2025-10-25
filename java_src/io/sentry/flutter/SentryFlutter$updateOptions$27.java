package io.sentry.flutter;

import android.util.Log;
import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLProtectionSpaceContract;
import id.l;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.s5;
import java.net.Proxy;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import xc.t;
/* loaded from: classes2.dex */
final class SentryFlutter$updateOptions$27 extends n implements l {
    final /* synthetic */ SentryAndroidOptions $options;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SentryFlutter$updateOptions$27(SentryAndroidOptions sentryAndroidOptions) {
        super(1);
        this.$options = sentryAndroidOptions;
    }

    @Override // id.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Map) obj);
        return t.f32733a;
    }

    public final void invoke(Map<String, ? extends Object> proxyJson) {
        Proxy.Type type;
        m.e(proxyJson, "proxyJson");
        SentryAndroidOptions sentryAndroidOptions = this.$options;
        s5.i iVar = new s5.i();
        Object obj = proxyJson.get(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST);
        iVar.f(obj instanceof String ? (String) obj : null);
        Object obj2 = proxyJson.get(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT);
        Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
        iVar.h(num != null ? String.valueOf(num.intValue()) : null);
        Object obj3 = proxyJson.get("type");
        String str = obj3 instanceof String ? (String) obj3 : null;
        if (str != null) {
            try {
                Locale ROOT = Locale.ROOT;
                m.d(ROOT, "ROOT");
                String upperCase = str.toUpperCase(ROOT);
                m.d(upperCase, "this as java.lang.String).toUpperCase(locale)");
                type = Proxy.Type.valueOf(upperCase);
            } catch (IllegalArgumentException unused) {
                Log.w("Sentry", "Could not parse `type` from proxy json: " + proxyJson);
                type = null;
            }
            iVar.i(type);
        }
        Object obj4 = proxyJson.get("user");
        iVar.j(obj4 instanceof String ? (String) obj4 : null);
        Object obj5 = proxyJson.get("pass");
        iVar.g(obj5 instanceof String ? (String) obj5 : null);
        sentryAndroidOptions.setProxy(iVar);
    }
}
