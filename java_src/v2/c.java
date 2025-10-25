package v2;

import java.util.concurrent.Executor;
import java.util.logging.Logger;
import n2.k;
import p2.p;
import p2.u;
import q2.m;
import w2.x;
import y2.b;
/* loaded from: classes.dex */
public class c implements e {

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f31179f = Logger.getLogger(u.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final x f31180a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f31181b;

    /* renamed from: c  reason: collision with root package name */
    private final q2.e f31182c;

    /* renamed from: d  reason: collision with root package name */
    private final x2.d f31183d;

    /* renamed from: e  reason: collision with root package name */
    private final y2.b f31184e;

    public c(Executor executor, q2.e eVar, x xVar, x2.d dVar, y2.b bVar) {
        this.f31181b = executor;
        this.f31182c = eVar;
        this.f31180a = xVar;
        this.f31183d = dVar;
        this.f31184e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d(p pVar, p2.i iVar) {
        this.f31183d.I(pVar, iVar);
        this.f31180a.a(pVar, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(final p pVar, k kVar, p2.i iVar) {
        try {
            m mVar = this.f31182c.get(pVar.b());
            if (mVar == null) {
                String format = String.format("Transport backend '%s' is not registered", pVar.b());
                f31179f.warning(format);
                kVar.a(new IllegalArgumentException(format));
                return;
            }
            final p2.i a10 = mVar.a(iVar);
            this.f31184e.a(new b.a() { // from class: v2.b
                @Override // y2.b.a
                public final Object execute() {
                    Object d10;
                    d10 = c.this.d(pVar, a10);
                    return d10;
                }
            });
            kVar.a(null);
        } catch (Exception e10) {
            Logger logger = f31179f;
            logger.warning("Error scheduling event " + e10.getMessage());
            kVar.a(e10);
        }
    }

    @Override // v2.e
    public void a(final p pVar, final p2.i iVar, final k kVar) {
        this.f31181b.execute(new Runnable() { // from class: v2.a
            @Override // java.lang.Runnable
            public final void run() {
                c.this.e(pVar, kVar, iVar);
            }
        });
    }
}
