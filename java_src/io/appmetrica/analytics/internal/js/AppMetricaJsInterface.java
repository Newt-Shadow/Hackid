package io.appmetrica.analytics.internal.js;

import android.webkit.JavascriptInterface;
import io.appmetrica.analytics.impl.C1282k1;
/* loaded from: classes2.dex */
public class AppMetricaJsInterface {

    /* renamed from: a  reason: collision with root package name */
    private final C1282k1 f21096a;

    public AppMetricaJsInterface(C1282k1 c1282k1) {
        this.f21096a = c1282k1;
    }

    @JavascriptInterface
    public void reportEvent(String str, String str2) {
        this.f21096a.d(str, str2);
    }
}
