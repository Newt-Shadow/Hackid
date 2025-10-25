package io.appmetrica.analytics.coreutils.internal.logger;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.ApiKeyUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.HashMap;
/* loaded from: classes2.dex */
public abstract class LoggerStorage {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap f17730a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f17731b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static volatile PublicLogger f17732c = PublicLogger.getAnonymousInstance();

    public static PublicLogger getMainPublicOrAnonymousLogger() {
        return f17732c;
    }

    public static PublicLogger getOrCreateMainPublicLogger(String str) {
        f17732c = getOrCreatePublicLogger(str);
        return f17732c;
    }

    public static PublicLogger getOrCreatePublicLogger(String str) {
        if (TextUtils.isEmpty(str)) {
            return PublicLogger.getAnonymousInstance();
        }
        PublicLogger publicLogger = (PublicLogger) f17730a.get(str);
        if (publicLogger == null) {
            synchronized (f17731b) {
                publicLogger = (PublicLogger) f17730a.get(str);
                if (publicLogger == null) {
                    publicLogger = new PublicLogger(ApiKeyUtils.createPartialApiKey(str));
                    f17730a.put(str, publicLogger);
                }
            }
        }
        return publicLogger;
    }

    public static void unsetPublicLoggers() {
        f17730a = new HashMap();
        f17732c = PublicLogger.getAnonymousInstance();
    }
}
