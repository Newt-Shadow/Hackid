package z5;

import android.content.Context;
import m5.q;
import m5.u;
import m6.Task;
/* loaded from: classes.dex */
public final class c extends f5.b {
    public c(Context context) {
        super(context);
    }

    @Override // f5.b
    public final Task A(final String str) {
        return n(u.a().b(new q() { // from class: z5.l
            @Override // m5.q
            public final void a(Object obj, Object obj2) {
                ((g) ((j) obj).D()).g1(str, new b(c.this, (m6.l) obj2));
            }
        }).d(d.f33549d).e(1568).a());
    }

    @Override // f5.b
    public final Task z() {
        return n(u.a().b(new q() { // from class: z5.k
            @Override // m5.q
            public final void a(Object obj, Object obj2) {
                ((g) ((j) obj).D()).f1(new m(c.this, (m6.l) obj2));
            }
        }).d(d.f33548c).e(1567).a());
    }
}
