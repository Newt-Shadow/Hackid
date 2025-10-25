package xa;
/* loaded from: classes.dex */
public class l extends f {

    /* renamed from: c  reason: collision with root package name */
    private boolean f32640c;

    public l(d9.l lVar) {
        super(lVar);
        this.f32640c = true;
    }

    @Override // xa.f
    protected d9.c e(d9.h hVar) {
        if (this.f32640c) {
            this.f32640c = false;
            return new d9.c(new j9.k(hVar.e()));
        }
        this.f32640c = true;
        return new d9.c(new j9.k(hVar));
    }
}
