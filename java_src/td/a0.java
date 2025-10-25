package td;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public class a0 {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f30620b = AtomicIntegerFieldUpdater.newUpdater(a0.class, "_handled$volatile");
    private volatile /* synthetic */ int _handled$volatile;

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f30621a;

    public a0(Throwable th, boolean z10) {
        this.f30621a = th;
        this._handled$volatile = z10 ? 1 : 0;
    }

    public final boolean a() {
        if (f30620b.get(this) != 0) {
            return true;
        }
        return false;
    }

    public final boolean c() {
        return f30620b.compareAndSet(this, 0, 1);
    }

    public String toString() {
        return p0.a(this) + '[' + this.f30621a + ']';
    }

    public /* synthetic */ a0(Throwable th, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, (i10 & 2) != 0 ? false : z10);
    }
}
