package io.sentry.rrweb;

import io.sentry.ILogger;
import io.sentry.m2;
import io.sentry.protocol.p;
import io.sentry.q1;
import io.sentry.rrweb.b;
import io.sentry.s5;
import io.sentry.u5;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class h extends b implements q1 {

    /* renamed from: c  reason: collision with root package name */
    private String f23603c;

    /* renamed from: d  reason: collision with root package name */
    private Map f23604d;

    /* renamed from: e  reason: collision with root package name */
    private Map f23605e;

    /* renamed from: f  reason: collision with root package name */
    private Map f23606f;

    public h() {
        super(c.Custom);
        this.f23604d = new HashMap();
        this.f23603c = "options";
    }

    private void h(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("tag").c(this.f23603c);
        m2Var.k("payload");
        i(m2Var, iLogger);
        Map map = this.f23606f;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23606f.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    private void i(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        Map map = this.f23604d;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23604d.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public Map g() {
        return this.f23604d;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        new b.C0211b().a(this, m2Var, iLogger);
        m2Var.k("data");
        h(m2Var, iLogger);
        Map map = this.f23605e;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23605e.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public h(s5 s5Var) {
        this();
        p sdkVersion = s5Var.getSdkVersion();
        if (sdkVersion != null) {
            this.f23604d.put("nativeSdkName", sdkVersion.f());
            this.f23604d.put("nativeSdkVersion", sdkVersion.h());
        }
        u5 sessionReplay = s5Var.getSessionReplay();
        this.f23604d.put("errorSampleRate", sessionReplay.g());
        this.f23604d.put("sessionSampleRate", sessionReplay.k());
        this.f23604d.put("maskAllImages", Boolean.valueOf(sessionReplay.e().contains("android.widget.ImageView")));
        this.f23604d.put("maskAllText", Boolean.valueOf(sessionReplay.e().contains("android.widget.TextView")));
        this.f23604d.put("quality", sessionReplay.h().serializedName());
        this.f23604d.put("maskedViewClasses", sessionReplay.e());
        this.f23604d.put("unmaskedViewClasses", sessionReplay.m());
    }
}
