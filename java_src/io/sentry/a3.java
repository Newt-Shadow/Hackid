package io.sentry;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.Map;
/* loaded from: classes2.dex */
public final class a3 {

    /* renamed from: a  reason: collision with root package name */
    private final URL f22002a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f22003b;

    public a3(String str, Map map) {
        io.sentry.util.q.c(str, "url is required");
        io.sentry.util.q.c(map, "headers is required");
        try {
            this.f22002a = URI.create(str).toURL();
            this.f22003b = map;
        } catch (MalformedURLException e10) {
            throw new IllegalArgumentException("Failed to compose the Sentry's server URL.", e10);
        }
    }

    public Map a() {
        return this.f22003b;
    }

    public URL b() {
        return this.f22002a;
    }
}
