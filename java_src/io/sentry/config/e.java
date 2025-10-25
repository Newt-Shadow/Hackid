package io.sentry.config;

import io.sentry.ILogger;
import io.sentry.j5;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
/* loaded from: classes2.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private final String f23007a;

    /* renamed from: b  reason: collision with root package name */
    private final ILogger f23008b;

    public e(String str, ILogger iLogger) {
        this.f23007a = str;
        this.f23008b = iLogger;
    }

    public Properties a() {
        try {
            File file = new File(this.f23007a);
            if (!file.isFile() || !file.canRead()) {
                return null;
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            Properties properties = new Properties();
            properties.load(bufferedInputStream);
            bufferedInputStream.close();
            return properties;
        } catch (IOException e10) {
            this.f23008b.a(j5.ERROR, e10, "Failed to load Sentry configuration from file: %s", this.f23007a);
            return null;
        }
    }
}
