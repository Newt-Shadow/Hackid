package com.yandex.metrica.impl.ob;

import android.util.Log;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.plugins.PluginErrorDetails;
/* loaded from: classes2.dex */
public final class Tf {

    /* renamed from: a  reason: collision with root package name */
    private final ICommonExecutor f11411a;

    /* renamed from: b  reason: collision with root package name */
    private final Sf f11412b;

    /* renamed from: c  reason: collision with root package name */
    private final Kf f11413c;

    /* renamed from: d  reason: collision with root package name */
    private final Xf f11414d;

    /* renamed from: e  reason: collision with root package name */
    private final com.yandex.metrica.g f11415e;

    /* loaded from: classes2.dex */
    static final class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f11417b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f11418c;

        a(PluginErrorDetails pluginErrorDetails, String str) {
            this.f11417b = pluginErrorDetails;
            this.f11418c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Tf.a(Tf.this).getPluginExtension().reportError(this.f11417b, this.f11418c);
        }
    }

    /* loaded from: classes2.dex */
    static final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f11420b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f11421c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f11422d;

        b(String str, String str2, PluginErrorDetails pluginErrorDetails) {
            this.f11420b = str;
            this.f11421c = str2;
            this.f11422d = pluginErrorDetails;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Tf.a(Tf.this).getPluginExtension().reportError(this.f11420b, this.f11421c, this.f11422d);
        }
    }

    /* loaded from: classes2.dex */
    static final class c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PluginErrorDetails f11424b;

        c(PluginErrorDetails pluginErrorDetails) {
            this.f11424b = pluginErrorDetails;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Tf.a(Tf.this).getPluginExtension().reportUnhandledException(this.f11424b);
        }
    }

    public Tf(ICommonExecutor iCommonExecutor, Sf sf2, Kf kf2, Xf xf, com.yandex.metrica.g gVar) {
        this.f11411a = iCommonExecutor;
        this.f11412b = sf2;
        this.f11413c = kf2;
        this.f11414d = xf;
        this.f11415e = gVar;
    }

    public final void a(PluginErrorDetails pluginErrorDetails) {
        this.f11413c.a(null);
        this.f11414d.a().reportUnhandledException(pluginErrorDetails);
        com.yandex.metrica.g gVar = this.f11415e;
        kotlin.jvm.internal.m.b(pluginErrorDetails);
        gVar.getClass();
        this.f11411a.execute(new c(pluginErrorDetails));
    }

    public Tf(ICommonExecutor iCommonExecutor) {
        this(iCommonExecutor, new Sf());
    }

    private Tf(ICommonExecutor iCommonExecutor, Sf sf2) {
        this(iCommonExecutor, sf2, new Kf(sf2), new Xf(), new com.yandex.metrica.g(sf2, new D2()));
    }

    public final void a(PluginErrorDetails pluginErrorDetails, String str) {
        this.f11413c.a(null);
        if (!this.f11414d.a().a(pluginErrorDetails, str)) {
            Log.w("AppMetrica", "Error stacktrace must be non empty");
            return;
        }
        com.yandex.metrica.g gVar = this.f11415e;
        kotlin.jvm.internal.m.b(pluginErrorDetails);
        gVar.getClass();
        this.f11411a.execute(new a(pluginErrorDetails, str));
    }

    public final void a(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.f11413c.a(null);
        this.f11414d.a().reportError(str, str2, pluginErrorDetails);
        com.yandex.metrica.g gVar = this.f11415e;
        kotlin.jvm.internal.m.b(str);
        gVar.getClass();
        this.f11411a.execute(new b(str, str2, pluginErrorDetails));
    }

    public static final K0 a(Tf tf) {
        tf.f11412b.getClass();
        R2 k10 = R2.k();
        kotlin.jvm.internal.m.b(k10);
        kotlin.jvm.internal.m.d(k10, "provider.peekInitializedImpl()!!");
        C0645k1 d10 = k10.d();
        kotlin.jvm.internal.m.b(d10);
        kotlin.jvm.internal.m.d(d10, "provider.peekInitialized…rterApiConsumerProvider!!");
        K0 b10 = d10.b();
        kotlin.jvm.internal.m.d(b10, "provider.peekInitialized…erProvider!!.mainReporter");
        return b10;
    }
}
