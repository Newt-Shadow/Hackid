package com.google.android.gms.measurement.internal;

import android.content.pm.PackageManager;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
public final class xb extends ad {

    /* renamed from: d  reason: collision with root package name */
    private final Map f8254d;

    /* renamed from: e  reason: collision with root package name */
    public final a6 f8255e;

    /* renamed from: f  reason: collision with root package name */
    public final a6 f8256f;

    /* renamed from: g  reason: collision with root package name */
    public final a6 f8257g;

    /* renamed from: h  reason: collision with root package name */
    public final a6 f8258h;

    /* renamed from: i  reason: collision with root package name */
    public final a6 f8259i;

    /* renamed from: j  reason: collision with root package name */
    public final a6 f8260j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public xb(pd pdVar) {
        super(pdVar);
        this.f8254d = new HashMap();
        d6 x10 = this.f8322a.x();
        Objects.requireNonNull(x10);
        this.f8255e = new a6(x10, "last_delete_stale", 0L);
        d6 x11 = this.f8322a.x();
        Objects.requireNonNull(x11);
        this.f8256f = new a6(x11, "last_delete_stale_batch", 0L);
        d6 x12 = this.f8322a.x();
        Objects.requireNonNull(x12);
        this.f8257g = new a6(x12, "backoff", 0L);
        d6 x13 = this.f8322a.x();
        Objects.requireNonNull(x13);
        this.f8258h = new a6(x13, "last_upload", 0L);
        d6 x14 = this.f8322a.x();
        Objects.requireNonNull(x14);
        this.f8259i = new a6(x14, "last_upload_attempt", 0L);
        d6 x15 = this.f8322a.x();
        Objects.requireNonNull(x15);
        this.f8260j = new a6(x15, "midnight_offset", 0L);
    }

    @Override // com.google.android.gms.measurement.internal.ad
    protected final boolean l() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Pair m(String str, d8 d8Var) {
        if (d8Var.o(i6.s.AD_STORAGE)) {
            return n(str);
        }
        return new Pair("", Boolean.FALSE);
    }

    final Pair n(String str) {
        wb wbVar;
        AdvertisingIdClient.Info info;
        h();
        w6 w6Var = this.f8322a;
        long elapsedRealtime = w6Var.f().elapsedRealtime();
        wb wbVar2 = (wb) this.f8254d.get(str);
        if (wbVar2 != null && elapsedRealtime < wbVar2.f8216c) {
            return new Pair(wbVar2.f8214a, Boolean.valueOf(wbVar2.f8215b));
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        long D = w6Var.w().D(str, c5.f7327b) + elapsedRealtime;
        try {
            try {
                info = AdvertisingIdClient.getAdvertisingIdInfo(w6Var.e());
            } catch (PackageManager.NameNotFoundException unused) {
                info = null;
                if (wbVar2 != null && elapsedRealtime < wbVar2.f8216c + this.f8322a.w().D(str, c5.f7330c)) {
                    return new Pair(wbVar2.f8214a, Boolean.valueOf(wbVar2.f8215b));
                }
            }
        } catch (Exception e10) {
            this.f8322a.a().v().b("Unable to get advertising id", e10);
            wbVar = new wb("", false, D);
        }
        if (info == null) {
            return new Pair("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
        }
        String id2 = info.getId();
        if (id2 != null) {
            wbVar = new wb(id2, info.isLimitAdTrackingEnabled(), D);
        } else {
            wbVar = new wb("", info.isLimitAdTrackingEnabled(), D);
        }
        this.f8254d.put(str, wbVar);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair(wbVar.f8214a, Boolean.valueOf(wbVar.f8215b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String o(String str, boolean z10) {
        String str2;
        h();
        if (z10) {
            str2 = (String) n(str).first;
        } else {
            str2 = "00000000-0000-0000-0000-000000000000";
        }
        MessageDigest C = yd.C();
        if (C == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, C.digest(str2.getBytes())));
    }
}
