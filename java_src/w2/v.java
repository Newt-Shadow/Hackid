package w2;

import java.util.concurrent.Executor;
import y2.b;
/* loaded from: classes.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f31717a;

    /* renamed from: b  reason: collision with root package name */
    private final x2.d f31718b;

    /* renamed from: c  reason: collision with root package name */
    private final x f31719c;

    /* renamed from: d  reason: collision with root package name */
    private final y2.b f31720d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(Executor executor, x2.d dVar, x xVar, y2.b bVar) {
        this.f31717a = executor;
        this.f31718b = dVar;
        this.f31719c = xVar;
        this.f31720d = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d() {
        for (p2.p pVar : this.f31718b.U()) {
            this.f31719c.a(pVar, 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f31720d.a(new b.a() { // from class: w2.u
            @Override // y2.b.a
            public final Object execute() {
                Object d10;
                d10 = v.this.d();
                return d10;
            }
        });
    }

    public void c() {
        this.f31717a.execute(new Runnable() { // from class: w2.t
            @Override // java.lang.Runnable
            public final void run() {
                v.this.e();
            }
        });
    }
}
