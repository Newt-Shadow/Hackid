package io.sentry.android.core.performance;

import android.os.SystemClock;
import io.sentry.j;
import io.sentry.l5;
import io.sentry.y3;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class h implements Comparable {

    /* renamed from: a  reason: collision with root package name */
    private String f22457a;

    /* renamed from: b  reason: collision with root package name */
    private long f22458b;

    /* renamed from: c  reason: collision with root package name */
    private long f22459c;

    /* renamed from: d  reason: collision with root package name */
    private long f22460d;

    /* renamed from: e  reason: collision with root package name */
    private long f22461e;

    public void A() {
        this.f22461e = SystemClock.uptimeMillis();
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(h hVar) {
        return Long.compare(this.f22459c, hVar.f22459c);
    }

    public String b() {
        return this.f22457a;
    }

    public long f() {
        if (t()) {
            return this.f22461e - this.f22460d;
        }
        return 0L;
    }

    public y3 i() {
        if (t()) {
            return new l5(j.h(j()));
        }
        return null;
    }

    public long j() {
        if (s()) {
            return this.f22459c + f();
        }
        return 0L;
    }

    public double l() {
        return j.i(j());
    }

    public y3 m() {
        if (s()) {
            return new l5(j.h(n()));
        }
        return null;
    }

    public long n() {
        return this.f22459c;
    }

    public double o() {
        return j.i(this.f22459c);
    }

    public long p() {
        return this.f22460d;
    }

    public boolean q() {
        if (this.f22460d == 0) {
            return true;
        }
        return false;
    }

    public boolean r() {
        if (this.f22461e == 0) {
            return true;
        }
        return false;
    }

    public boolean s() {
        if (this.f22460d != 0) {
            return true;
        }
        return false;
    }

    public boolean t() {
        if (this.f22461e != 0) {
            return true;
        }
        return false;
    }

    public void u() {
        this.f22457a = null;
        this.f22460d = 0L;
        this.f22461e = 0L;
        this.f22459c = 0L;
        this.f22458b = 0L;
    }

    public void v(String str) {
        this.f22457a = str;
    }

    public void w(long j10) {
        this.f22459c = j10;
    }

    public void x(long j10) {
        this.f22460d = j10;
        long uptimeMillis = SystemClock.uptimeMillis() - this.f22460d;
        this.f22459c = System.currentTimeMillis() - uptimeMillis;
        this.f22458b = System.nanoTime() - TimeUnit.MILLISECONDS.toNanos(uptimeMillis);
    }

    public void y(long j10) {
        this.f22461e = j10;
    }

    public void z() {
        this.f22460d = SystemClock.uptimeMillis();
        this.f22459c = System.currentTimeMillis();
        this.f22458b = System.nanoTime();
    }
}
