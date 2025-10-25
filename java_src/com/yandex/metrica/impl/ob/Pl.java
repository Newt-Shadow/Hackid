package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.UUID;
/* loaded from: classes2.dex */
public final class Pl {

    /* renamed from: a  reason: collision with root package name */
    private final Context f11120a;

    /* renamed from: b  reason: collision with root package name */
    private final C0971xb f11121b;

    /* renamed from: c  reason: collision with root package name */
    private final Bb f11122c;

    public Pl(Context context, C0971xb c0971xb, Bb bb2) {
        this.f11120a = context;
        this.f11121b = c0971xb;
        this.f11122c = bb2;
    }

    private final String b() {
        String D;
        String uuid = UUID.randomUUID().toString();
        kotlin.jvm.internal.m.d(uuid, "UUID.randomUUID().toString()");
        D = rd.y.D(uuid, "-", "", false, 4, null);
        Locale locale = Locale.US;
        kotlin.jvm.internal.m.d(locale, "Locale.US");
        if (D != null) {
            String lowerCase = D.toLowerCase(locale);
            kotlin.jvm.internal.m.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return lowerCase;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    public final String a() {
        boolean z10;
        boolean z11;
        String D;
        byte[] bArr;
        C1019zb a10 = this.f11121b.a(this.f11120a, new Hb(5, 500));
        kotlin.jvm.internal.m.d(a10, "advertisingIdGetter.getI…sedRetryStrategy(5, 500))");
        C0899ub c10 = a10.c();
        kotlin.jvm.internal.m.d(c10, "advertisingIdGetter.getI…yStrategy(5, 500)).yandex");
        boolean z12 = false;
        if (c10.a()) {
            C0875tb c0875tb = c10.f13685a;
            kotlin.jvm.internal.m.b(c0875tb);
            String str = c0875tb.f13629b;
            kotlin.jvm.internal.m.b(str);
            kotlin.jvm.internal.m.d(str, "yandexAdvId.mAdTrackingInfo!!.advId!!");
            Charset charset = rd.d.f29089b;
            if (str != null) {
                byte[] bytes = str.getBytes(charset);
                kotlin.jvm.internal.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
                try {
                    bArr = MessageDigest.getInstance("MD5").digest(bytes);
                } catch (NoSuchAlgorithmException unused) {
                    bArr = new byte[0];
                }
                String a11 = C0419b.a(bArr);
                kotlin.jvm.internal.m.d(a11, "StringUtils.toHexString(…!.advId!!.toByteArray()))");
                return a11;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        String a12 = this.f11122c.a().a();
        if (a12 != null) {
            if (a12.length() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                try {
                    UUID.fromString(a12);
                    z11 = true;
                } catch (Throwable unused2) {
                    z11 = false;
                }
                if (z11 && (!kotlin.jvm.internal.m.a(a12, "00000000-0000-0000-0000-000000000000"))) {
                    z12 = true;
                }
            }
            if (z12) {
                D = rd.y.D(a12, "-", "", false, 4, null);
                return D;
            }
        }
        return b();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Pl(android.content.Context r4) {
        /*
            r3 = this;
            com.yandex.metrica.impl.ob.F0 r0 = com.yandex.metrica.impl.ob.F0.g()
            java.lang.String r1 = "GlobalServiceLocator.getInstance()"
            kotlin.jvm.internal.m.d(r0, r1)
            com.yandex.metrica.impl.ob.xb r0 = r0.r()
            java.lang.String r2 = "GlobalServiceLocator.get…ternalAdvertisingIdGetter"
            kotlin.jvm.internal.m.d(r0, r2)
            com.yandex.metrica.impl.ob.F0 r2 = com.yandex.metrica.impl.ob.F0.g()
            kotlin.jvm.internal.m.d(r2, r1)
            com.yandex.metrica.impl.ob.Bb r1 = r2.a()
            java.lang.String r2 = "GlobalServiceLocator.getInstance().appSetIdGetter"
            kotlin.jvm.internal.m.d(r1, r2)
            r3.<init>(r4, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Pl.<init>(android.content.Context):void");
    }
}
