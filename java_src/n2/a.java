package n2;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a extends d {

    /* renamed from: a  reason: collision with root package name */
    private final Integer f26102a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f26103b;

    /* renamed from: c  reason: collision with root package name */
    private final f f26104c;

    /* renamed from: d  reason: collision with root package name */
    private final g f26105d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Integer num, Object obj, f fVar, g gVar, e eVar) {
        this.f26102a = num;
        if (obj != null) {
            this.f26103b = obj;
            if (fVar != null) {
                this.f26104c = fVar;
                this.f26105d = gVar;
                return;
            }
            throw new NullPointerException("Null priority");
        }
        throw new NullPointerException("Null payload");
    }

    @Override // n2.d
    public Integer a() {
        return this.f26102a;
    }

    @Override // n2.d
    public e b() {
        return null;
    }

    @Override // n2.d
    public Object c() {
        return this.f26103b;
    }

    @Override // n2.d
    public f d() {
        return this.f26104c;
    }

    @Override // n2.d
    public g e() {
        return this.f26105d;
    }

    public boolean equals(Object obj) {
        g gVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        Integer num = this.f26102a;
        if (num != null ? num.equals(dVar.a()) : dVar.a() == null) {
            if (this.f26103b.equals(dVar.c()) && this.f26104c.equals(dVar.d()) && ((gVar = this.f26105d) != null ? gVar.equals(dVar.e()) : dVar.e() == null)) {
                dVar.b();
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        Integer num = this.f26102a;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int hashCode3 = (((((hashCode ^ 1000003) * 1000003) ^ this.f26103b.hashCode()) * 1000003) ^ this.f26104c.hashCode()) * 1000003;
        g gVar = this.f26105d;
        if (gVar == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = gVar.hashCode();
        }
        return ((hashCode3 ^ hashCode2) * 1000003) ^ 0;
    }

    public String toString() {
        return "Event{code=" + this.f26102a + ", payload=" + this.f26103b + ", priority=" + this.f26104c + ", productData=" + this.f26105d + ", eventContext=" + ((Object) null) + "}";
    }
}
