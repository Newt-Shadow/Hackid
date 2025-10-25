package ze;

import java.util.List;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import we.j;
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f33634a = new a(null);

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a(X509TrustManager trustManager) {
            m.e(trustManager, "trustManager");
            return j.f32161a.g().c(trustManager);
        }
    }

    public abstract List a(List list, String str);
}
