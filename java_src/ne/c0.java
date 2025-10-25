package ne;

import java.net.InetSocketAddress;
import java.net.Proxy;
/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    private final a f26608a;

    /* renamed from: b  reason: collision with root package name */
    private final Proxy f26609b;

    /* renamed from: c  reason: collision with root package name */
    private final InetSocketAddress f26610c;

    public c0(a address, Proxy proxy, InetSocketAddress socketAddress) {
        kotlin.jvm.internal.m.e(address, "address");
        kotlin.jvm.internal.m.e(proxy, "proxy");
        kotlin.jvm.internal.m.e(socketAddress, "socketAddress");
        this.f26608a = address;
        this.f26609b = proxy;
        this.f26610c = socketAddress;
    }

    public final a a() {
        return this.f26608a;
    }

    public final Proxy b() {
        return this.f26609b;
    }

    public final boolean c() {
        if (this.f26608a.k() != null && this.f26609b.type() == Proxy.Type.HTTP) {
            return true;
        }
        return false;
    }

    public final InetSocketAddress d() {
        return this.f26610c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof c0) {
            c0 c0Var = (c0) obj;
            if (kotlin.jvm.internal.m.a(c0Var.f26608a, this.f26608a) && kotlin.jvm.internal.m.a(c0Var.f26609b, this.f26609b) && kotlin.jvm.internal.m.a(c0Var.f26610c, this.f26610c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.f26608a.hashCode()) * 31) + this.f26609b.hashCode()) * 31) + this.f26610c.hashCode();
    }

    public String toString() {
        return "Route{" + this.f26610c + '}';
    }
}
