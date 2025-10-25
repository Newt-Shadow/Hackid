package io.sentry;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public final class b0 {

    /* renamed from: b  reason: collision with root package name */
    private static final b0 f22896b = new b0();

    /* renamed from: a  reason: collision with root package name */
    private final List f22897a = new CopyOnWriteArrayList();

    /* loaded from: classes2.dex */
    public interface a {
    }

    private b0() {
    }

    public static b0 a() {
        return f22896b;
    }

    public void b(a aVar) {
        this.f22897a.add(aVar);
    }
}
