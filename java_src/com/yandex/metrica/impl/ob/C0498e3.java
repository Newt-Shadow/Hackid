package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.C0935w;
import java.util.concurrent.Executor;
/* renamed from: com.yandex.metrica.impl.ob.e3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0498e3 {

    /* renamed from: a  reason: collision with root package name */
    private InterfaceC0643k f12264a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f12265b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f12266c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f12267d;

    /* renamed from: e  reason: collision with root package name */
    private final zb.b f12268e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC0718n f12269f;

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC0693m f12270g;

    /* renamed from: h  reason: collision with root package name */
    private final C0935w f12271h;

    /* renamed from: i  reason: collision with root package name */
    private final C0473d3 f12272i;

    /* renamed from: com.yandex.metrica.impl.ob.e3$a */
    /* loaded from: classes2.dex */
    class a implements C0935w.b {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.C0935w.b
        public void a(C0935w.a aVar) {
            C0498e3.a(C0498e3.this, aVar);
        }
    }

    public C0498e3(Context context, Executor executor, Executor executor2, zb.b bVar, InterfaceC0718n interfaceC0718n, InterfaceC0693m interfaceC0693m, C0935w c0935w, C0473d3 c0473d3) {
        this.f12265b = context;
        this.f12266c = executor;
        this.f12267d = executor2;
        this.f12268e = bVar;
        this.f12269f = interfaceC0718n;
        this.f12270g = interfaceC0693m;
        this.f12271h = c0935w;
        this.f12272i = c0473d3;
    }

    static void a(C0498e3 c0498e3, C0935w.a aVar) {
        c0498e3.getClass();
        if (aVar == C0935w.a.VISIBLE) {
            try {
                InterfaceC0643k interfaceC0643k = c0498e3.f12264a;
                if (interfaceC0643k != null) {
                    interfaceC0643k.b();
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void a(C0787pi c0787pi, Boolean bool) {
        InterfaceC0643k a10;
        Boolean bool2 = Boolean.TRUE;
        if (bool == null) {
            bool = bool2;
        }
        if (bool.booleanValue()) {
            synchronized (this) {
                a10 = this.f12272i.a(this.f12265b, this.f12266c, this.f12267d, this.f12268e, this.f12269f, this.f12270g);
                this.f12264a = a10;
            }
            a10.a(c0787pi.c());
            if (this.f12271h.a(new a()) == C0935w.a.VISIBLE) {
                try {
                    InterfaceC0643k interfaceC0643k = this.f12264a;
                    if (interfaceC0643k != null) {
                        interfaceC0643k.b();
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public synchronized void a(C0787pi c0787pi) {
        InterfaceC0643k interfaceC0643k;
        synchronized (this) {
            interfaceC0643k = this.f12264a;
        }
        if (interfaceC0643k != null) {
            interfaceC0643k.a(c0787pi.c());
        }
    }
}
