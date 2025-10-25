package te;

import java.net.Proxy;
import kotlin.jvm.internal.m;
import ne.t;
import ne.y;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f30742a = new i();

    private i() {
    }

    private final boolean b(y yVar, Proxy.Type type) {
        if (!yVar.f() && type == Proxy.Type.HTTP) {
            return true;
        }
        return false;
    }

    public final String a(y request, Proxy.Type proxyType) {
        m.e(request, "request");
        m.e(proxyType, "proxyType");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(request.g());
        sb2.append(' ');
        i iVar = f30742a;
        if (iVar.b(request, proxyType)) {
            sb2.append(request.i());
        } else {
            sb2.append(iVar.c(request.i()));
        }
        sb2.append(" HTTP/1.1");
        String sb3 = sb2.toString();
        m.d(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    public final String c(t url) {
        m.e(url, "url");
        String d10 = url.d();
        String f10 = url.f();
        if (f10 != null) {
            return d10 + '?' + ((Object) f10);
        }
        return d10;
    }
}
