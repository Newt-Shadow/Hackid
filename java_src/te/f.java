package te;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f30729a = new f();

    private f() {
    }

    public static final boolean a(String method) {
        m.e(method, "method");
        if (!m.a(method, "GET") && !m.a(method, "HEAD")) {
            return true;
        }
        return false;
    }

    public static final boolean d(String method) {
        m.e(method, "method");
        if (!m.a(method, "POST") && !m.a(method, "PUT") && !m.a(method, "PATCH") && !m.a(method, "PROPPATCH") && !m.a(method, "REPORT")) {
            return false;
        }
        return true;
    }

    public final boolean b(String method) {
        m.e(method, "method");
        return !m.a(method, "PROPFIND");
    }

    public final boolean c(String method) {
        m.e(method, "method");
        return m.a(method, "PROPFIND");
    }
}
