package com.yandex.metrica.gpllibrary;

import android.content.Context;
import android.location.LocationListener;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.location.LocationRequest;
import g6.LocationCallback;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public class a implements com.yandex.metrica.gpllibrary.b {

    /* renamed from: a  reason: collision with root package name */
    private final g6.b f9639a;

    /* renamed from: b  reason: collision with root package name */
    private final LocationListener f9640b;

    /* renamed from: c  reason: collision with root package name */
    private final LocationCallback f9641c;

    /* renamed from: d  reason: collision with root package name */
    private final Looper f9642d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f9643e;

    /* renamed from: f  reason: collision with root package name */
    private final long f9644f;

    /* renamed from: com.yandex.metrica.gpllibrary.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0120a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f9645a;

        C0120a(Context context) {
            this.f9645a = context;
        }

        g6.b a() {
            return new g6.b(this.f9645a);
        }
    }

    /* loaded from: classes.dex */
    public enum b {
        PRIORITY_NO_POWER,
        PRIORITY_LOW_POWER,
        PRIORITY_BALANCED_POWER_ACCURACY,
        PRIORITY_HIGH_ACCURACY
    }

    public a(Context context, LocationListener locationListener, Looper looper, Executor executor, long j10) {
        this(new C0120a(context), locationListener, looper, executor, j10);
    }

    @Override // com.yandex.metrica.gpllibrary.b
    public void startLocationUpdates(b bVar) {
        int i10;
        Log.d("[GplLibraryWrapper]", "startLocationUpdates");
        g6.b bVar2 = this.f9639a;
        LocationRequest l10 = LocationRequest.g().l(this.f9644f);
        int ordinal = bVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    i10 = 105;
                } else {
                    i10 = 100;
                }
            } else {
                i10 = 102;
            }
        } else {
            i10 = 104;
        }
        bVar2.B(l10.m(i10), this.f9641c, this.f9642d);
    }

    @Override // com.yandex.metrica.gpllibrary.b
    public void stopLocationUpdates() {
        Log.d("[GplLibraryWrapper]", "stopLocationUpdates");
        this.f9639a.A(this.f9641c);
    }

    @Override // com.yandex.metrica.gpllibrary.b
    public void updateLastKnownLocation() {
        Log.d("[GplLibraryWrapper]", "updateLastKnownLocation");
        this.f9639a.z().f(this.f9643e, new GplOnSuccessListener(this.f9640b));
    }

    a(C0120a c0120a, LocationListener locationListener, Looper looper, Executor executor, long j10) {
        this.f9639a = c0120a.a();
        this.f9640b = locationListener;
        this.f9642d = looper;
        this.f9643e = executor;
        this.f9644f = j10;
        this.f9641c = new GplLocationCallback(locationListener);
    }
}
