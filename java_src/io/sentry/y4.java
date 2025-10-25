package io.sentry;

import com.arthenica.ffmpegkit.MediaInformation;
import io.sentry.i5;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final class y4 implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final String f23931a;

    /* renamed from: b  reason: collision with root package name */
    private final String f23932b;

    /* renamed from: c  reason: collision with root package name */
    private final i5 f23933c;

    /* renamed from: d  reason: collision with root package name */
    private final int f23934d;

    /* renamed from: e  reason: collision with root package name */
    private final Callable f23935e;

    /* renamed from: f  reason: collision with root package name */
    private final String f23936f;

    /* renamed from: g  reason: collision with root package name */
    private Map f23937g;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        private Exception c(String str, ILogger iLogger) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            iLogger.b(j5.ERROR, str2, illegalStateException);
            return illegalStateException;
        }

        @Override // io.sentry.g1
        /* renamed from: b */
        public y4 a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            HashMap hashMap = null;
            i5 i5Var = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            int i10 = 0;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1106363674:
                        if (f02.equals("length")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -734768633:
                        if (f02.equals(MediaInformation.KEY_FILENAME)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -672977706:
                        if (f02.equals("attachment_type")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3575610:
                        if (f02.equals("type")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 831846208:
                        if (f02.equals("content_type")) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        i10 = l2Var.j0();
                        break;
                    case 1:
                        str2 = l2Var.T();
                        break;
                    case 2:
                        str3 = l2Var.T();
                        break;
                    case 3:
                        i5Var = (i5) l2Var.u0(iLogger, new i5.a());
                        break;
                    case 4:
                        str = l2Var.T();
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                        break;
                }
            }
            if (i5Var != null) {
                y4 y4Var = new y4(i5Var, i10, str, str2, str3);
                y4Var.c(hashMap);
                l2Var.r();
                return y4Var;
            }
            throw c("type", iLogger);
        }
    }

    public y4(i5 i5Var, int i10, String str, String str2, String str3) {
        this.f23933c = (i5) io.sentry.util.q.c(i5Var, "type is required");
        this.f23931a = str;
        this.f23934d = i10;
        this.f23932b = str2;
        this.f23935e = null;
        this.f23936f = str3;
    }

    public int a() {
        Callable callable = this.f23935e;
        if (callable != null) {
            try {
                return ((Integer) callable.call()).intValue();
            } catch (Throwable unused) {
                return -1;
            }
        }
        return this.f23934d;
    }

    public i5 b() {
        return this.f23933c;
    }

    public void c(Map map) {
        this.f23937g = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23931a != null) {
            m2Var.k("content_type").c(this.f23931a);
        }
        if (this.f23932b != null) {
            m2Var.k(MediaInformation.KEY_FILENAME).c(this.f23932b);
        }
        m2Var.k("type").g(iLogger, this.f23933c);
        if (this.f23936f != null) {
            m2Var.k("attachment_type").c(this.f23936f);
        }
        m2Var.k("length").a(a());
        Map map = this.f23937g;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23937g.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y4(i5 i5Var, Callable callable, String str, String str2, String str3) {
        this.f23933c = (i5) io.sentry.util.q.c(i5Var, "type is required");
        this.f23931a = str;
        this.f23934d = -1;
        this.f23932b = str2;
        this.f23935e = callable;
        this.f23936f = str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y4(i5 i5Var, Callable callable, String str, String str2) {
        this(i5Var, callable, str, str2, (String) null);
    }
}
