package io.sentry.protocol;

import com.arthenica.ffmpegkit.StreamInformation;
import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class d0 implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23346a;

    /* renamed from: b  reason: collision with root package name */
    private String f23347b;

    /* renamed from: c  reason: collision with root package name */
    private String f23348c;

    /* renamed from: d  reason: collision with root package name */
    private String f23349d;

    /* renamed from: e  reason: collision with root package name */
    private Double f23350e;

    /* renamed from: f  reason: collision with root package name */
    private Double f23351f;

    /* renamed from: g  reason: collision with root package name */
    private Double f23352g;

    /* renamed from: h  reason: collision with root package name */
    private Double f23353h;

    /* renamed from: i  reason: collision with root package name */
    private String f23354i;

    /* renamed from: j  reason: collision with root package name */
    private Double f23355j;

    /* renamed from: k  reason: collision with root package name */
    private List f23356k;

    /* renamed from: l  reason: collision with root package name */
    private Map f23357l;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public d0 a(l2 l2Var, ILogger iLogger) {
            d0 d0Var = new d0();
            l2Var.t();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1784982718:
                        if (f02.equals("rendering_system")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1618432855:
                        if (f02.equals(Constants.IDENTIFIER)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1221029593:
                        if (f02.equals(StreamInformation.KEY_HEIGHT)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 120:
                        if (f02.equals("x")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 121:
                        if (f02.equals("y")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 114586:
                        if (f02.equals("tag")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 3575610:
                        if (f02.equals("type")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 92909918:
                        if (f02.equals("alpha")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 113126854:
                        if (f02.equals(StreamInformation.KEY_WIDTH)) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case 1659526655:
                        if (f02.equals("children")) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case 1941332754:
                        if (f02.equals("visibility")) {
                            c10 = '\n';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        d0Var.f23346a = l2Var.T();
                        break;
                    case 1:
                        d0Var.f23348c = l2Var.T();
                        break;
                    case 2:
                        d0Var.f23351f = l2Var.e0();
                        break;
                    case 3:
                        d0Var.f23352g = l2Var.e0();
                        break;
                    case 4:
                        d0Var.f23353h = l2Var.e0();
                        break;
                    case 5:
                        d0Var.f23349d = l2Var.T();
                        break;
                    case 6:
                        d0Var.f23347b = l2Var.T();
                        break;
                    case 7:
                        d0Var.f23355j = l2Var.e0();
                        break;
                    case '\b':
                        d0Var.f23350e = l2Var.e0();
                        break;
                    case '\t':
                        d0Var.f23356k = l2Var.M0(iLogger, this);
                        break;
                    case '\n':
                        d0Var.f23354i = l2Var.T();
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                        break;
                }
            }
            l2Var.r();
            d0Var.q(hashMap);
            return d0Var;
        }
    }

    public void l(Double d10) {
        this.f23355j = d10;
    }

    public void m(List list) {
        this.f23356k = list;
    }

    public void n(Double d10) {
        this.f23351f = d10;
    }

    public void o(String str) {
        this.f23348c = str;
    }

    public void p(String str) {
        this.f23347b = str;
    }

    public void q(Map map) {
        this.f23357l = map;
    }

    public void r(String str) {
        this.f23354i = str;
    }

    public void s(Double d10) {
        this.f23350e = d10;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23346a != null) {
            m2Var.k("rendering_system").c(this.f23346a);
        }
        if (this.f23347b != null) {
            m2Var.k("type").c(this.f23347b);
        }
        if (this.f23348c != null) {
            m2Var.k(Constants.IDENTIFIER).c(this.f23348c);
        }
        if (this.f23349d != null) {
            m2Var.k("tag").c(this.f23349d);
        }
        if (this.f23350e != null) {
            m2Var.k(StreamInformation.KEY_WIDTH).f(this.f23350e);
        }
        if (this.f23351f != null) {
            m2Var.k(StreamInformation.KEY_HEIGHT).f(this.f23351f);
        }
        if (this.f23352g != null) {
            m2Var.k("x").f(this.f23352g);
        }
        if (this.f23353h != null) {
            m2Var.k("y").f(this.f23353h);
        }
        if (this.f23354i != null) {
            m2Var.k("visibility").c(this.f23354i);
        }
        if (this.f23355j != null) {
            m2Var.k("alpha").f(this.f23355j);
        }
        List list = this.f23356k;
        if (list != null && !list.isEmpty()) {
            m2Var.k("children").g(iLogger, this.f23356k);
        }
        Map map = this.f23357l;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f23357l.get(str));
            }
        }
        m2Var.r();
    }

    public void t(Double d10) {
        this.f23352g = d10;
    }

    public void u(Double d10) {
        this.f23353h = d10;
    }
}
