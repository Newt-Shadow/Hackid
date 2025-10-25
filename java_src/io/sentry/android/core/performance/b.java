package io.sentry.android.core.performance;
/* loaded from: classes2.dex */
public class b implements Comparable {

    /* renamed from: a  reason: collision with root package name */
    private final h f22436a = new h();

    /* renamed from: b  reason: collision with root package name */
    private final h f22437b = new h();

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(b bVar) {
        int compare = Long.compare(this.f22436a.p(), bVar.f22436a.p());
        if (compare == 0) {
            return Long.compare(this.f22437b.p(), bVar.f22437b.p());
        }
        return compare;
    }

    public final h b() {
        return this.f22436a;
    }

    public final h f() {
        return this.f22437b;
    }
}
