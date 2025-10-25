package io.sentry.android.core;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.sentry.ILogger;
import io.sentry.a4;
import io.sentry.e3;
import io.sentry.f6;
import io.sentry.j5;
import io.sentry.s5;
import io.sentry.x4;
import io.sentry.z4;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public abstract class k1 {
    public static io.sentry.protocol.r d(byte[] bArr, boolean z10) {
        io.sentry.k0 h10 = io.sentry.k0.h();
        s5 B = h10.B();
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            io.sentry.y0 serializer = B.getSerializer();
            a4 a10 = B.getEnvelopeReader().a(byteArrayInputStream);
            if (a10 == null) {
                byteArrayInputStream.close();
                return null;
            }
            ArrayList arrayList = new ArrayList();
            boolean z11 = false;
            f6.b bVar = null;
            boolean z12 = false;
            for (x4 x4Var : a10.c()) {
                arrayList.add(x4Var);
                z4 F = x4Var.F(serializer);
                if (F != null) {
                    if (F.x0()) {
                        bVar = f6.b.Crashed;
                    }
                    if (F.x0() || F.y0()) {
                        z12 = true;
                    }
                }
            }
            f6 l10 = l(h10, B, bVar, z12);
            if (l10 != null) {
                arrayList.add(x4.C(serializer, l10));
                f(B, (z10 && h10.B().getMainThreadChecker().a()) ? true : true);
                if (z10) {
                    h10.f();
                }
            }
            io.sentry.protocol.r v10 = h10.v(new a4(a10.b(), arrayList));
            byteArrayInputStream.close();
            return v10;
        } catch (Throwable th) {
            B.getLogger().b(j5.ERROR, "Failed to capture envelope", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(s5 s5Var) {
        String cacheDirPath = s5Var.getCacheDirPath();
        if (cacheDirPath == null) {
            s5Var.getLogger().c(j5.INFO, "Cache dir is not set, not deleting the current session.", new Object[0]);
        } else if (!s5Var.isEnableAutoSessionTracking()) {
            s5Var.getLogger().c(j5.DEBUG, "Session tracking is disabled, bailing from deleting current session file.", new Object[0]);
        } else if (!io.sentry.cache.f.K(cacheDirPath).delete()) {
            s5Var.getLogger().c(j5.WARNING, "Failed to delete the current session file.", new Object[0]);
        }
    }

    private static void f(final s5 s5Var, boolean z10) {
        if (!z10) {
            try {
                s5Var.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.core.h1
                    @Override // java.lang.Runnable
                    public final void run() {
                        k1.e(s5.this);
                    }
                });
                return;
            } catch (Throwable th) {
                s5Var.getLogger().b(j5.WARNING, "Submission of deletion of the current session file rejected.", th);
                return;
            }
        }
        e(s5Var);
    }

    public static io.sentry.u0 g() {
        final AtomicReference atomicReference = new AtomicReference();
        io.sentry.k0.h().y(new e3() { // from class: io.sentry.android.core.j1
            @Override // io.sentry.e3
            public final void a(io.sentry.u0 u0Var) {
                k1.i(atomicReference, u0Var);
            }
        });
        return (io.sentry.u0) atomicReference.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(AtomicReference atomicReference, io.sentry.u0 u0Var) {
        atomicReference.set(u0Var.r());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j(f6.b bVar, boolean z10, AtomicReference atomicReference, s5 s5Var, io.sentry.u0 u0Var) {
        f6 k10 = u0Var.k();
        if (k10 != null) {
            if (k10.q(bVar, null, z10, null)) {
                if (k10.l() == f6.b.Crashed) {
                    k10.c();
                    u0Var.A();
                }
                atomicReference.set(k10);
                return;
            }
            return;
        }
        s5Var.getLogger().c(j5.INFO, "Session is null on updateSession", new Object[0]);
    }

    public static Map k(Context context, SentryAndroidOptions sentryAndroidOptions, io.sentry.u0 u0Var) {
        HashMap hashMap = new HashMap();
        if (u0Var == null) {
            return hashMap;
        }
        try {
            ILogger logger = sentryAndroidOptions.getLogger();
            io.sentry.util.p pVar = new io.sentry.util.p(hashMap);
            b1 i10 = b1.i(context, sentryAndroidOptions);
            u0Var.y().i(i10.a(true, true));
            u0Var.y().k(i10.j());
            io.sentry.protocol.b0 G = u0Var.G();
            if (G == null) {
                G = new io.sentry.protocol.b0();
                u0Var.n(G);
            }
            if (G.m() == null) {
                try {
                    G.q(g1.a(context));
                } catch (RuntimeException e10) {
                    logger.b(j5.ERROR, "Could not retrieve installation ID", e10);
                }
            }
            io.sentry.protocol.a a10 = u0Var.y().a();
            if (a10 == null) {
                a10 = new io.sentry.protocol.a();
            }
            a10.n(x0.j(context));
            io.sentry.android.core.performance.h k10 = io.sentry.android.core.performance.g.p().k(sentryAndroidOptions);
            if (k10.s()) {
                a10.o(io.sentry.j.n(k10.m()));
            }
            p0 p0Var = new p0(sentryAndroidOptions.getLogger());
            PackageInfo q10 = x0.q(context, Base64Utils.IO_BUFFER_SIZE, sentryAndroidOptions.getLogger(), p0Var);
            if (q10 != null) {
                x0.F(q10, p0Var, a10);
            }
            u0Var.y().g(a10);
            pVar.k("user").g(logger, u0Var.G());
            pVar.k("contexts").g(logger, u0Var.y());
            pVar.k("tags").g(logger, u0Var.w());
            pVar.k("extras").g(logger, u0Var.getExtras());
            pVar.k("fingerprint").g(logger, u0Var.F());
            pVar.k(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL).g(logger, u0Var.m());
            pVar.k("breadcrumbs").g(logger, u0Var.l());
            return hashMap;
        } catch (Throwable th) {
            sentryAndroidOptions.getLogger().b(j5.ERROR, "Could not serialize scope.", th);
            return new HashMap();
        }
    }

    private static f6 l(io.sentry.o0 o0Var, final s5 s5Var, final f6.b bVar, final boolean z10) {
        final AtomicReference atomicReference = new AtomicReference();
        o0Var.y(new e3() { // from class: io.sentry.android.core.i1
            @Override // io.sentry.e3
            public final void a(io.sentry.u0 u0Var) {
                k1.j(f6.b.this, z10, atomicReference, s5Var, u0Var);
            }
        });
        return (f6) atomicReference.get();
    }
}
