package ke;
/* loaded from: classes2.dex */
public final class h extends g {

    /* renamed from: c  reason: collision with root package name */
    private final je.b f24914c;

    /* renamed from: d  reason: collision with root package name */
    private int f24915d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(l writer, je.b json) {
        super(writer);
        kotlin.jvm.internal.m.e(writer, "writer");
        kotlin.jvm.internal.m.e(json, "json");
        this.f24914c = json;
    }

    @Override // ke.g
    public void b() {
        l(true);
        this.f24915d++;
    }

    @Override // ke.g
    public void c() {
        l(false);
        i("\n");
        int i10 = this.f24915d;
        for (int i11 = 0; i11 < i10; i11++) {
            i(this.f24914c.c().n());
        }
    }

    @Override // ke.g
    public void d() {
        if (a()) {
            l(false);
        } else {
            c();
        }
    }

    @Override // ke.g
    public void m() {
        e(' ');
    }

    @Override // ke.g
    public void n() {
        this.f24915d--;
    }
}
