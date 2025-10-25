package io.sentry.android.core;

import android.os.SystemClock;
import android.system.Os;
import android.system.OsConstants;
import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.r2;
import java.io.File;
import java.io.IOException;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class s implements io.sentry.t0 {

    /* renamed from: h  reason: collision with root package name */
    private final ILogger f22476h;

    /* renamed from: i  reason: collision with root package name */
    private final p0 f22477i;

    /* renamed from: a  reason: collision with root package name */
    private long f22469a = 0;

    /* renamed from: b  reason: collision with root package name */
    private long f22470b = 0;

    /* renamed from: c  reason: collision with root package name */
    private long f22471c = 1;

    /* renamed from: d  reason: collision with root package name */
    private long f22472d = 1;

    /* renamed from: e  reason: collision with root package name */
    private final long f22473e = 1000000000;

    /* renamed from: f  reason: collision with root package name */
    private double f22474f = 1.0E9d / 1;

    /* renamed from: g  reason: collision with root package name */
    private final File f22475g = new File("/proc/self/stat");

    /* renamed from: j  reason: collision with root package name */
    private boolean f22478j = false;

    /* renamed from: k  reason: collision with root package name */
    private final Pattern f22479k = Pattern.compile("[\n\t\r ]");

    public s(ILogger iLogger, p0 p0Var) {
        this.f22476h = (ILogger) io.sentry.util.q.c(iLogger, "Logger is required.");
        this.f22477i = (p0) io.sentry.util.q.c(p0Var, "BuildInfoProvider is required.");
    }

    private long d() {
        String str;
        try {
            str = io.sentry.util.e.c(this.f22475g);
        } catch (IOException e10) {
            this.f22478j = false;
            this.f22476h.b(j5.WARNING, "Unable to read /proc/self/stat file. Disabling cpu collection.", e10);
            str = null;
        }
        if (str != null) {
            String[] split = this.f22479k.split(str.trim());
            try {
                long parseLong = Long.parseLong(split[13]);
                long parseLong2 = Long.parseLong(split[14]);
                return (long) ((parseLong + parseLong2 + Long.parseLong(split[15]) + Long.parseLong(split[16])) * this.f22474f);
            } catch (ArrayIndexOutOfBoundsException | NumberFormatException e11) {
                this.f22476h.b(j5.ERROR, "Error parsing /proc/self/stat file.", e11);
            }
        }
        return 0L;
    }

    @Override // io.sentry.t0
    public void c(r2 r2Var) {
        if (this.f22477i.d() >= 21 && this.f22478j) {
            long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            long j10 = elapsedRealtimeNanos - this.f22469a;
            this.f22469a = elapsedRealtimeNanos;
            long d10 = d();
            this.f22470b = d10;
            r2Var.a(new io.sentry.g(System.currentTimeMillis(), (((d10 - this.f22470b) / j10) / this.f22472d) * 100.0d));
        }
    }

    @Override // io.sentry.t0
    public void e() {
        if (this.f22477i.d() < 21) {
            this.f22478j = false;
            return;
        }
        this.f22478j = true;
        this.f22471c = Os.sysconf(OsConstants._SC_CLK_TCK);
        this.f22472d = Os.sysconf(OsConstants._SC_NPROCESSORS_CONF);
        this.f22474f = 1.0E9d / this.f22471c;
        this.f22470b = d();
    }
}
