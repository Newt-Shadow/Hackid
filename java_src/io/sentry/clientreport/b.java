package io.sentry.clientreport;

import io.sentry.util.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
final class b implements i {

    /* renamed from: a  reason: collision with root package name */
    private final m f22989a = new m(new m.a() { // from class: io.sentry.clientreport.a
        @Override // io.sentry.util.m.a
        public final Object a() {
            Map d10;
            d10 = b.d();
            return d10;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Map d() {
        f[] values;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (f fVar : f.values()) {
            for (io.sentry.i iVar : io.sentry.i.values()) {
                concurrentHashMap.put(new d(fVar.getReason(), iVar.getCategory()), new AtomicLong(0L));
            }
        }
        return Collections.unmodifiableMap(concurrentHashMap);
    }

    @Override // io.sentry.clientreport.i
    public List a() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : ((Map) this.f22989a.a()).entrySet()) {
            Long valueOf = Long.valueOf(((AtomicLong) entry.getValue()).getAndSet(0L));
            if (valueOf.longValue() > 0) {
                arrayList.add(new g(((d) entry.getKey()).b(), ((d) entry.getKey()).a(), valueOf));
            }
        }
        return arrayList;
    }

    @Override // io.sentry.clientreport.i
    public void b(d dVar, Long l10) {
        AtomicLong atomicLong = (AtomicLong) ((Map) this.f22989a.a()).get(dVar);
        if (atomicLong != null) {
            atomicLong.addAndGet(l10.longValue());
        }
    }
}
