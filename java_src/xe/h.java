package xe;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;
import rd.y;
import xe.l;
/* loaded from: classes2.dex */
public class h implements m {

    /* renamed from: f  reason: collision with root package name */
    public static final a f32787f;

    /* renamed from: g  reason: collision with root package name */
    private static final l.a f32788g;

    /* renamed from: a  reason: collision with root package name */
    private final Class f32789a;

    /* renamed from: b  reason: collision with root package name */
    private final Method f32790b;

    /* renamed from: c  reason: collision with root package name */
    private final Method f32791c;

    /* renamed from: d  reason: collision with root package name */
    private final Method f32792d;

    /* renamed from: e  reason: collision with root package name */
    private final Method f32793e;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: xe.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0373a implements l.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f32794a;

            C0373a(String str) {
                this.f32794a = str;
            }

            @Override // xe.l.a
            public boolean b(SSLSocket sslSocket) {
                boolean H;
                kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
                String name = sslSocket.getClass().getName();
                kotlin.jvm.internal.m.d(name, "sslSocket.javaClass.name");
                H = y.H(name, kotlin.jvm.internal.m.l(this.f32794a, "."), false, 2, null);
                return H;
            }

            @Override // xe.l.a
            public m c(SSLSocket sslSocket) {
                kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
                return h.f32787f.b(sslSocket.getClass());
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final h b(Class cls) {
            Class cls2 = cls;
            while (cls2 != null && !kotlin.jvm.internal.m.a(cls2.getSimpleName(), "OpenSSLSocketImpl")) {
                cls2 = cls2.getSuperclass();
                if (cls2 == null) {
                    throw new AssertionError(kotlin.jvm.internal.m.l("No OpenSSLSocketImpl superclass of socket of type ", cls));
                }
            }
            kotlin.jvm.internal.m.b(cls2);
            return new h(cls2);
        }

        public final l.a c(String packageName) {
            kotlin.jvm.internal.m.e(packageName, "packageName");
            return new C0373a(packageName);
        }

        public final l.a d() {
            return h.f32788g;
        }
    }

    static {
        a aVar = new a(null);
        f32787f = aVar;
        f32788g = aVar.c("com.google.android.gms.org.conscrypt");
    }

    public h(Class sslSocketClass) {
        kotlin.jvm.internal.m.e(sslSocketClass, "sslSocketClass");
        this.f32789a = sslSocketClass;
        Method declaredMethod = sslSocketClass.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);
        kotlin.jvm.internal.m.d(declaredMethod, "sslSocketClass.getDeclar…:class.javaPrimitiveType)");
        this.f32790b = declaredMethod;
        this.f32791c = sslSocketClass.getMethod("setHostname", String.class);
        this.f32792d = sslSocketClass.getMethod("getAlpnSelectedProtocol", new Class[0]);
        this.f32793e = sslSocketClass.getMethod("setAlpnProtocols", byte[].class);
    }

    @Override // xe.m
    public boolean a() {
        return we.b.f32134f.b();
    }

    @Override // xe.m
    public boolean b(SSLSocket sslSocket) {
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        return this.f32789a.isInstance(sslSocket);
    }

    @Override // xe.m
    public String c(SSLSocket sslSocket) {
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        if (!b(sslSocket)) {
            return null;
        }
        try {
            byte[] bArr = (byte[]) this.f32792d.invoke(sslSocket, new Object[0]);
            if (bArr == null) {
                return null;
            }
            return new String(bArr, rd.d.f29089b);
        } catch (IllegalAccessException e10) {
            throw new AssertionError(e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if ((cause instanceof NullPointerException) && kotlin.jvm.internal.m.a(((NullPointerException) cause).getMessage(), "ssl == null")) {
                return null;
            }
            throw new AssertionError(e11);
        }
    }

    @Override // xe.m
    public void d(SSLSocket sslSocket, String str, List protocols) {
        kotlin.jvm.internal.m.e(sslSocket, "sslSocket");
        kotlin.jvm.internal.m.e(protocols, "protocols");
        if (b(sslSocket)) {
            try {
                this.f32790b.invoke(sslSocket, Boolean.TRUE);
                if (str != null) {
                    this.f32791c.invoke(sslSocket, str);
                }
                this.f32793e.invoke(sslSocket, we.j.f32161a.c(protocols));
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InvocationTargetException e11) {
                throw new AssertionError(e11);
            }
        }
    }
}
