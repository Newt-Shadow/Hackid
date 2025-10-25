package com.google.android.gms.ads.identifier;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
final class b extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference f5780a;

    /* renamed from: b  reason: collision with root package name */
    private final long f5781b;

    /* renamed from: c  reason: collision with root package name */
    final CountDownLatch f5782c;

    public b(AdvertisingIdClient advertisingIdClient, long j10) {
        super("AdIdClientAutoDisconnectThread");
        this.f5780a = new WeakReference(advertisingIdClient);
        this.f5781b = j10;
        this.f5782c = new CountDownLatch(1);
        start();
    }

    private final void a() {
        AdvertisingIdClient advertisingIdClient = (AdvertisingIdClient) this.f5780a.get();
        if (advertisingIdClient != null) {
            advertisingIdClient.zza();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            if (!this.f5782c.await(this.f5781b, TimeUnit.MILLISECONDS)) {
                a();
            }
        } catch (InterruptedException unused) {
            a();
        }
    }
}
