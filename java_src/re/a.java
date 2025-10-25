package re;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f29125a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f29126b;

    /* renamed from: c  reason: collision with root package name */
    private d f29127c;

    /* renamed from: d  reason: collision with root package name */
    private long f29128d;

    public a(String name, boolean z10) {
        m.e(name, "name");
        this.f29125a = name;
        this.f29126b = z10;
        this.f29128d = -1L;
    }

    public final boolean a() {
        return this.f29126b;
    }

    public final String b() {
        return this.f29125a;
    }

    public final long c() {
        return this.f29128d;
    }

    public final d d() {
        return this.f29127c;
    }

    public final void e(d queue) {
        boolean z10;
        m.e(queue, "queue");
        d dVar = this.f29127c;
        if (dVar == queue) {
            return;
        }
        if (dVar == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f29127c = queue;
            return;
        }
        throw new IllegalStateException("task is in multiple queues".toString());
    }

    public abstract long f();

    public final void g(long j10) {
        this.f29128d = j10;
    }

    public String toString() {
        return this.f29125a;
    }

    public /* synthetic */ a(String str, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? true : z10);
    }
}
