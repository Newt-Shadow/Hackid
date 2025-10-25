package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import l5.h;
import l5.i;
import l5.k;
import n5.q;
/* loaded from: classes.dex */
public class AdvertisingIdClient {
    private static final Object zzg = new Object();
    private static volatile AdvertisingIdClient zzh;
    l5.a zza;
    w5.f zzb;
    boolean zzc;
    final Object zzd;
    b zze;
    final long zzf;
    private final Context zzi;

    /* loaded from: classes.dex */
    public static final class Info {
        private final String zza;
        private final boolean zzb;

        @Deprecated
        public Info(String str, boolean z10) {
            this.zza = str;
            this.zzb = z10;
        }

        public String getId() {
            return this.zza;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.zzb;
        }

        public String toString() {
            return "{" + this.zza + "}" + this.zzb;
        }
    }

    public AdvertisingIdClient(Context context) {
        this(context, 30000L, false, false);
    }

    public static Info getAdvertisingIdInfo(Context context) {
        int i10;
        int i11;
        AdvertisingIdClient advertisingIdClient = zzh;
        if (advertisingIdClient == null) {
            synchronized (zzg) {
                advertisingIdClient = zzh;
                if (advertisingIdClient == null) {
                    Log.d("AdvertisingIdClient", "Creating AdvertisingIdClient");
                    advertisingIdClient = new AdvertisingIdClient(context);
                    zzh = advertisingIdClient;
                }
            }
        }
        AdvertisingIdClient advertisingIdClient2 = advertisingIdClient;
        Log.d("AdvertisingIdClient", "AdvertisingIdClient already created.");
        f a10 = f.a(context);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            Info zzf = advertisingIdClient2.zzf(-1);
            long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
            advertisingIdClient2.zze(zzf, true, 0.0f, elapsedRealtime2, "", null);
            a10.c(35401, 0, elapsedRealtime, System.currentTimeMillis(), (int) (SystemClock.elapsedRealtime() - elapsedRealtime));
            Log.i("AdvertisingIdClient", "GetInfoInternal elapse " + elapsedRealtime2 + "ms");
            return zzf;
        } catch (Throwable th) {
            advertisingIdClient2.zze(null, true, 0.0f, -1L, "", th);
            if (!(th instanceof IOException)) {
                if (!(th instanceof h)) {
                    if (!(th instanceof i)) {
                        if (th instanceof IllegalStateException) {
                            i10 = 8;
                        } else {
                            i11 = -1;
                            a10.c(35401, i11, elapsedRealtime, System.currentTimeMillis(), (int) (SystemClock.elapsedRealtime() - elapsedRealtime));
                            throw th;
                        }
                    } else {
                        i10 = 16;
                    }
                } else {
                    i10 = 9;
                }
            } else {
                i10 = 1;
            }
            i11 = i10;
            a10.c(35401, i11, elapsedRealtime, System.currentTimeMillis(), (int) (SystemClock.elapsedRealtime() - elapsedRealtime));
            throw th;
        }
    }

    public static boolean getIsAdIdFakeForDebugLogging(Context context) {
        boolean g10;
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, false, false);
        try {
            advertisingIdClient.zzc(false);
            q.j("Calling this from your main thread can lead to deadlock");
            synchronized (advertisingIdClient) {
                advertisingIdClient.zzd();
                q.k(advertisingIdClient.zza);
                q.k(advertisingIdClient.zzb);
                try {
                    g10 = advertisingIdClient.zzb.g();
                } catch (RemoteException e10) {
                    Log.i("AdvertisingIdClient", "GMS remote exception ", e10);
                    throw new IOException("Remote exception", e10);
                }
            }
            advertisingIdClient.zzb();
            return g10;
        } finally {
            advertisingIdClient.zza();
        }
    }

    public static void setShouldSkipGmsCoreVersionCheck(boolean z10) {
    }

    private final Info zzf(int i10) {
        Info info;
        q.j("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            zzd();
            q.k(this.zza);
            q.k(this.zzb);
            try {
                info = new Info(this.zzb.f(), this.zzb.D(true));
            } catch (RemoteException e10) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e10);
                throw new IOException("Remote exception", e10);
            }
        }
        zzb();
        return info;
    }

    protected final void finalize() {
        zza();
        super.finalize();
    }

    public Info getInfo() {
        return zzf(-1);
    }

    public void start() {
        zzc(true);
    }

    public final void zza() {
        q.j("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.zzi != null && this.zza != null) {
                if (this.zzc) {
                    r5.b.b().c(this.zzi, this.zza);
                }
                this.zzc = false;
                this.zzb = null;
                this.zza = null;
            }
        }
    }

    final void zzb() {
        synchronized (this.zzd) {
            b bVar = this.zze;
            if (bVar != null) {
                bVar.f5782c.countDown();
                try {
                    this.zze.join();
                } catch (InterruptedException unused) {
                }
            }
            long j10 = this.zzf;
            if (j10 > 0) {
                this.zze = new b(this, j10);
            }
        }
    }

    protected final void zzc(boolean z10) {
        q.j("Calling this from your main thread can lead to deadlock");
        if (z10) {
            zzb();
        }
        synchronized (this) {
            if (this.zzc) {
                return;
            }
            Context context = this.zzi;
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                int h10 = l5.g.f().h(context, k.f25303a);
                if (h10 != 0 && h10 != 2) {
                    throw new IOException("Google Play services not available");
                }
                l5.a aVar = new l5.a();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                if (r5.b.b().a(context, intent, aVar, 1)) {
                    this.zza = aVar;
                    try {
                        this.zzb = w5.e.a(aVar.b(10000L, TimeUnit.MILLISECONDS));
                        this.zzc = true;
                        return;
                    } catch (InterruptedException unused) {
                        throw new IOException("Interrupted exception");
                    } catch (Throwable th) {
                        throw new IOException(th);
                    }
                }
                throw new IOException("Connection failure");
            } catch (PackageManager.NameNotFoundException unused2) {
                throw new h(9);
            }
        }
    }

    final synchronized void zzd() {
        if (!this.zzc) {
            try {
                Log.d("AdvertisingIdClient", "AdvertisingIdClient is not bounded. Starting to bind it...");
                zzc(false);
                Log.d("AdvertisingIdClient", "AdvertisingIdClient is bounded");
                if (!this.zzc) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.");
                }
            } catch (Exception e10) {
                throw new IOException("AdvertisingIdClient cannot reconnect.", e10);
            }
        }
    }

    final boolean zze(Info info, boolean z10, float f10, long j10, String str, Throwable th) {
        if (Math.random() <= 0.0d) {
            HashMap hashMap = new HashMap();
            String str2 = "1";
            hashMap.put("app_context", "1");
            if (info != null) {
                if (true != info.isLimitAdTrackingEnabled()) {
                    str2 = CommonUrlParts.Values.FALSE_INTEGER;
                }
                hashMap.put(CommonUrlParts.LIMIT_AD_TRACKING, str2);
                String id2 = info.getId();
                if (id2 != null) {
                    hashMap.put("ad_id_size", Integer.toString(id2.length()));
                }
            }
            if (th != null) {
                hashMap.put("error", th.getClass().getName());
            }
            hashMap.put("tag", "AdvertisingIdClient");
            hashMap.put("time_spent", Long.toString(j10));
            new a(this, hashMap).start();
            return true;
        }
        return false;
    }

    public AdvertisingIdClient(Context context, long j10, boolean z10, boolean z11) {
        this.zzd = new Object();
        q.k(context);
        this.zzi = context.getApplicationContext();
        this.zzc = false;
        this.zzf = j10;
    }
}
