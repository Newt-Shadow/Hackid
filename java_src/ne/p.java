package ne;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
/* loaded from: classes2.dex */
public interface p {

    /* renamed from: a  reason: collision with root package name */
    public static final a f26765a = a.f26767a;

    /* renamed from: b  reason: collision with root package name */
    public static final p f26766b = new a.C0263a();

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f26767a = new a();

        /* renamed from: ne.p$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static final class C0263a implements p {
            @Override // ne.p
            public List a(String hostname) {
                List Q;
                kotlin.jvm.internal.m.e(hostname, "hostname");
                try {
                    InetAddress[] allByName = InetAddress.getAllByName(hostname);
                    kotlin.jvm.internal.m.d(allByName, "getAllByName(hostname)");
                    Q = yc.k.Q(allByName);
                    return Q;
                } catch (NullPointerException e10) {
                    UnknownHostException unknownHostException = new UnknownHostException(kotlin.jvm.internal.m.l("Broken system behaviour for dns lookup of ", hostname));
                    unknownHostException.initCause(e10);
                    throw unknownHostException;
                }
            }
        }

        private a() {
        }
    }

    List a(String str);
}
