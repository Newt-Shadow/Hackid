package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.Collection;
/* loaded from: classes2.dex */
public final class B0 {

    /* renamed from: a  reason: collision with root package name */
    public final IHandlerExecutor f17968a = C1509t4.j().f().a();

    /* renamed from: b  reason: collision with root package name */
    public final C1406p0 f17969b;

    /* renamed from: c  reason: collision with root package name */
    public final Oe f17970c;

    /* renamed from: d  reason: collision with root package name */
    public final Re f17971d;

    public B0() {
        C1406p0 c1406p0 = new C1406p0();
        this.f17969b = c1406p0;
        this.f17970c = new Oe(c1406p0);
        this.f17971d = new Re();
    }

    public final void a(final PluginErrorDetails pluginErrorDetails) {
        Oe oe2 = this.f17970c;
        oe2.f18703a.a(null);
        oe2.f18704b.a(pluginErrorDetails);
        Re re2 = this.f17971d;
        kotlin.jvm.internal.m.b(pluginErrorDetails);
        re2.getClass();
        this.f17968a.execute(new Runnable() { // from class: io.appmetrica.analytics.impl.qo
            @Override // java.lang.Runnable
            public final void run() {
                B0.a(B0.this, pluginErrorDetails);
            }
        });
    }

    public final void a(final PluginErrorDetails pluginErrorDetails, final String str) {
        Oe oe2 = this.f17970c;
        oe2.f18703a.a(null);
        oe2.f18704b.a(pluginErrorDetails);
        if (oe2.f18706d.a((Collection<Object>) (pluginErrorDetails != null ? pluginErrorDetails.getStacktrace() : null)).f19201a) {
            Re re2 = this.f17971d;
            kotlin.jvm.internal.m.b(pluginErrorDetails);
            re2.getClass();
            this.f17968a.execute(new Runnable() { // from class: io.appmetrica.analytics.impl.po
                @Override // java.lang.Runnable
                public final void run() {
                    B0.a(B0.this, pluginErrorDetails, str);
                }
            });
        }
    }

    public final void a(final String str, final String str2, final PluginErrorDetails pluginErrorDetails) {
        Oe oe2 = this.f17970c;
        oe2.f18703a.a(null);
        oe2.f18705c.a(str);
        Re re2 = this.f17971d;
        kotlin.jvm.internal.m.b(str);
        re2.getClass();
        this.f17968a.execute(new Runnable() { // from class: io.appmetrica.analytics.impl.oo
            @Override // java.lang.Runnable
            public final void run() {
                B0.a(B0.this, str, str2, pluginErrorDetails);
            }
        });
    }

    public static final void a(B0 b02, PluginErrorDetails pluginErrorDetails, String str) {
        b02.f17969b.getClass();
        C1381o0 c1381o0 = C1381o0.f20244e;
        kotlin.jvm.internal.m.b(c1381o0);
        C1567vc i10 = c1381o0.f().i();
        kotlin.jvm.internal.m.b(i10);
        i10.f20803a.getPluginExtension().reportError(pluginErrorDetails, str);
    }

    public static final void a(B0 b02, String str, String str2, PluginErrorDetails pluginErrorDetails) {
        b02.f17969b.getClass();
        C1381o0 c1381o0 = C1381o0.f20244e;
        kotlin.jvm.internal.m.b(c1381o0);
        C1567vc i10 = c1381o0.f().i();
        kotlin.jvm.internal.m.b(i10);
        i10.f20803a.getPluginExtension().reportError(str, str2, pluginErrorDetails);
    }

    public static final void a(B0 b02, PluginErrorDetails pluginErrorDetails) {
        b02.f17969b.getClass();
        C1381o0 c1381o0 = C1381o0.f20244e;
        kotlin.jvm.internal.m.b(c1381o0);
        C1567vc i10 = c1381o0.f().i();
        kotlin.jvm.internal.m.b(i10);
        i10.f20803a.getPluginExtension().reportUnhandledException(pluginErrorDetails);
    }
}
