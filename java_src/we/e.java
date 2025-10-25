package we;

import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class e extends j {

    /* renamed from: i  reason: collision with root package name */
    public static final b f32147i = new b(null);

    /* renamed from: d  reason: collision with root package name */
    private final Method f32148d;

    /* renamed from: e  reason: collision with root package name */
    private final Method f32149e;

    /* renamed from: f  reason: collision with root package name */
    private final Method f32150f;

    /* renamed from: g  reason: collision with root package name */
    private final Class f32151g;

    /* renamed from: h  reason: collision with root package name */
    private final Class f32152h;

    /* loaded from: classes2.dex */
    private static final class a implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        private final List f32153a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f32154b;

        /* renamed from: c  reason: collision with root package name */
        private String f32155c;

        public a(List protocols) {
            m.e(protocols, "protocols");
            this.f32153a = protocols;
        }

        public final String a() {
            return this.f32155c;
        }

        public final boolean b() {
            return this.f32154b;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object proxy, Method method, Object[] objArr) {
            boolean z10;
            m.e(proxy, "proxy");
            m.e(method, "method");
            if (objArr == null) {
                objArr = new Object[0];
            }
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (m.a(name, "supports") && m.a(Boolean.TYPE, returnType)) {
                return Boolean.TRUE;
            }
            if (m.a(name, "unsupported") && m.a(Void.TYPE, returnType)) {
                this.f32154b = true;
                return null;
            }
            if (m.a(name, "protocols")) {
                if (objArr.length == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    return this.f32153a;
                }
            }
            if ((m.a(name, "selectProtocol") || m.a(name, "select")) && m.a(String.class, returnType) && objArr.length == 1) {
                Object obj = objArr[0];
                if (obj instanceof List) {
                    if (obj != null) {
                        List list = (List) obj;
                        int size = list.size();
                        if (size >= 0) {
                            int i10 = 0;
                            while (true) {
                                int i11 = i10 + 1;
                                Object obj2 = list.get(i10);
                                if (obj2 != null) {
                                    String str = (String) obj2;
                                    if (this.f32153a.contains(str)) {
                                        this.f32155c = str;
                                        return str;
                                    } else if (i10 == size) {
                                        break;
                                    } else {
                                        i10 = i11;
                                    }
                                } else {
                                    throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                                }
                            }
                        }
                        String str2 = (String) this.f32153a.get(0);
                        this.f32155c = str2;
                        return str2;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<*>");
                }
            }
            if ((m.a(name, "protocolSelected") || m.a(name, "selected")) && objArr.length == 1) {
                Object obj3 = objArr[0];
                if (obj3 != null) {
                    this.f32155c = (String) obj3;
                    return null;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
            return method.invoke(this, Arrays.copyOf(objArr, objArr.length));
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final j a() {
            String jvmVersion = System.getProperty("java.specification.version", CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE);
            try {
                m.d(jvmVersion, "jvmVersion");
                if (Integer.parseInt(jvmVersion) >= 9) {
                    return null;
                }
            } catch (NumberFormatException unused) {
            }
            try {
                Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN", true, null);
                Class<?> cls2 = Class.forName(m.l("org.eclipse.jetty.alpn.ALPN", "$Provider"), true, null);
                Class<?> clientProviderClass = Class.forName(m.l("org.eclipse.jetty.alpn.ALPN", "$ClientProvider"), true, null);
                Class<?> serverProviderClass = Class.forName(m.l("org.eclipse.jetty.alpn.ALPN", "$ServerProvider"), true, null);
                Method putMethod = cls.getMethod("put", SSLSocket.class, cls2);
                Method getMethod = cls.getMethod("get", SSLSocket.class);
                Method removeMethod = cls.getMethod("remove", SSLSocket.class);
                m.d(putMethod, "putMethod");
                m.d(getMethod, "getMethod");
                m.d(removeMethod, "removeMethod");
                m.d(clientProviderClass, "clientProviderClass");
                m.d(serverProviderClass, "serverProviderClass");
                return new e(putMethod, getMethod, removeMethod, clientProviderClass, serverProviderClass);
            } catch (ClassNotFoundException | NoSuchMethodException unused2) {
                return null;
            }
        }
    }

    public e(Method putMethod, Method getMethod, Method removeMethod, Class clientProviderClass, Class serverProviderClass) {
        m.e(putMethod, "putMethod");
        m.e(getMethod, "getMethod");
        m.e(removeMethod, "removeMethod");
        m.e(clientProviderClass, "clientProviderClass");
        m.e(serverProviderClass, "serverProviderClass");
        this.f32148d = putMethod;
        this.f32149e = getMethod;
        this.f32150f = removeMethod;
        this.f32151g = clientProviderClass;
        this.f32152h = serverProviderClass;
    }

    @Override // we.j
    public void b(SSLSocket sslSocket) {
        m.e(sslSocket, "sslSocket");
        try {
            this.f32150f.invoke(null, sslSocket);
        } catch (IllegalAccessException e10) {
            throw new AssertionError("failed to remove ALPN", e10);
        } catch (InvocationTargetException e11) {
            throw new AssertionError("failed to remove ALPN", e11);
        }
    }

    @Override // we.j
    public void e(SSLSocket sslSocket, String str, List protocols) {
        m.e(sslSocket, "sslSocket");
        m.e(protocols, "protocols");
        try {
            this.f32148d.invoke(null, sslSocket, Proxy.newProxyInstance(j.class.getClassLoader(), new Class[]{this.f32151g, this.f32152h}, new a(j.f32161a.b(protocols))));
        } catch (IllegalAccessException e10) {
            throw new AssertionError("failed to set ALPN", e10);
        } catch (InvocationTargetException e11) {
            throw new AssertionError("failed to set ALPN", e11);
        }
    }

    @Override // we.j
    public String g(SSLSocket sslSocket) {
        m.e(sslSocket, "sslSocket");
        try {
            InvocationHandler invocationHandler = Proxy.getInvocationHandler(this.f32149e.invoke(null, sslSocket));
            if (invocationHandler != null) {
                a aVar = (a) invocationHandler;
                if (!aVar.b() && aVar.a() == null) {
                    j.k(this, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", 0, null, 6, null);
                    return null;
                } else if (aVar.b()) {
                    return null;
                } else {
                    return aVar.a();
                }
            }
            throw new NullPointerException("null cannot be cast to non-null type okhttp3.internal.platform.Jdk8WithJettyBootPlatform.AlpnProvider");
        } catch (IllegalAccessException e10) {
            throw new AssertionError("failed to get ALPN selected protocol", e10);
        } catch (InvocationTargetException e11) {
            throw new AssertionError("failed to get ALPN selected protocol", e11);
        }
    }
}
