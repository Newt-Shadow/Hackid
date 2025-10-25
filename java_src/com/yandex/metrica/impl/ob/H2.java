package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes2.dex */
public class H2 {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: l  reason: collision with root package name */
    private static volatile H2 f10169l;

    /* renamed from: m  reason: collision with root package name */
    private static final Object f10170m = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final Context f10171a;

    /* renamed from: b  reason: collision with root package name */
    private final WifiManager f10172b;

    /* renamed from: c  reason: collision with root package name */
    private C0997yd f10173c;

    /* renamed from: d  reason: collision with root package name */
    private Ed f10174d;

    /* renamed from: e  reason: collision with root package name */
    private C0567gm f10175e;

    /* renamed from: f  reason: collision with root package name */
    private InterfaceC0691lm<Context, Intent, Void> f10176f;

    /* renamed from: g  reason: collision with root package name */
    private C0787pi f10177g;

    /* renamed from: h  reason: collision with root package name */
    private final InterfaceC1021zd f10178h;

    /* renamed from: i  reason: collision with root package name */
    private final InterfaceC1021zd f10179i;

    /* renamed from: j  reason: collision with root package name */
    private final I2 f10180j;

    /* renamed from: k  reason: collision with root package name */
    private final J2 f10181k;

    private H2(Context context, WifiManager wifiManager, Ed ed2) {
        this(context, wifiManager, ed2, new C0997yd(ed2.a()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x007b, code lost:
        if (r4.getIpAddress() == 0) goto L100;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0032 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x005f A[Catch: all -> 0x007d, TryCatch #7 {all -> 0x007d, blocks: (B:43:0x0059, B:45:0x005f, B:47:0x006b, B:49:0x0077), top: B:116:0x0059 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.yandex.metrica.impl.ob.F2> c() {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.H2.c():java.util.List");
    }

    public static H2 a(Context context) {
        if (f10169l == null) {
            synchronized (f10170m) {
                if (f10169l == null) {
                    Context applicationContext = context.getApplicationContext();
                    f10169l = new H2(applicationContext, (WifiManager) applicationContext.getApplicationContext().getSystemService("wifi"), new Ed());
                }
            }
        }
        return f10169l;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.util.List<com.yandex.metrica.impl.ob.F2> b() {
        /*
            r2 = this;
            monitor-enter(r2)
            com.yandex.metrica.impl.ob.yd r0 = r2.f10173c     // Catch: java.lang.Throwable -> L33
            android.content.Context r1 = r2.f10171a     // Catch: java.lang.Throwable -> L33
            boolean r0 = r0.c(r1)     // Catch: java.lang.Throwable -> L33
            if (r0 != 0) goto Ld
            r0 = 0
            goto L25
        Ld:
            android.net.wifi.WifiManager r0 = r2.f10172b     // Catch: java.lang.Throwable -> L33
            java.lang.Boolean r1 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L1c
            boolean r0 = r0.isWifiEnabled()     // Catch: java.lang.Throwable -> L1c
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> L1c
            goto L1d
        L1c:
            r0 = 0
        L1d:
            if (r0 != 0) goto L20
            goto L21
        L20:
            r1 = r0
        L21:
            boolean r0 = r1.booleanValue()     // Catch: java.lang.Throwable -> L33
        L25:
            if (r0 != 0) goto L2d
            java.util.List r0 = java.util.Collections.emptyList()     // Catch: java.lang.Throwable -> L33
            monitor-exit(r2)
            return r0
        L2d:
            java.util.List r0 = r2.c()     // Catch: java.lang.Throwable -> L33
            monitor-exit(r2)
            return r0
        L33:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.H2.b():java.util.List");
    }

    private H2(Context context, WifiManager wifiManager, Ed ed2, C0997yd c0997yd) {
        this(context, wifiManager, ed2, new C0567gm(), c0997yd, new G1(), new I2(), F0.g().h().d());
    }

    H2(Context context, WifiManager wifiManager, Ed ed2, C0567gm c0567gm, C0997yd c0997yd, G1 g12, I2 i22, J2 j22) {
        this.f10171a = context;
        this.f10172b = wifiManager;
        this.f10174d = ed2;
        this.f10173c = c0997yd;
        this.f10178h = g12.d(c0997yd);
        this.f10179i = g12.e(c0997yd);
        this.f10175e = c0567gm;
        this.f10180j = i22;
        this.f10181k = j22;
    }

    public void a(C0787pi c0787pi) {
        this.f10177g = c0787pi;
        this.f10174d.a(c0787pi);
        this.f10173c.a(this.f10174d.a());
        if (c0787pi.d() != null) {
            I2 i22 = this.f10180j;
            Ph d10 = c0787pi.d();
            i22.f10101a.a(d10.f11111b, i22.a(d10));
        }
    }

    public void a(boolean z10) {
        this.f10174d.a(z10);
        this.f10173c.a(this.f10174d.a());
    }

    @SuppressLint({"MissingPermission"})
    public synchronized boolean a(CountDownLatch countDownLatch, V v10) {
        Boolean valueOf;
        if (this.f10179i.a(this.f10171a)) {
            if (this.f10176f == null) {
                this.f10176f = new G2(this, v10, countDownLatch);
            }
            this.f10181k.a(this.f10176f);
            WifiManager wifiManager = this.f10172b;
            if (wifiManager != null) {
                try {
                    valueOf = Boolean.valueOf(wifiManager.startScan());
                } catch (Throwable unused) {
                }
                return Boolean.TRUE.equals(valueOf);
            }
            valueOf = null;
            return Boolean.TRUE.equals(valueOf);
        }
        return false;
    }

    public I2 a() {
        return this.f10180j;
    }
}
