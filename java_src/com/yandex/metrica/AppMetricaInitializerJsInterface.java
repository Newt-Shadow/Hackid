package com.yandex.metrica;

import android.webkit.JavascriptInterface;
import com.yandex.metrica.impl.ob.Uf;
/* loaded from: classes.dex */
public class AppMetricaInitializerJsInterface {

    /* renamed from: a  reason: collision with root package name */
    private final Uf f9526a;

    public AppMetricaInitializerJsInterface(Uf uf) {
        this.f9526a = uf;
    }

    @JavascriptInterface
    public void init(String str) {
        this.f9526a.c(str);
    }
}
