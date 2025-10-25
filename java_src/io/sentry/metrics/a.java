package io.sentry.metrics;

import java.nio.charset.Charset;
import java.util.Map;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final Charset f23265b = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final Map f23266a;

    public a(Map map) {
        this.f23266a = map;
    }

    public byte[] a() {
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry entry : this.f23266a.entrySet()) {
            e.a(((Long) entry.getKey()).longValue(), ((Map) entry.getValue()).values(), sb2);
        }
        return sb2.toString().getBytes(f23265b);
    }
}
