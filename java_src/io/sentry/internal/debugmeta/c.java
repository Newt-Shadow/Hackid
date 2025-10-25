package io.sentry.internal.debugmeta;

import io.sentry.ILogger;
import io.sentry.j5;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;
/* loaded from: classes2.dex */
public final class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final ILogger f23171a;

    /* renamed from: b  reason: collision with root package name */
    private final ClassLoader f23172b;

    public c(ILogger iLogger) {
        this(iLogger, c.class.getClassLoader());
    }

    @Override // io.sentry.internal.debugmeta.a
    public List a() {
        InputStream openStream;
        ArrayList arrayList = new ArrayList();
        try {
            Enumeration<URL> resources = this.f23172b.getResources(io.sentry.util.c.f23787a);
            while (resources.hasMoreElements()) {
                URL nextElement = resources.nextElement();
                try {
                    openStream = nextElement.openStream();
                } catch (RuntimeException e10) {
                    this.f23171a.a(j5.ERROR, e10, "%s file is malformed.", nextElement);
                }
                try {
                    Properties properties = new Properties();
                    properties.load(openStream);
                    arrayList.add(properties);
                    this.f23171a.c(j5.INFO, "Debug Meta Data Properties loaded from %s", nextElement);
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
                    break;
                }
            }
        } catch (IOException e11) {
            this.f23171a.a(j5.ERROR, e11, "Failed to load %s", io.sentry.util.c.f23787a);
        }
        if (arrayList.isEmpty()) {
            this.f23171a.c(j5.INFO, "No %s file was found.", io.sentry.util.c.f23787a);
            return null;
        }
        return arrayList;
    }

    c(ILogger iLogger, ClassLoader classLoader) {
        this.f23171a = iLogger;
        this.f23172b = io.sentry.util.a.a(classLoader);
    }
}
