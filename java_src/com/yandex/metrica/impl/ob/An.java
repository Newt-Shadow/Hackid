package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
class An extends tn<F2> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public An(Bn bn, F2 f22) {
        super(f22);
    }

    @Override // com.yandex.metrica.impl.ob.tn
    protected boolean a(tn<F2> tnVar) {
        String str = ((F2) this.f13663a).f10056a;
        if (str == null ? tnVar.f13663a.f10056a != null : !str.equals(tnVar.f13663a.f10056a)) {
            return false;
        }
        String str2 = ((F2) this.f13663a).f10057b;
        if (str2 != null) {
            return str2.equals(tnVar.f13663a.f10057b);
        }
        if (tnVar.f13663a.f10057b != null) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i10;
        String str = ((F2) this.f13663a).f10056a;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        String str2 = ((F2) this.f13663a).f10057b;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }
}
