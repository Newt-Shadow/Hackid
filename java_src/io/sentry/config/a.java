package io.sentry.config;

import io.sentry.util.q;
import io.sentry.util.w;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
/* loaded from: classes2.dex */
abstract class a implements f {

    /* renamed from: a  reason: collision with root package name */
    private final String f23001a;

    /* renamed from: b  reason: collision with root package name */
    private final Properties f23002b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(String str, Properties properties) {
        this.f23001a = (String) q.c(str, "prefix is required");
        this.f23002b = (Properties) q.c(properties, "properties are required");
    }

    @Override // io.sentry.config.f
    public Map a(String str) {
        String str2 = this.f23001a + str + ".";
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.f23002b.entrySet()) {
            if ((entry.getKey() instanceof String) && (entry.getValue() instanceof String)) {
                String str3 = (String) entry.getKey();
                if (str3.startsWith(str2)) {
                    hashMap.put(str3.substring(str2.length()), w.f((String) entry.getValue(), "\""));
                }
            }
        }
        return hashMap;
    }

    @Override // io.sentry.config.f
    public String b(String str) {
        Properties properties = this.f23002b;
        return w.f(properties.getProperty(this.f23001a + str), "\"");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Properties properties) {
        this("", properties);
    }
}
