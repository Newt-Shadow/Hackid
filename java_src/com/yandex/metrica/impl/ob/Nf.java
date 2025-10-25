package com.yandex.metrica.impl.ob;

import android.util.Log;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.plugins.IPluginReporter;
import com.yandex.metrica.plugins.PluginErrorDetails;
/* loaded from: classes2.dex */
public class Nf implements IPluginReporter {

    /* renamed from: a  reason: collision with root package name */
    private final Yf f10899a;

    /* renamed from: b  reason: collision with root package name */
    private final com.yandex.metrica.g f10900b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f10901c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0815qm<M0> f10902d;

    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f10903a;

        a(PluginErrorDetails pluginErrorDetails) {
            this.f10903a = pluginErrorDetails;
        }

        @Override // java.lang.Runnable
        public void run() {
            Nf.a(Nf.this).reportUnhandledException(this.f10903a);
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f10905a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f10906b;

        b(PluginErrorDetails pluginErrorDetails, String str) {
            this.f10905a = pluginErrorDetails;
            this.f10906b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Nf.a(Nf.this).reportError(this.f10905a, this.f10906b);
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f10908a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f10909b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f10910c;

        c(String str, String str2, PluginErrorDetails pluginErrorDetails) {
            this.f10908a = str;
            this.f10909b = str2;
            this.f10910c = pluginErrorDetails;
        }

        @Override // java.lang.Runnable
        public void run() {
            Nf.a(Nf.this).reportError(this.f10908a, this.f10909b, this.f10910c);
        }
    }

    public Nf(Yf yf, com.yandex.metrica.g gVar, ICommonExecutor iCommonExecutor, InterfaceC0815qm<M0> interfaceC0815qm) {
        this.f10899a = yf;
        this.f10900b = gVar;
        this.f10901c = iCommonExecutor;
        this.f10902d = interfaceC0815qm;
    }

    static IPluginReporter a(Nf nf2) {
        return nf2.f10902d.a().getPluginExtension();
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        if (!this.f10899a.a(pluginErrorDetails, str)) {
            Log.w("AppMetrica", "Error stacktrace must be non empty");
            return;
        }
        this.f10900b.getClass();
        this.f10901c.execute(new b(pluginErrorDetails, str));
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        this.f10899a.reportUnhandledException(pluginErrorDetails);
        this.f10900b.getClass();
        this.f10901c.execute(new a(pluginErrorDetails));
    }

    @Override // com.yandex.metrica.plugins.IPluginReporter
    public void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.f10899a.reportError(str, str2, pluginErrorDetails);
        this.f10900b.getClass();
        this.f10901c.execute(new c(str, str2, pluginErrorDetails));
    }
}
