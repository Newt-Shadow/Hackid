package af;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public class b1 {

    /* renamed from: d  reason: collision with root package name */
    public static final b f353d = new b(null);

    /* renamed from: e  reason: collision with root package name */
    public static final b1 f354e = new a();

    /* renamed from: a  reason: collision with root package name */
    private boolean f355a;

    /* renamed from: b  reason: collision with root package name */
    private long f356b;

    /* renamed from: c  reason: collision with root package name */
    private long f357c;

    /* loaded from: classes2.dex */
    public static final class a extends b1 {
        a() {
        }

        @Override // af.b1
        public b1 d(long j10) {
            return this;
        }

        @Override // af.b1
        public void f() {
        }

        @Override // af.b1
        public b1 g(long j10, TimeUnit unit) {
            kotlin.jvm.internal.m.e(unit, "unit");
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b1 a() {
        this.f355a = false;
        return this;
    }

    public b1 b() {
        this.f357c = 0L;
        return this;
    }

    public long c() {
        if (this.f355a) {
            return this.f356b;
        }
        throw new IllegalStateException("No deadline".toString());
    }

    public b1 d(long j10) {
        this.f355a = true;
        this.f356b = j10;
        return this;
    }

    public boolean e() {
        return this.f355a;
    }

    public void f() {
        if (!Thread.currentThread().isInterrupted()) {
            if (this.f355a && this.f356b - System.nanoTime() <= 0) {
                throw new InterruptedIOException("deadline reached");
            }
            return;
        }
        throw new InterruptedIOException("interrupted");
    }

    public b1 g(long j10, TimeUnit unit) {
        boolean z10;
        kotlin.jvm.internal.m.e(unit, "unit");
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f357c = unit.toNanos(j10);
            return this;
        }
        throw new IllegalArgumentException(("timeout < 0: " + j10).toString());
    }

    public long h() {
        return this.f357c;
    }
}
