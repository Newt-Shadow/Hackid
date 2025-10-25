package ne;

import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public enum x {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");
    

    /* renamed from: b  reason: collision with root package name */
    public static final a f26860b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f26868a;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final x a(String protocol) {
            kotlin.jvm.internal.m.e(protocol, "protocol");
            x xVar = x.HTTP_1_0;
            if (!kotlin.jvm.internal.m.a(protocol, xVar.f26868a)) {
                xVar = x.HTTP_1_1;
                if (!kotlin.jvm.internal.m.a(protocol, xVar.f26868a)) {
                    xVar = x.H2_PRIOR_KNOWLEDGE;
                    if (!kotlin.jvm.internal.m.a(protocol, xVar.f26868a)) {
                        xVar = x.HTTP_2;
                        if (!kotlin.jvm.internal.m.a(protocol, xVar.f26868a)) {
                            xVar = x.SPDY_3;
                            if (!kotlin.jvm.internal.m.a(protocol, xVar.f26868a)) {
                                xVar = x.QUIC;
                                if (!kotlin.jvm.internal.m.a(protocol, xVar.f26868a)) {
                                    throw new IOException(kotlin.jvm.internal.m.l("Unexpected protocol: ", protocol));
                                }
                            }
                        }
                    }
                }
            }
            return xVar;
        }
    }

    x(String str) {
        this.f26868a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f26868a;
    }
}
