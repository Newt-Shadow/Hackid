package io.sentry.metrics;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map f23267a = new HashMap();

    public Map a() {
        HashMap hashMap = new HashMap();
        synchronized (this.f23267a) {
            for (Map.Entry entry : this.f23267a.entrySet()) {
                String str = (String) entry.getKey();
                Objects.requireNonNull(str);
                ArrayList arrayList = new ArrayList();
                Iterator it = ((Map) entry.getValue()).values().iterator();
                if (!it.hasNext()) {
                    hashMap.put(str, arrayList);
                } else {
                    android.support.v4.media.session.b.a(it.next());
                    throw null;
                }
            }
        }
        return hashMap;
    }
}
