package u9;
/* loaded from: classes.dex */
abstract class f extends i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public f(j9.a aVar) {
        super(aVar);
    }

    @Override // u9.j
    public String d() {
        if (c().i() == 60) {
            StringBuilder sb2 = new StringBuilder();
            f(sb2, 5);
            j(sb2, 45, 15);
            return sb2.toString();
        }
        throw d9.j.a();
    }
}
