package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class Nl {

    /* renamed from: a  reason: collision with root package name */
    public static final Set f18655a;

    /* renamed from: b  reason: collision with root package name */
    public static final SystemTimeProvider f18656b;

    /* renamed from: c  reason: collision with root package name */
    public static final U3 f18657c;

    static {
        Set d10;
        d10 = yc.m0.d("appmetrica_clids", "appmetrica_device_id_hash", StartupParamsCallback.APPMETRICA_DEVICE_ID, "appmetrica_get_ad_url", "appmetrica_report_ad_url", StartupParamsCallback.APPMETRICA_UUID);
        f18655a = d10;
        f18656b = new SystemTimeProvider();
        f18657c = new U3();
    }

    public static final boolean a(String str) {
        return !(str == null || str.length() == 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0017 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean a(io.appmetrica.analytics.impl.Ql r5, java.util.Collection r6, java.util.Map r7, id.a r8) {
        /*
            r0 = 1
            if (r6 == 0) goto Laf
            boolean r1 = r6.isEmpty()
            if (r1 == 0) goto Lb
            goto Laf
        Lb:
            boolean r1 = r6.isEmpty()
            if (r1 == 0) goto L13
            goto Laf
        L13:
            java.util.Iterator r6 = r6.iterator()
        L17:
            boolean r1 = r6.hasNext()
            if (r1 == 0) goto Laf
            java.lang.Object r1 = r6.next()
            java.lang.String r1 = (java.lang.String) r1
            int r2 = r1.hashCode()
            switch(r2) {
                case -1367801046: goto L86;
                case 155670667: goto L76;
                case 299713912: goto L66;
                case 530949152: goto L4d;
                case 703740463: goto L3d;
                case 1117383061: goto L2c;
                default: goto L2a;
            }
        L2a:
            goto L98
        L2c:
            java.lang.String r2 = "appmetrica_device_id"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L36
            goto L98
        L36:
            java.lang.String r1 = r5.f18828a
            boolean r1 = a(r1)
            goto L95
        L3d:
            java.lang.String r2 = "appmetrica_report_ad_url"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L46
            goto L98
        L46:
            java.lang.String r1 = r5.f18837j
            boolean r1 = a(r1)
            goto L95
        L4d:
            java.lang.String r2 = "appmetrica_clids"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L56
            goto L98
        L56:
            io.appmetrica.analytics.impl.U3 r1 = io.appmetrica.analytics.impl.Nl.f18657c
            java.lang.Object r2 = r8.invoke()
            io.appmetrica.analytics.impl.R3 r2 = (io.appmetrica.analytics.impl.R3) r2
            r1.getClass()
            boolean r1 = io.appmetrica.analytics.impl.U3.a(r7, r5, r2)
            goto L95
        L66:
            java.lang.String r2 = "appmetrica_device_id_hash"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L6f
            goto L98
        L6f:
            java.lang.String r1 = r5.f18829b
            boolean r1 = a(r1)
            goto L95
        L76:
            java.lang.String r2 = "appmetrica_get_ad_url"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L7f
            goto L98
        L7f:
            java.lang.String r1 = r5.f18836i
            boolean r1 = a(r1)
            goto L95
        L86:
            java.lang.String r2 = "appmetrica_uuid"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L8f
            goto L98
        L8f:
            java.lang.String r1 = r5.f18831d
            boolean r1 = a(r1)
        L95:
            if (r1 != 0) goto L17
            goto Lae
        L98:
            boolean r1 = r5.f18850w
            if (r1 != 0) goto Lae
            long r1 = r5.f18842o
            io.appmetrica.analytics.impl.om r3 = r5.A
            int r3 = r3.f20316a
            long r3 = (long) r3
            long r1 = r1 + r3
            io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider r3 = io.appmetrica.analytics.impl.Nl.f18656b
            long r3 = r3.currentTimeSeconds()
            int r1 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r1 <= 0) goto L17
        Lae:
            r0 = 0
        Laf:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.Nl.a(io.appmetrica.analytics.impl.Ql, java.util.Collection, java.util.Map, id.a):boolean");
    }
}
