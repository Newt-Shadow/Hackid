package d4;

import android.os.Bundle;
import b3.r;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class u0 implements b3.r {

    /* renamed from: d  reason: collision with root package name */
    public static final u0 f14959d = new u0(new s0[0]);

    /* renamed from: e  reason: collision with root package name */
    private static final String f14960e = y4.q0.q0(0);

    /* renamed from: f  reason: collision with root package name */
    public static final r.a f14961f = new r.a() { // from class: d4.t0
        @Override // b3.r.a
        public final b3.r fromBundle(Bundle bundle) {
            u0 d10;
            d10 = u0.d(bundle);
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f14962a;

    /* renamed from: b  reason: collision with root package name */
    private final o6.q f14963b;

    /* renamed from: c  reason: collision with root package name */
    private int f14964c;

    public u0(s0... s0VarArr) {
        this.f14963b = o6.q.y(s0VarArr);
        this.f14962a = s0VarArr.length;
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ u0 d(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(f14960e);
        if (parcelableArrayList == null) {
            return new u0(new s0[0]);
        }
        return new u0((s0[]) y4.c.b(s0.f14949h, parcelableArrayList).toArray(new s0[0]));
    }

    private void e() {
        int i10 = 0;
        while (i10 < this.f14963b.size()) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < this.f14963b.size(); i12++) {
                if (((s0) this.f14963b.get(i10)).equals(this.f14963b.get(i12))) {
                    y4.r.d("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i10 = i11;
        }
    }

    public s0 b(int i10) {
        return (s0) this.f14963b.get(i10);
    }

    public int c(s0 s0Var) {
        int indexOf = this.f14963b.indexOf(s0Var);
        if (indexOf < 0) {
            return -1;
        }
        return indexOf;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u0.class != obj.getClass()) {
            return false;
        }
        u0 u0Var = (u0) obj;
        if (this.f14962a == u0Var.f14962a && this.f14963b.equals(u0Var.f14963b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.f14964c == 0) {
            this.f14964c = this.f14963b.hashCode();
        }
        return this.f14964c;
    }
}
