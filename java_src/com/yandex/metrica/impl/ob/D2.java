package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.webkit.WebView;
import com.yandex.metrica.AppMetricaInitializerJsInterface;
import com.yandex.metrica.AppMetricaJsInterface;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class D2 {

    /* renamed from: a  reason: collision with root package name */
    private final List<InterfaceC0716mm<C0467cm>> f9868a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private C0467cm f9869b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements InterfaceC0716mm<C0467cm> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f9870a;

        a(D2 d22, String str) {
            this.f9870a = str;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(C0467cm c0467cm) {
            C0467cm c0467cm2 = c0467cm;
            if (c0467cm2.isEnabled()) {
                c0467cm2.w(this.f9870a);
            }
        }
    }

    @SuppressLint({"AddJavascriptInterface"})
    public void a(WebView webView, Uf uf) {
        if (A2.a(17)) {
            try {
                if (webView.getSettings().getJavaScriptEnabled()) {
                    webView.addJavascriptInterface(new AppMetricaJsInterface(uf), "AppMetrica");
                    webView.addJavascriptInterface(new AppMetricaInitializerJsInterface(uf), "AppMetricaInitializer");
                    C2 c22 = new C2(this, "WebView interface setup is successful.");
                    synchronized (this) {
                        C0467cm c0467cm = this.f9869b;
                        if (c0467cm == null) {
                            this.f9868a.add(c22);
                        } else {
                            c22.b(c0467cm);
                        }
                    }
                    return;
                }
                a("WebView interface setup failed because javascript is disabled for the WebView.");
                return;
            } catch (Throwable th) {
                E2 e22 = new E2(this, th, "WebView interface setup failed because of an exception.");
                synchronized (this) {
                    C0467cm c0467cm2 = this.f9869b;
                    if (c0467cm2 == null) {
                        this.f9868a.add(e22);
                        return;
                    } else {
                        e22.b(c0467cm2);
                        return;
                    }
                }
            }
        }
        a("WebView interface is not available on Android < 17.");
    }

    public void a(C0467cm c0467cm) {
        synchronized (this) {
            this.f9869b = c0467cm;
        }
        for (InterfaceC0716mm<C0467cm> interfaceC0716mm : this.f9868a) {
            interfaceC0716mm.b(c0467cm);
        }
        this.f9868a.clear();
    }

    private void a(String str) {
        a aVar = new a(this, str);
        synchronized (this) {
            C0467cm c0467cm = this.f9869b;
            if (c0467cm == null) {
                this.f9868a.add(aVar);
            } else {
                aVar.b(c0467cm);
            }
        }
    }
}
