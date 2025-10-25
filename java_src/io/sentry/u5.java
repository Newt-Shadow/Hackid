package io.sentry;

import java.util.Locale;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes2.dex */
public final class u5 {

    /* renamed from: a  reason: collision with root package name */
    private Double f23774a;

    /* renamed from: b  reason: collision with root package name */
    private Double f23775b;

    /* renamed from: c  reason: collision with root package name */
    private Set f23776c = new CopyOnWriteArraySet();

    /* renamed from: d  reason: collision with root package name */
    private Set f23777d = new CopyOnWriteArraySet();

    /* renamed from: e  reason: collision with root package name */
    private String f23778e = null;

    /* renamed from: f  reason: collision with root package name */
    private String f23779f = null;

    /* renamed from: g  reason: collision with root package name */
    private a f23780g = a.MEDIUM;

    /* renamed from: h  reason: collision with root package name */
    private int f23781h = 1;

    /* renamed from: i  reason: collision with root package name */
    private long f23782i = 30000;

    /* renamed from: j  reason: collision with root package name */
    private long f23783j = 5000;

    /* renamed from: k  reason: collision with root package name */
    private long f23784k = 3600000;

    /* renamed from: l  reason: collision with root package name */
    private boolean f23785l = true;

    /* renamed from: m  reason: collision with root package name */
    private io.sentry.protocol.p f23786m;

    /* loaded from: classes2.dex */
    public enum a {
        LOW(0.8f, 50000, 10),
        MEDIUM(1.0f, 75000, 30),
        HIGH(1.0f, 100000, 50);
        
        public final int bitRate;
        public final int screenshotQuality;
        public final float sizeScale;

        a(float f10, int i10, int i11) {
            this.sizeScale = f10;
            this.bitRate = i10;
            this.screenshotQuality = i11;
        }

        public String serializedName() {
            return name().toLowerCase(Locale.ROOT);
        }
    }

    public u5(boolean z10, io.sentry.protocol.p pVar) {
        if (!z10) {
            s(true);
            r(true);
            this.f23776c.add("android.webkit.WebView");
            this.f23776c.add("android.widget.VideoView");
            this.f23776c.add("androidx.media3.ui.PlayerView");
            this.f23776c.add("com.google.android.exoplayer2.ui.PlayerView");
            this.f23776c.add("com.google.android.exoplayer2.ui.StyledPlayerView");
            this.f23786m = pVar;
        }
    }

    public void a(String str) {
        this.f23776c.add(str);
    }

    public void b(String str) {
        this.f23777d.add(str);
    }

    public long c() {
        return this.f23782i;
    }

    public int d() {
        return this.f23781h;
    }

    public Set e() {
        return this.f23776c;
    }

    public String f() {
        return this.f23778e;
    }

    public Double g() {
        return this.f23775b;
    }

    public a h() {
        return this.f23780g;
    }

    public io.sentry.protocol.p i() {
        return this.f23786m;
    }

    public long j() {
        return this.f23784k;
    }

    public Double k() {
        return this.f23774a;
    }

    public long l() {
        return this.f23783j;
    }

    public Set m() {
        return this.f23777d;
    }

    public String n() {
        return this.f23779f;
    }

    public boolean o() {
        if (k() != null && k().doubleValue() > 0.0d) {
            return true;
        }
        return false;
    }

    public boolean p() {
        if (g() != null && g().doubleValue() > 0.0d) {
            return true;
        }
        return false;
    }

    public boolean q() {
        return this.f23785l;
    }

    public void r(boolean z10) {
        if (z10) {
            a("android.widget.ImageView");
            this.f23777d.remove("android.widget.ImageView");
            return;
        }
        b("android.widget.ImageView");
        this.f23776c.remove("android.widget.ImageView");
    }

    public void s(boolean z10) {
        if (z10) {
            a("android.widget.TextView");
            this.f23777d.remove("android.widget.TextView");
            return;
        }
        b("android.widget.TextView");
        this.f23776c.remove("android.widget.TextView");
    }

    public void t(Double d10) {
        if (io.sentry.util.u.c(d10)) {
            this.f23775b = d10;
            return;
        }
        throw new IllegalArgumentException("The value " + d10 + " is not valid. Use null to disable or values >= 0.0 and <= 1.0.");
    }

    public void u(a aVar) {
        this.f23780g = aVar;
    }

    public void v(io.sentry.protocol.p pVar) {
        this.f23786m = pVar;
    }

    public void w(Double d10) {
        if (io.sentry.util.u.c(d10)) {
            this.f23774a = d10;
            return;
        }
        throw new IllegalArgumentException("The value " + d10 + " is not valid. Use null to disable or values >= 0.0 and <= 1.0.");
    }

    public void x(boolean z10) {
        this.f23785l = z10;
    }
}
