package xe;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class n extends h {

    /* renamed from: j  reason: collision with root package name */
    public static final a f32805j = new a(null);

    /* renamed from: h  reason: collision with root package name */
    private final Class f32806h;

    /* renamed from: i  reason: collision with root package name */
    private final Class f32807i;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ m b(a aVar, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = "com.android.org.conscrypt";
            }
            return aVar.a(str);
        }

        public final m a(String packageName) {
            kotlin.jvm.internal.m.e(packageName, "packageName");
            try {
                Class<?> cls = Class.forName(kotlin.jvm.internal.m.l(packageName, ".OpenSSLSocketImpl"));
                Class<?> cls2 = Class.forName(kotlin.jvm.internal.m.l(packageName, ".OpenSSLSocketFactoryImpl"));
                Class<?> paramsClass = Class.forName(kotlin.jvm.internal.m.l(packageName, ".SSLParametersImpl"));
                kotlin.jvm.internal.m.d(paramsClass, "paramsClass");
                return new n(cls, cls2, paramsClass);
            } catch (Exception e10) {
                we.j.f32161a.g().j("unable to load android socket classes", 5, e10);
                return null;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(Class sslSocketClass, Class sslSocketFactoryClass, Class paramClass) {
        super(sslSocketClass);
        kotlin.jvm.internal.m.e(sslSocketClass, "sslSocketClass");
        kotlin.jvm.internal.m.e(sslSocketFactoryClass, "sslSocketFactoryClass");
        kotlin.jvm.internal.m.e(paramClass, "paramClass");
        this.f32806h = sslSocketFactoryClass;
        this.f32807i = paramClass;
    }
}
