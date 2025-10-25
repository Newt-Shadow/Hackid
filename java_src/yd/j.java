package yd;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f33266a = new j();

    private j() {
    }

    private final Object a(String str, ClassLoader classLoader, Class cls) {
        Class<?> cls2 = Class.forName(str, false, classLoader);
        if (cls.isAssignableFrom(cls2)) {
            return cls.cast(cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        }
        throw new IllegalArgumentException(("Expected service of class " + cls + ", but found " + cls2).toString());
    }

    private final List b(Class cls, ClassLoader classLoader) {
        List k02;
        try {
            return d(cls, classLoader);
        } catch (Throwable unused) {
            k02 = yc.w.k0(ServiceLoader.load(cls, classLoader));
            return k02;
        }
    }

    private final List e(URL url) {
        boolean H;
        String G0;
        String L0;
        String G02;
        String url2 = url.toString();
        H = rd.y.H(url2, "jar", false, 2, null);
        if (H) {
            G0 = rd.b0.G0(url2, "jar:file:", null, 2, null);
            L0 = rd.b0.L0(G0, '!', null, 2, null);
            G02 = rd.b0.G0(url2, "!/", null, 2, null);
            JarFile jarFile = new JarFile(L0, false);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(jarFile.getInputStream(new ZipEntry(G02)), "UTF-8"));
                List f10 = f33266a.f(bufferedReader);
                gd.b.a(bufferedReader, null);
                jarFile.close();
                return f10;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        jarFile.close();
                        throw th2;
                    } catch (Throwable th3) {
                        xc.b.a(th, th3);
                        throw th;
                    }
                }
            }
        }
        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(url.openStream()));
        try {
            List f11 = f33266a.f(bufferedReader2);
            gd.b.a(bufferedReader2, null);
            return f11;
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                gd.b.a(bufferedReader2, th4);
                throw th5;
            }
        }
    }

    private final List f(BufferedReader bufferedReader) {
        List k02;
        String M0;
        CharSequence P0;
        boolean z10;
        boolean z11;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                k02 = yc.w.k0(linkedHashSet);
                return k02;
            }
            M0 = rd.b0.M0(readLine, "#", null, 2, null);
            P0 = rd.b0.P0(M0);
            String obj = P0.toString();
            boolean z12 = false;
            int i10 = 0;
            while (true) {
                if (i10 < obj.length()) {
                    char charAt = obj.charAt(i10);
                    if (charAt != '.' && !Character.isJavaIdentifierPart(charAt)) {
                        z11 = false;
                    } else {
                        z11 = true;
                    }
                    if (!z11) {
                        z10 = false;
                        break;
                    }
                    i10++;
                } else {
                    z10 = true;
                    break;
                }
            }
            if (z10) {
                if (obj.length() > 0) {
                    z12 = true;
                }
                if (z12) {
                    linkedHashSet.add(obj);
                }
            } else {
                throw new IllegalArgumentException(("Illegal service provider class name: " + obj).toString());
            }
        }
    }

    public final List c() {
        t tVar;
        if (!k.a()) {
            return b(t.class, t.class.getClassLoader());
        }
        try {
            ArrayList arrayList = new ArrayList(2);
            t tVar2 = null;
            try {
                tVar = (t) t.class.cast(Class.forName("ud.a", true, t.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused) {
                tVar = null;
            }
            if (tVar == null) {
                return b(t.class, t.class.getClassLoader());
            }
            arrayList.add(tVar);
            try {
                tVar2 = (t) t.class.cast(Class.forName("kotlinx.coroutines.test.internal.TestMainDispatcherFactory", true, t.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } catch (ClassNotFoundException unused2) {
            }
            if (tVar2 != null) {
                arrayList.add(tVar2);
                return arrayList;
            }
            return arrayList;
        } catch (Throwable unused3) {
            return b(t.class, t.class.getClassLoader());
        }
    }

    public final List d(Class cls, ClassLoader classLoader) {
        Set<String> o02;
        int r10;
        ArrayList<URL> list = Collections.list(classLoader.getResources("META-INF/services/" + cls.getName()));
        kotlin.jvm.internal.m.d(list, "list(...)");
        ArrayList arrayList = new ArrayList();
        for (URL url : list) {
            yc.t.v(arrayList, f33266a.e(url));
        }
        o02 = yc.w.o0(arrayList);
        if (!o02.isEmpty()) {
            r10 = yc.p.r(o02, 10);
            ArrayList arrayList2 = new ArrayList(r10);
            for (String str : o02) {
                arrayList2.add(f33266a.a(str, classLoader, cls));
            }
            return arrayList2;
        }
        throw new IllegalArgumentException("No providers were loaded with FastServiceLoader".toString());
    }
}
