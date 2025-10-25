package ne;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public enum d0 {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");
    

    /* renamed from: b  reason: collision with root package name */
    public static final a f26635b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f26642a;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d0 a(String javaName) {
            kotlin.jvm.internal.m.e(javaName, "javaName");
            int hashCode = javaName.hashCode();
            if (hashCode != 79201641) {
                if (hashCode != 79923350) {
                    switch (hashCode) {
                        case -503070503:
                            if (javaName.equals("TLSv1.1")) {
                                return d0.TLS_1_1;
                            }
                            break;
                        case -503070502:
                            if (javaName.equals("TLSv1.2")) {
                                return d0.TLS_1_2;
                            }
                            break;
                        case -503070501:
                            if (javaName.equals("TLSv1.3")) {
                                return d0.TLS_1_3;
                            }
                            break;
                    }
                } else if (javaName.equals("TLSv1")) {
                    return d0.TLS_1_0;
                }
            } else if (javaName.equals("SSLv3")) {
                return d0.SSL_3_0;
            }
            throw new IllegalArgumentException(kotlin.jvm.internal.m.l("Unexpected TLS version: ", javaName));
        }
    }

    d0(String str) {
        this.f26642a = str;
    }

    public final String b() {
        return this.f26642a;
    }
}
