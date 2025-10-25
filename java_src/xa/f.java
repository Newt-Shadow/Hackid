package xa;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class f implements d9.q {

    /* renamed from: a  reason: collision with root package name */
    private d9.l f32620a;

    /* renamed from: b  reason: collision with root package name */
    private List f32621b = new ArrayList();

    public f(d9.l lVar) {
        this.f32620a = lVar;
    }

    @Override // d9.q
    public void a(d9.p pVar) {
        this.f32621b.add(pVar);
    }

    protected d9.n b(d9.c cVar) {
        this.f32621b.clear();
        try {
            d9.l lVar = this.f32620a;
            if (lVar instanceof d9.i) {
                d9.n e10 = ((d9.i) lVar).e(cVar);
                this.f32620a.a();
                return e10;
            }
            d9.n c10 = lVar.c(cVar);
            this.f32620a.a();
            return c10;
        } catch (Exception unused) {
            this.f32620a.a();
            return null;
        } catch (Throwable th) {
            this.f32620a.a();
            throw th;
        }
    }

    public d9.n c(d9.h hVar) {
        return b(e(hVar));
    }

    public List d() {
        return new ArrayList(this.f32621b);
    }

    protected d9.c e(d9.h hVar) {
        return new d9.c(new j9.k(hVar));
    }
}
