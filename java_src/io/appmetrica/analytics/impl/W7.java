package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfo;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfoResult;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsHolder;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2.dex */
public final class W7 {

    /* renamed from: a  reason: collision with root package name */
    public final O f19156a;

    /* renamed from: b  reason: collision with root package name */
    public final C1084c2 f19157b;

    public W7(O o10, C1084c2 c1084c2) {
        this.f19156a = o10;
        this.f19157b = c1084c2;
    }

    public final String a() {
        AdvertisingIdsHolder advertisingIdsHolder;
        String D;
        String D2;
        byte[] bArr;
        O o10 = this.f19156a;
        C1429pn c1429pn = new C1429pn(5, 500);
        synchronized (o10) {
            try {
                o10.a((Fi) c1429pn, true).get();
            } catch (InterruptedException | ExecutionException unused) {
            }
            advertisingIdsHolder = o10.f18675k;
        }
        AdTrackingInfoResult yandex = advertisingIdsHolder.getYandex();
        if (yandex.isValid()) {
            AdTrackingInfo adTrackingInfo = yandex.mAdTrackingInfo;
            kotlin.jvm.internal.m.b(adTrackingInfo);
            String str = adTrackingInfo.advId;
            kotlin.jvm.internal.m.b(str);
            try {
                bArr = MessageDigest.getInstance("MD5").digest(str.getBytes(rd.d.f29089b));
            } catch (NoSuchAlgorithmException unused2) {
                bArr = new byte[0];
            }
            return StringUtils.toHexString(bArr);
        }
        String id2 = this.f19157b.getAppSetId().getId();
        if (id2 != null && id2.length() != 0) {
            try {
                UUID.fromString(id2);
                if (!kotlin.jvm.internal.m.a(id2, "00000000-0000-0000-0000-000000000000")) {
                    D2 = rd.y.D(id2, "-", "", false, 4, null);
                    return D2;
                }
            } catch (Throwable unused3) {
            }
        }
        D = rd.y.D(UUID.randomUUID().toString(), "-", "", false, 4, null);
        return D.toLowerCase(Locale.US);
    }

    public W7() {
        this(C1665za.j().b(), C1665za.j().c());
    }
}
