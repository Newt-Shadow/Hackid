package io.sentry.android.core.internal.debugmeta;

import android.content.Context;
import io.sentry.ILogger;
import io.sentry.android.core.x0;
import io.sentry.j5;
import io.sentry.util.c;
import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Properties;
/* loaded from: classes2.dex */
public final class a implements io.sentry.internal.debugmeta.a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22281a;

    /* renamed from: b  reason: collision with root package name */
    private final ILogger f22282b;

    public a(Context context, ILogger iLogger) {
        this.f22281a = x0.h(context);
        this.f22282b = iLogger;
    }

    @Override // io.sentry.internal.debugmeta.a
    public List a() {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(this.f22281a.getAssets().open(c.f23787a));
            try {
                Properties properties = new Properties();
                properties.load(bufferedInputStream);
                List singletonList = Collections.singletonList(properties);
                bufferedInputStream.close();
                return singletonList;
            } catch (Throwable th) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (FileNotFoundException e10) {
            this.f22282b.a(j5.INFO, e10, "%s file was not found.", c.f23787a);
            return null;
        } catch (IOException e11) {
            this.f22282b.b(j5.ERROR, "Error getting Proguard UUIDs.", e11);
            return null;
        } catch (RuntimeException e12) {
            this.f22282b.a(j5.ERROR, e12, "%s file is malformed.", c.f23787a);
            return null;
        }
    }
}
