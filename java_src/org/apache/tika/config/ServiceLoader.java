package org.apache.tika.config;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.apache.tika.exception.TikaConfigException;
import org.apache.tika.utils.ServiceLoaderUtils;
/* loaded from: classes2.dex */
public class ServiceLoader {
    private final boolean dynamic;
    private final LoadErrorHandler handler;
    private final InitializableProblemHandler initializableProblemHandler;
    private final ClassLoader loader;
    private static final Map<Object, RankedService> SERVICES = new HashMap();
    private static final Pattern COMMENT = Pattern.compile("#.*");
    private static final Pattern WHITESPACE = Pattern.compile("\\s+");
    private static volatile ClassLoader CONTEXT_CLASS_LOADER = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class RankedService implements Comparable<RankedService> {
        private final int rank;
        private final Object service;

        public RankedService(Object obj, int i10) {
            this.service = obj;
            this.rank = i10;
        }

        public boolean isInstanceOf(Class<?> cls) {
            return cls.isAssignableFrom(this.service.getClass());
        }

        @Override // java.lang.Comparable
        public int compareTo(RankedService rankedService) {
            return rankedService.rank - this.rank;
        }
    }

    public ServiceLoader(ClassLoader classLoader, LoadErrorHandler loadErrorHandler, InitializableProblemHandler initializableProblemHandler, boolean z10) {
        this.loader = classLoader;
        this.handler = loadErrorHandler;
        this.initializableProblemHandler = initializableProblemHandler;
        this.dynamic = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addService(Object obj, Object obj2, int i10) {
        Map<Object, RankedService> map = SERVICES;
        synchronized (map) {
            map.put(obj, new RankedService(obj2, i10));
        }
    }

    private void collectServiceClassNames(URL url, Collection<String> collection) {
        InputStream openStream = url.openStream();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openStream, StandardCharsets.UTF_8));
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                String replaceAll = WHITESPACE.matcher(COMMENT.matcher(readLine).replaceFirst("")).replaceAll("");
                if (replaceAll.length() > 0) {
                    collection.add(replaceAll);
                }
            }
            bufferedReader.close();
            if (openStream != null) {
                openStream.close();
            }
        } catch (Throwable th) {
            if (openStream != null) {
                try {
                    openStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ClassLoader getContextClassLoader() {
        ClassLoader classLoader = CONTEXT_CLASS_LOADER;
        if (classLoader == null) {
            classLoader = ServiceLoader.class.getClassLoader();
        }
        if (classLoader == null) {
            return ClassLoader.getSystemClassLoader();
        }
        return classLoader;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object removeService(Object obj) {
        RankedService remove;
        Map<Object, RankedService> map = SERVICES;
        synchronized (map) {
            remove = map.remove(obj);
        }
        return remove;
    }

    public static void setContextClassLoader(ClassLoader classLoader) {
        CONTEXT_CLASS_LOADER = classLoader;
    }

    public Enumeration<URL> findServiceResources(String str) {
        try {
            return this.loader.getResources(str);
        } catch (IOException unused) {
            return Collections.enumeration(Collections.emptyList());
        }
    }

    public InitializableProblemHandler getInitializableProblemHandler() {
        return this.initializableProblemHandler;
    }

    public LoadErrorHandler getLoadErrorHandler() {
        return this.handler;
    }

    public ClassLoader getLoader() {
        return this.loader;
    }

    public InputStream getResourceAsStream(String str) {
        ClassLoader classLoader = this.loader;
        if (classLoader != null) {
            return classLoader.getResourceAsStream(str);
        }
        return null;
    }

    public <T> Class<? extends T> getServiceClass(Class<T> cls, String str) {
        ClassLoader classLoader = this.loader;
        if (classLoader != null) {
            Class<? extends T> cls2 = (Class<? extends T>) Class.forName(str, true, classLoader);
            if (!cls2.isInterface()) {
                if (cls.isAssignableFrom(cls2)) {
                    return cls2;
                }
                String name = cls.getName();
                throw new ClassNotFoundException("Service class " + str + " does not implement " + name);
            }
            throw new ClassNotFoundException("Service class " + str + " is an interface");
        }
        throw new ClassNotFoundException("Service class " + str + " is not available");
    }

    protected <T> List<String> identifyStaticServiceProviders(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        if (this.loader != null) {
            String name = cls.getName();
            Iterator it = Collections.list(findServiceResources("META-INF/services/" + name)).iterator();
            while (it.hasNext()) {
                try {
                    collectServiceClassNames((URL) it.next(), arrayList);
                } catch (IOException e10) {
                    this.handler.handleLoadError(name, e10);
                }
            }
        }
        return arrayList;
    }

    public boolean isDynamic() {
        return this.dynamic;
    }

    public <T> List<T> loadDynamicServiceProviders(Class<T> cls) {
        ArrayList arrayList;
        if (this.dynamic) {
            Map<Object, RankedService> map = SERVICES;
            synchronized (map) {
                ArrayList<RankedService> arrayList2 = new ArrayList(map.values());
                Collections.sort(arrayList2);
                arrayList = new ArrayList(arrayList2.size());
                for (RankedService rankedService : arrayList2) {
                    if (rankedService.isInstanceOf(cls)) {
                        arrayList.add(rankedService.service);
                    }
                }
            }
            return arrayList;
        }
        return Collections.EMPTY_LIST;
    }

    public <T> List<T> loadServiceProviders(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(loadDynamicServiceProviders(cls));
        arrayList.addAll(loadStaticServiceProviders(cls));
        ArrayList arrayList2 = new ArrayList();
        HashSet hashSet = new HashSet();
        for (Object obj : arrayList) {
            if (!hashSet.contains(obj.getClass().getCanonicalName())) {
                arrayList2.add(obj);
                hashSet.add(obj.getClass().getCanonicalName());
            }
        }
        return arrayList2;
    }

    public <T> List<T> loadStaticServiceProviders(Class<T> cls) {
        return loadStaticServiceProviders(cls, Collections.EMPTY_SET);
    }

    public <T> List<T> loadStaticServiceProviders(Class<T> cls, Collection<Class<? extends T>> collection) {
        Class<?> loadClass;
        boolean z10;
        ArrayList arrayList = new ArrayList();
        if (this.loader != null) {
            for (String str : identifyStaticServiceProviders(cls)) {
                try {
                    loadClass = this.loader.loadClass(str);
                } catch (Throwable th) {
                    this.handler.handleLoadError(str, th);
                }
                if (cls.isAssignableFrom(loadClass)) {
                    Iterator<Class<? extends T>> it = collection.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().isAssignableFrom(loadClass)) {
                                z10 = true;
                                break;
                            }
                        } else {
                            z10 = false;
                            break;
                        }
                    }
                    if (!z10) {
                        Object newInstance = ServiceLoaderUtils.newInstance(loadClass, this);
                        if (newInstance instanceof Initializable) {
                            ((Initializable) newInstance).initialize(Collections.EMPTY_MAP);
                            ((Initializable) newInstance).checkInitialization(this.initializableProblemHandler);
                        }
                        arrayList.add(newInstance);
                    }
                } else {
                    throw new TikaConfigException("Class " + str + " is not of type: " + cls);
                    break;
                }
            }
        }
        return arrayList;
    }

    public ServiceLoader(ClassLoader classLoader, LoadErrorHandler loadErrorHandler, boolean z10) {
        this(classLoader, loadErrorHandler, InitializableProblemHandler.WARN, z10);
    }

    public ServiceLoader(ClassLoader classLoader, LoadErrorHandler loadErrorHandler) {
        this(classLoader, loadErrorHandler, false);
    }

    public ServiceLoader(ClassLoader classLoader) {
        this(classLoader, Boolean.getBoolean("org.apache.tika.service.error.warn") ? LoadErrorHandler.WARN : LoadErrorHandler.IGNORE);
    }

    public ServiceLoader() {
        this(getContextClassLoader(), Boolean.getBoolean("org.apache.tika.service.error.warn") ? LoadErrorHandler.WARN : LoadErrorHandler.IGNORE, true);
    }
}
