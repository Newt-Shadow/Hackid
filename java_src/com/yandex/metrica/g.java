package com.yandex.metrica;

import android.app.Application;
import android.content.Context;
import android.webkit.WebView;
import com.yandex.metrica.impl.ob.C0395a0;
import com.yandex.metrica.impl.ob.C0746o2;
import com.yandex.metrica.impl.ob.C0792q;
import com.yandex.metrica.impl.ob.D2;
import com.yandex.metrica.impl.ob.P;
import com.yandex.metrica.impl.ob.R2;
import com.yandex.metrica.impl.ob.Sf;
import com.yandex.metrica.impl.ob.Uf;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final Sf f9634a;

    /* renamed from: b  reason: collision with root package name */
    private final D2 f9635b;

    /* renamed from: c  reason: collision with root package name */
    private final C0792q f9636c;

    /* renamed from: d  reason: collision with root package name */
    private final C0746o2 f9637d;

    /* renamed from: e  reason: collision with root package name */
    private final C0395a0 f9638e;

    public g(Sf sf2, D2 d22) {
        this(sf2, d22, P.g().b(), P.g().l(), P.g().e());
    }

    public C0792q.c a(Application application) {
        this.f9636c.a(application);
        return this.f9637d.a();
    }

    public void b(Context context) {
        this.f9638e.a(context);
    }

    public void c(Context context, YandexMetricaConfig yandexMetricaConfig) {
        j jVar = (j) yandexMetricaConfig;
        this.f9638e.a(context);
        Boolean bool = jVar.sessionsAutoTrackingEnabled;
        Boolean bool2 = Boolean.TRUE;
        if (bool == null) {
            bool = bool2;
        }
        if (bool.booleanValue()) {
            this.f9637d.a();
        }
        this.f9634a.getClass();
        R2.a(context).b(jVar);
    }

    public void d(WebView webView, Uf uf) {
        this.f9635b.a(webView, uf);
    }

    public void e(Context context) {
        this.f9638e.a(context);
    }

    public void f(Context context) {
        this.f9638e.a(context);
    }

    public g(Sf sf2, D2 d22, C0792q c0792q, C0746o2 c0746o2, C0395a0 c0395a0) {
        this.f9634a = sf2;
        this.f9635b = d22;
        this.f9636c = c0792q;
        this.f9637d = c0746o2;
        this.f9638e = c0395a0;
    }
}
