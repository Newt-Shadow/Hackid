package io.sentry.internal.modules;

import io.sentry.ILogger;
import io.sentry.j5;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class f extends d {

    /* renamed from: d  reason: collision with root package name */
    private final ClassLoader f23188d;

    public f(ILogger iLogger) {
        this(iLogger, f.class.getClassLoader());
    }

    @Override // io.sentry.internal.modules.d
    protected Map b() {
        TreeMap treeMap = new TreeMap();
        try {
            InputStream resourceAsStream = this.f23188d.getResourceAsStream("sentry-external-modules.txt");
            try {
                if (resourceAsStream == null) {
                    this.f23185a.c(j5.INFO, "%s file was not found.", "sentry-external-modules.txt");
                    if (resourceAsStream != null) {
                        resourceAsStream.close();
                    }
                    return treeMap;
                }
                Map c10 = c(resourceAsStream);
                resourceAsStream.close();
                return c10;
            } catch (Throwable th) {
                if (resourceAsStream != null) {
                    try {
                        resourceAsStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e10) {
            this.f23185a.b(j5.INFO, "Access to resources failed.", e10);
            return treeMap;
        } catch (SecurityException e11) {
            this.f23185a.b(j5.INFO, "Access to resources denied.", e11);
            return treeMap;
        }
    }

    f(ILogger iLogger, ClassLoader classLoader) {
        super(iLogger);
        this.f23188d = io.sentry.util.a.a(classLoader);
    }
}
