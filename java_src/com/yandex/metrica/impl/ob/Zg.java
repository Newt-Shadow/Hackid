package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.File;
/* loaded from: classes2.dex */
public class Zg {

    /* renamed from: a  reason: collision with root package name */
    private final B0 f11887a;

    /* loaded from: classes2.dex */
    class a implements ec.i {
        a() {
        }

        public File getCrashesDirectory(Context context) {
            return Zg.this.f11887a.a(context, "appmetrica_rtm_crashes");
        }

        public File getCrashesTriggerDirectory(Context context) {
            return Zg.this.f11887a.a(context, "appmetrica_rtm_crashes_triggers");
        }
    }

    /* loaded from: classes2.dex */
    class b implements ec.j {
        b(Zg zg) {
        }

        public String getDeviceType(Context context) {
            com.yandex.metrica.c a10 = F0.g().n().a().a();
            if (a10 == null) {
                return null;
            }
            return a10.b();
        }

        public String getVersion(Context context) {
            return A2.a(context, context.getPackageName());
        }
    }

    /* loaded from: classes2.dex */
    class c implements ec.i {
        c() {
        }

        public File getCrashesDirectory(Context context) {
            return Zg.this.f11887a.a(context, "appmetrica_rtm_crashes");
        }

        public File getCrashesTriggerDirectory(Context context) {
            return Zg.this.f11887a.a(context, "appmetrica_rtm_crashes_triggers");
        }
    }

    public Zg() {
        this(new B0());
    }

    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ec.f b(android.content.Context r5) {
        /*
            r4 = this;
            java.lang.String r0 = "com.yandex.metrica.rtm.client.ExceptionProcessor"
            boolean r0 = com.yandex.metrica.impl.ob.C0572h2.a(r0)
            if (r0 == 0) goto L24
            ec.l r0 = new ec.l     // Catch: java.lang.Throwable -> L24
            com.yandex.metrica.impl.ob.Zg$a r1 = new com.yandex.metrica.impl.ob.Zg$a     // Catch: java.lang.Throwable -> L24
            r1.<init>()     // Catch: java.lang.Throwable -> L24
            com.yandex.metrica.impl.ob.F0 r2 = com.yandex.metrica.impl.ob.F0.g()     // Catch: java.lang.Throwable -> L24
            com.yandex.metrica.impl.ob.Pm r2 = r2.q()     // Catch: java.lang.Throwable -> L24
            com.yandex.metrica.core.api.executors.ICommonExecutor r2 = r2.f()     // Catch: java.lang.Throwable -> L24
            com.yandex.metrica.impl.ob.Zg$b r3 = new com.yandex.metrica.impl.ob.Zg$b     // Catch: java.lang.Throwable -> L24
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L24
            r0.<init>(r1, r5, r2, r3)     // Catch: java.lang.Throwable -> L24
            goto L25
        L24:
            r0 = 0
        L25:
            if (r0 != 0) goto L2c
            com.yandex.metrica.impl.ob.Wg r0 = new com.yandex.metrica.impl.ob.Wg
            r0.<init>()
        L2c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Zg.b(android.content.Context):ec.f");
    }

    Zg(B0 b02) {
        this.f11887a = b02;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ec.e a(android.content.Context r3) {
        /*
            r2 = this;
            java.lang.String r0 = "com.yandex.metrica.rtm.client.ExceptionProcessor"
            boolean r0 = com.yandex.metrica.impl.ob.C0572h2.a(r0)
            if (r0 == 0) goto L13
            ec.h r0 = new ec.h     // Catch: java.lang.Throwable -> L13
            com.yandex.metrica.impl.ob.Zg$c r1 = new com.yandex.metrica.impl.ob.Zg$c     // Catch: java.lang.Throwable -> L13
            r1.<init>()     // Catch: java.lang.Throwable -> L13
            r0.<init>(r1, r3)     // Catch: java.lang.Throwable -> L13
            goto L14
        L13:
            r0 = 0
        L14:
            if (r0 != 0) goto L1b
            com.yandex.metrica.impl.ob.Vg r0 = new com.yandex.metrica.impl.ob.Vg
            r0.<init>()
        L1b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Zg.a(android.content.Context):ec.e");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ec.d a(ec.k r2, java.lang.String r3, boolean r4) {
        /*
            r1 = this;
            java.lang.String r0 = "com.yandex.metrica.rtm.client.ExceptionProcessor"
            boolean r0 = com.yandex.metrica.impl.ob.C0572h2.a(r0)
            if (r0 == 0) goto Le
            ec.g r0 = new ec.g     // Catch: java.lang.Throwable -> Le
            r0.<init>(r2, r3, r4)     // Catch: java.lang.Throwable -> Le
            goto Lf
        Le:
            r0 = 0
        Lf:
            if (r0 != 0) goto L16
            com.yandex.metrica.impl.ob.Ug r0 = new com.yandex.metrica.impl.ob.Ug
            r0.<init>()
        L16:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Zg.a(ec.k, java.lang.String, boolean):ec.d");
    }
}
