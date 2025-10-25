package io.sentry.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.LocaleList;
import android.os.StatFs;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.sentry.android.core.x0;
import io.sentry.j5;
import io.sentry.l0;
import io.sentry.protocol.e;
import io.sentry.s5;
import java.io.File;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes2.dex */
public final class b1 {

    /* renamed from: h  reason: collision with root package name */
    private static volatile b1 f22161h;

    /* renamed from: a  reason: collision with root package name */
    private final Context f22162a;

    /* renamed from: b  reason: collision with root package name */
    private final SentryAndroidOptions f22163b;

    /* renamed from: c  reason: collision with root package name */
    private final p0 f22164c;

    /* renamed from: d  reason: collision with root package name */
    private final Boolean f22165d;

    /* renamed from: e  reason: collision with root package name */
    private final x0.a f22166e;

    /* renamed from: f  reason: collision with root package name */
    private final io.sentry.protocol.l f22167f;

    /* renamed from: g  reason: collision with root package name */
    private final Long f22168g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f22169a;

        static {
            int[] iArr = new int[l0.a.values().length];
            f22169a = iArr;
            try {
                iArr[l0.a.DISCONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22169a[l0.a.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public b1(Context context, SentryAndroidOptions sentryAndroidOptions) {
        this.f22162a = context;
        this.f22163b = sentryAndroidOptions;
        p0 p0Var = new p0(sentryAndroidOptions.getLogger());
        this.f22164c = p0Var;
        io.sentry.android.core.internal.util.f.a().c();
        this.f22167f = t();
        this.f22165d = p0Var.f();
        this.f22166e = x0.E(context, sentryAndroidOptions.getLogger(), p0Var);
        ActivityManager.MemoryInfo p10 = x0.p(context, sentryAndroidOptions.getLogger());
        if (p10 != null) {
            this.f22168g = Long.valueOf(p10.totalMem);
        } else {
            this.f22168g = null;
        }
    }

    private Intent b() {
        return x0.D(this.f22162a, this.f22164c, null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    public static Float c(Intent intent, s5 s5Var) {
        try {
            int intExtra = intent.getIntExtra(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL, -1);
            int intExtra2 = intent.getIntExtra("scale", -1);
            if (intExtra != -1 && intExtra2 != -1) {
                return Float.valueOf((intExtra / intExtra2) * 100.0f);
            }
            return null;
        } catch (Throwable th) {
            s5Var.getLogger().b(j5.ERROR, "Error getting device battery level.", th);
            return null;
        }
    }

    private Float d(Intent intent) {
        try {
            int intExtra = intent.getIntExtra("temperature", -1);
            if (intExtra != -1) {
                return Float.valueOf(intExtra / 10.0f);
            }
            return null;
        } catch (Throwable th) {
            this.f22163b.getLogger().b(j5.ERROR, "Error getting battery temperature.", th);
            return null;
        }
    }

    private Date e() {
        try {
            return io.sentry.j.d(System.currentTimeMillis() - SystemClock.elapsedRealtime());
        } catch (IllegalArgumentException e10) {
            this.f22163b.getLogger().a(j5.ERROR, e10, "Error getting the device's boot time.", new Object[0]);
            return null;
        }
    }

    private String f() {
        try {
            return g1.a(this.f22162a);
        } catch (Throwable th) {
            this.f22163b.getLogger().b(j5.ERROR, "Error getting installationId.", th);
            return null;
        }
    }

    private File g(File file) {
        String str;
        File[] externalFilesDirs = this.f22162a.getExternalFilesDirs(null);
        if (externalFilesDirs != null) {
            if (file != null) {
                str = file.getAbsolutePath();
            } else {
                str = null;
            }
            for (File file2 : externalFilesDirs) {
                if (file2 != null && (str == null || str.isEmpty() || !file2.getAbsolutePath().contains(str))) {
                    return file2;
                }
            }
        } else {
            this.f22163b.getLogger().c(j5.INFO, "Not possible to read getExternalFilesDirs", new Object[0]);
        }
        return null;
    }

    private StatFs h(File file) {
        try {
            File g10 = g(file);
            if (g10 != null) {
                return new StatFs(g10.getPath());
            }
            return null;
        } catch (Throwable unused) {
            this.f22163b.getLogger().c(j5.INFO, "Not possible to read external files directory", new Object[0]);
            return null;
        }
    }

    public static b1 i(Context context, SentryAndroidOptions sentryAndroidOptions) {
        if (f22161h == null) {
            synchronized (b1.class) {
                if (f22161h == null) {
                    f22161h = new b1(x0.h(context), sentryAndroidOptions);
                }
            }
        }
        return f22161h;
    }

    private e.b k() {
        e.b bVar;
        Throwable th;
        try {
            bVar = io.sentry.android.core.internal.util.h.a(this.f22162a.getResources().getConfiguration().orientation);
            if (bVar == null) {
                try {
                    this.f22163b.getLogger().c(j5.INFO, "No device orientation available (ORIENTATION_SQUARE|ORIENTATION_UNDEFINED)", new Object[0]);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    this.f22163b.getLogger().b(j5.ERROR, "Error getting device orientation.", th);
                    return bVar;
                }
            }
        } catch (Throwable th3) {
            bVar = null;
            th = th3;
        }
        return bVar;
    }

    private TimeZone m() {
        if (this.f22164c.d() >= 24) {
            LocaleList locales = this.f22162a.getResources().getConfiguration().getLocales();
            if (!locales.isEmpty()) {
                return Calendar.getInstance(locales.get(0)).getTimeZone();
            }
        }
        return Calendar.getInstance().getTimeZone();
    }

    private Long n(StatFs statFs) {
        try {
            return Long.valueOf(statFs.getBlockCountLong() * statFs.getBlockSizeLong());
        } catch (Throwable th) {
            this.f22163b.getLogger().b(j5.ERROR, "Error getting total external storage amount.", th);
            return null;
        }
    }

    private Long o(StatFs statFs) {
        try {
            return Long.valueOf(statFs.getBlockCountLong() * statFs.getBlockSizeLong());
        } catch (Throwable th) {
            this.f22163b.getLogger().b(j5.ERROR, "Error getting total internal storage amount.", th);
            return null;
        }
    }

    private Long q(StatFs statFs) {
        try {
            return Long.valueOf(statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong());
        } catch (Throwable th) {
            this.f22163b.getLogger().b(j5.ERROR, "Error getting unused external storage amount.", th);
            return null;
        }
    }

    private Long r(StatFs statFs) {
        try {
            return Long.valueOf(statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong());
        } catch (Throwable th) {
            this.f22163b.getLogger().b(j5.ERROR, "Error getting unused internal storage amount.", th);
            return null;
        }
    }

    public static Boolean s(Intent intent, s5 s5Var) {
        try {
            int intExtra = intent.getIntExtra("plugged", -1);
            boolean z10 = true;
            if (intExtra != 1 && intExtra != 2) {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        } catch (Throwable th) {
            s5Var.getLogger().b(j5.ERROR, "Error getting device charging state.", th);
            return null;
        }
    }

    private io.sentry.protocol.l t() {
        io.sentry.protocol.l lVar = new io.sentry.protocol.l();
        lVar.j("Android");
        lVar.m(Build.VERSION.RELEASE);
        lVar.h(Build.DISPLAY);
        String o10 = x0.o(this.f22163b.getLogger());
        if (o10 != null) {
            lVar.i(o10);
        }
        if (this.f22163b.isEnableRootCheck()) {
            lVar.k(Boolean.valueOf(new io.sentry.android.core.internal.util.m(this.f22162a, this.f22164c, this.f22163b.getLogger()).e()));
        }
        return lVar;
    }

    private void u(io.sentry.protocol.e eVar, boolean z10) {
        Boolean bool;
        Intent b10 = b();
        if (b10 != null) {
            eVar.N(c(b10, this.f22163b));
            eVar.R(s(b10, this.f22163b));
            eVar.O(d(b10));
        }
        int i10 = a.f22169a[this.f22163b.getConnectionStatusProvider().b().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                bool = null;
            } else {
                bool = Boolean.TRUE;
            }
        } else {
            bool = Boolean.FALSE;
        }
        eVar.h0(bool);
        ActivityManager.MemoryInfo p10 = x0.p(this.f22162a, this.f22163b.getLogger());
        if (p10 != null && z10) {
            eVar.W(Long.valueOf(p10.availMem));
            eVar.b0(Boolean.valueOf(p10.lowMemory));
        }
        File externalFilesDir = this.f22162a.getExternalFilesDir(null);
        if (externalFilesDir != null) {
            StatFs statFs = new StatFs(externalFilesDir.getPath());
            eVar.q0(o(statFs));
            eVar.X(r(statFs));
        }
        StatFs h10 = h(externalFilesDir);
        if (h10 != null) {
            eVar.U(n(h10));
            eVar.T(q(h10));
        }
        if (eVar.I() == null) {
            eVar.S(this.f22163b.getConnectionStatusProvider().a());
        }
    }

    public io.sentry.protocol.e a(boolean z10, boolean z11) {
        io.sentry.protocol.e eVar = new io.sentry.protocol.e();
        if (this.f22163b.isSendDefaultPii()) {
            eVar.g0(x0.l(this.f22162a));
        }
        eVar.c0(Build.MANUFACTURER);
        eVar.Q(Build.BRAND);
        eVar.V(x0.n(this.f22163b.getLogger()));
        eVar.e0(Build.MODEL);
        eVar.f0(Build.ID);
        eVar.M(x0.k(this.f22164c));
        eVar.i0(k());
        Boolean bool = this.f22165d;
        if (bool != null) {
            eVar.p0(bool);
        }
        DisplayMetrics m10 = x0.m(this.f22162a, this.f22163b.getLogger());
        if (m10 != null) {
            eVar.o0(Integer.valueOf(m10.widthPixels));
            eVar.n0(Integer.valueOf(m10.heightPixels));
            eVar.l0(Float.valueOf(m10.density));
            eVar.m0(Integer.valueOf(m10.densityDpi));
        }
        eVar.P(e());
        eVar.r0(m());
        if (eVar.J() == null) {
            eVar.Y(f());
        }
        Locale locale = Locale.getDefault();
        if (eVar.K() == null) {
            eVar.Z(locale.getLanguage());
        }
        if (eVar.L() == null) {
            eVar.a0(locale.toString());
        }
        List c10 = io.sentry.android.core.internal.util.f.a().c();
        if (!c10.isEmpty()) {
            eVar.k0(Double.valueOf(((Integer) Collections.max(c10)).doubleValue()));
            eVar.j0(Integer.valueOf(c10.size()));
        }
        eVar.d0(this.f22168g);
        if (z10 && this.f22163b.isCollectAdditionalContext()) {
            u(eVar, z11);
        }
        return eVar;
    }

    public io.sentry.protocol.l j() {
        return this.f22167f;
    }

    public x0.a l() {
        return this.f22166e;
    }

    public Long p() {
        return this.f22168g;
    }
}
