package x5;

import android.content.Context;
import m6.Task;
/* loaded from: classes.dex */
public final class r implements c5.a {

    /* renamed from: a  reason: collision with root package name */
    private final c5.a f32501a;

    /* renamed from: b  reason: collision with root package name */
    private final c5.a f32502b;

    public r(Context context) {
        this.f32501a = new p(context, l5.g.f());
        this.f32502b = l.d(context);
    }

    public static /* synthetic */ Task b(r rVar, Task task) {
        if (!task.p() && !task.n()) {
            Exception k10 = task.k();
            if (k10 instanceof com.google.android.gms.common.api.b) {
                int statusCode = ((com.google.android.gms.common.api.b) k10).getStatusCode();
                if (statusCode != 43001 && statusCode != 43002 && statusCode != 43003 && statusCode != 17) {
                    if (statusCode == 43000) {
                        return m6.n.d(new Exception("Failed to get app set ID due to an internal error. Please try again later."));
                    }
                    if (statusCode == 15) {
                        return m6.n.d(new Exception("The operation to get app set ID timed out. Please try again later."));
                    }
                    return task;
                }
                return rVar.f32502b.a();
            }
            return task;
        }
        return task;
    }

    @Override // c5.a
    public final Task a() {
        return this.f32501a.a().j(new m6.c() { // from class: x5.q
            @Override // m6.c
            public final Object a(Task task) {
                return r.b(r.this, task);
            }
        });
    }
}
