package h1;

import android.os.Bundle;
import androidx.lifecycle.i;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: d  reason: collision with root package name */
    public static final a f16724d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final f f16725a;

    /* renamed from: b  reason: collision with root package name */
    private final d f16726b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f16727c;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a(f owner) {
            m.e(owner, "owner");
            return new e(owner, null);
        }
    }

    public /* synthetic */ e(f fVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(fVar);
    }

    public static final e a(f fVar) {
        return f16724d.a(fVar);
    }

    public final d b() {
        return this.f16726b;
    }

    public final void c() {
        boolean z10;
        i lifecycle = this.f16725a.getLifecycle();
        if (lifecycle.b() == i.b.INITIALIZED) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            lifecycle.a(new b(this.f16725a));
            this.f16726b.e(lifecycle);
            this.f16727c = true;
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage".toString());
    }

    public final void d(Bundle bundle) {
        if (!this.f16727c) {
            c();
        }
        i lifecycle = this.f16725a.getLifecycle();
        if (!lifecycle.b().b(i.b.STARTED)) {
            this.f16726b.f(bundle);
            return;
        }
        throw new IllegalStateException(("performRestore cannot be called when owner is " + lifecycle.b()).toString());
    }

    public final void e(Bundle outBundle) {
        m.e(outBundle, "outBundle");
        this.f16726b.g(outBundle);
    }

    private e(f fVar) {
        this.f16725a = fVar;
        this.f16726b = new d();
    }
}
