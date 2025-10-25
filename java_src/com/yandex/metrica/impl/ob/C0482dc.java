package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.LocationListener;
import android.os.Looper;
import com.yandex.metrica.core.api.executors.IHandlerExecutor;
/* renamed from: com.yandex.metrica.impl.ob.dc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0482dc extends Dc<C0457cc> {

    /* renamed from: f  reason: collision with root package name */
    private final com.yandex.metrica.gpllibrary.b f12210f;

    public C0482dc(Context context, Pc pc2, IHandlerExecutor iHandlerExecutor, C0997yd c0997yd) {
        this(context, pc2, iHandlerExecutor, c0997yd, new G1());
    }

    @Override // com.yandex.metrica.impl.ob.Dc
    public boolean a(C0457cc c0457cc) {
        C0457cc c0457cc2 = c0457cc;
        if (c0457cc2.f12156b != null && this.f9906b.a(this.f9905a)) {
            try {
                this.f12210f.startLocationUpdates(c0457cc2.f12156b.f11970a);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @Override // com.yandex.metrica.impl.ob.Dc
    public void b() {
        if (this.f9906b.a(this.f9905a)) {
            try {
                this.f12210f.updateLastKnownLocation();
            } catch (Throwable unused) {
            }
        }
    }

    private C0482dc(Context context, Pc pc2, IHandlerExecutor iHandlerExecutor, C0997yd c0997yd, G1 g12) {
        this(context, iHandlerExecutor, new C1020zc(pc2), g12.a(c0997yd));
    }

    C0482dc(Context context, IHandlerExecutor iHandlerExecutor, LocationListener locationListener, InterfaceC1021zd interfaceC1021zd) {
        this(context, iHandlerExecutor.getLooper(), locationListener, interfaceC1021zd, a(context, locationListener, iHandlerExecutor));
    }

    @Override // com.yandex.metrica.impl.ob.Dc
    public void a() {
        try {
            this.f12210f.stopLocationUpdates();
        } catch (Throwable unused) {
        }
    }

    private static com.yandex.metrica.gpllibrary.b a(Context context, LocationListener locationListener, IHandlerExecutor iHandlerExecutor) {
        if (C0572h2.a("com.google.android.gms.location.LocationRequest")) {
            try {
                return new com.yandex.metrica.gpllibrary.a(context, locationListener, iHandlerExecutor.getLooper(), iHandlerExecutor, Dc.f9904e);
            } catch (Throwable unused) {
            }
        }
        return new Tb();
    }

    C0482dc(Context context, Looper looper, LocationListener locationListener, InterfaceC1021zd interfaceC1021zd, com.yandex.metrica.gpllibrary.b bVar) {
        super(context, locationListener, interfaceC1021zd, looper);
        this.f12210f = bVar;
    }
}
