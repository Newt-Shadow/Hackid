package w4;

import android.os.Bundle;
import b3.r;
import d4.s0;
import java.util.Collections;
import java.util.List;
import y4.q0;
/* loaded from: classes.dex */
public final class d0 implements b3.r {

    /* renamed from: c  reason: collision with root package name */
    private static final String f31777c = q0.q0(0);

    /* renamed from: d  reason: collision with root package name */
    private static final String f31778d = q0.q0(1);

    /* renamed from: e  reason: collision with root package name */
    public static final r.a f31779e = new r.a() { // from class: w4.c0
        @Override // b3.r.a
        public final b3.r fromBundle(Bundle bundle) {
            d0 c10;
            c10 = d0.c(bundle);
            return c10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final s0 f31780a;

    /* renamed from: b  reason: collision with root package name */
    public final o6.q f31781b;

    public d0(s0 s0Var, List list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= s0Var.f14950a)) {
            throw new IndexOutOfBoundsException();
        }
        this.f31780a = s0Var;
        this.f31781b = o6.q.t(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ d0 c(Bundle bundle) {
        return new d0((s0) s0.f14949h.fromBundle((Bundle) y4.a.e(bundle.getBundle(f31777c))), q6.e.c((int[]) y4.a.e(bundle.getIntArray(f31778d))));
    }

    public int b() {
        return this.f31780a.f14952c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d0.class != obj.getClass()) {
            return false;
        }
        d0 d0Var = (d0) obj;
        if (this.f31780a.equals(d0Var.f31780a) && this.f31781b.equals(d0Var.f31781b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f31780a.hashCode() + (this.f31781b.hashCode() * 31);
    }
}
