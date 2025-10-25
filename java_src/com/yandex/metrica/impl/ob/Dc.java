package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.LocationListener;
import android.os.Looper;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class Dc<T> {

    /* renamed from: e  reason: collision with root package name */
    static final long f9904e = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: a  reason: collision with root package name */
    protected final Context f9905a;

    /* renamed from: b  reason: collision with root package name */
    protected final InterfaceC1021zd f9906b;

    /* renamed from: c  reason: collision with root package name */
    protected final LocationListener f9907c;

    /* renamed from: d  reason: collision with root package name */
    protected final Looper f9908d;

    public Dc(Context context, LocationListener locationListener, InterfaceC1021zd interfaceC1021zd, Looper looper) {
        this.f9905a = context;
        this.f9907c = locationListener;
        this.f9906b = interfaceC1021zd;
        this.f9908d = looper;
    }

    public abstract void a();

    public abstract boolean a(T t10);

    public abstract void b();
}
