package td;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c1 implements p1 {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f30631a;

    public c1(boolean z10) {
        this.f30631a = z10;
    }

    @Override // td.p1
    public e2 b() {
        return null;
    }

    @Override // td.p1
    public boolean isActive() {
        return this.f30631a;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Empty{");
        if (isActive()) {
            str = "Active";
        } else {
            str = "New";
        }
        sb2.append(str);
        sb2.append('}');
        return sb2.toString();
    }
}
