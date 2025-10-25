package com.yandex.metrica;

import android.webkit.JavascriptInterface;
import com.yandex.metrica.impl.ob.Uf;
/* loaded from: classes.dex */
public class AppMetricaJsInterface {

    /* renamed from: a  reason: collision with root package name */
    private final Uf f9527a;

    public AppMetricaJsInterface(Uf uf) {
        this.f9527a = uf;
    }

    @JavascriptInterface
    public void reportEvent(String str, String str2) {
        this.f9527a.c(str, str2);
    }
}
