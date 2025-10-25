package u9;
/* loaded from: classes.dex */
final class b extends f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public b(j9.a aVar) {
        super(aVar);
    }

    @Override // u9.i
    protected void h(StringBuilder sb2, int i10) {
        if (i10 < 10000) {
            sb2.append("(3202)");
        } else {
            sb2.append("(3203)");
        }
    }

    @Override // u9.i
    protected int i(int i10) {
        return i10 < 10000 ? i10 : i10 - 10000;
    }
}
