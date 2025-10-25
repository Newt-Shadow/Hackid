package io.sentry.internal.modules;

import io.sentry.ILogger;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class a extends d {

    /* renamed from: d  reason: collision with root package name */
    private final List f23178d;

    public a(List list, ILogger iLogger) {
        super(iLogger);
        this.f23178d = list;
    }

    @Override // io.sentry.internal.modules.d
    protected Map b() {
        TreeMap treeMap = new TreeMap();
        for (b bVar : this.f23178d) {
            Map a10 = bVar.a();
            if (a10 != null) {
                treeMap.putAll(a10);
            }
        }
        return treeMap;
    }
}
