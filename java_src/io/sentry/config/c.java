package io.sentry.config;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
final class c implements f {

    /* renamed from: a  reason: collision with root package name */
    private final List f23006a;

    public c(List list) {
        this.f23006a = list;
    }

    @Override // io.sentry.config.f
    public Map a(String str) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (f fVar : this.f23006a) {
            concurrentHashMap.putAll(fVar.a(str));
        }
        return concurrentHashMap;
    }

    @Override // io.sentry.config.f
    public String b(String str) {
        for (f fVar : this.f23006a) {
            String b10 = fVar.b(str);
            if (b10 != null) {
                return b10;
            }
        }
        return null;
    }
}
