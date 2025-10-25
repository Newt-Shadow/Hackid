package io.sentry.config;

import io.sentry.ILogger;
import io.sentry.j5;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
/* loaded from: classes2.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f23003a;

    /* renamed from: b  reason: collision with root package name */
    private final ClassLoader f23004b;

    /* renamed from: c  reason: collision with root package name */
    private final ILogger f23005c;

    public b(String str, ClassLoader classLoader, ILogger iLogger) {
        this.f23003a = str;
        this.f23004b = io.sentry.util.a.a(classLoader);
        this.f23005c = iLogger;
    }

    public Properties a() {
        try {
            InputStream resourceAsStream = this.f23004b.getResourceAsStream(this.f23003a);
            if (resourceAsStream != null) {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(resourceAsStream);
                try {
                    Properties properties = new Properties();
                    properties.load(bufferedInputStream);
                    bufferedInputStream.close();
                    resourceAsStream.close();
                    return properties;
                } catch (Throwable th) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (resourceAsStream != null) {
                resourceAsStream.close();
            }
            return null;
        } catch (IOException e10) {
            this.f23005c.a(j5.ERROR, e10, "Failed to load Sentry configuration from classpath resource: %s", this.f23003a);
            return null;
        }
    }

    public b(ILogger iLogger) {
        this("sentry.properties", b.class.getClassLoader(), iLogger);
    }
}
