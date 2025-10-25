package u9;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c extends h {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(j9.a aVar) {
        super(aVar);
    }

    @Override // u9.j
    public String d() {
        if (c().i() >= 48) {
            StringBuilder sb2 = new StringBuilder();
            f(sb2, 8);
            int f10 = b().f(48, 2);
            sb2.append("(392");
            sb2.append(f10);
            sb2.append(')');
            sb2.append(b().c(50, null).b());
            return sb2.toString();
        }
        throw d9.j.a();
    }
}
