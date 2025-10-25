package g8;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements d8.g {

    /* renamed from: a  reason: collision with root package name */
    private boolean f16325a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f16326b = false;

    /* renamed from: c  reason: collision with root package name */
    private d8.c f16327c;

    /* renamed from: d  reason: collision with root package name */
    private final f f16328d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(f fVar) {
        this.f16328d = fVar;
    }

    private void a() {
        if (!this.f16325a) {
            this.f16325a = true;
            return;
        }
        throw new d8.b("Cannot encode a second value in the ValueEncoderContext");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(d8.c cVar, boolean z10) {
        this.f16325a = false;
        this.f16327c = cVar;
        this.f16326b = z10;
    }

    @Override // d8.g
    public d8.g d(String str) {
        a();
        this.f16328d.i(this.f16327c, str, this.f16326b);
        return this;
    }

    @Override // d8.g
    public d8.g e(boolean z10) {
        a();
        this.f16328d.o(this.f16327c, z10, this.f16326b);
        return this;
    }
}
