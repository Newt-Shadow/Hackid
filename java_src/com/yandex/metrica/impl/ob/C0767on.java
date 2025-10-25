package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.on  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0767on extends tn<C0907uj> {

    /* renamed from: com.yandex.metrica.impl.ob.on$a */
    /* loaded from: classes2.dex */
    public static class a implements un<C0907uj> {
        @Override // com.yandex.metrica.impl.ob.un
        public tn a(C0907uj c0907uj) {
            return new C0767on(c0907uj);
        }
    }

    public C0767on(C0907uj c0907uj) {
        super(c0907uj);
    }

    @Override // com.yandex.metrica.impl.ob.tn
    public boolean a(tn<C0907uj> tnVar) {
        C0907uj c0907uj = tnVar.f13663a;
        T t10 = this.f13663a;
        if (t10 == c0907uj) {
            return true;
        }
        if (((C0907uj) t10).c() != c0907uj.c()) {
            return false;
        }
        if (((C0907uj) this.f13663a).k() == null ? c0907uj.k() != null : !((C0907uj) this.f13663a).k().equals(c0907uj.k())) {
            return false;
        }
        if (((C0907uj) this.f13663a).l() == null ? c0907uj.l() != null : !((C0907uj) this.f13663a).l().equals(c0907uj.l())) {
            return false;
        }
        if (((C0907uj) this.f13663a).e() == null ? c0907uj.e() != null : !((C0907uj) this.f13663a).e().equals(c0907uj.e())) {
            return false;
        }
        if (((C0907uj) this.f13663a).b() == null ? c0907uj.b() != null : !((C0907uj) this.f13663a).b().equals(c0907uj.b())) {
            return false;
        }
        if (((C0907uj) this.f13663a).m() == null ? c0907uj.m() != null : !((C0907uj) this.f13663a).m().equals(c0907uj.m())) {
            return false;
        }
        if (((C0907uj) this.f13663a).o() != null) {
            return ((C0907uj) this.f13663a).o().equals(c0907uj.o());
        }
        if (c0907uj.o() == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15 = 0;
        if (((C0907uj) this.f13663a).k() != null) {
            i10 = ((C0907uj) this.f13663a).k().hashCode();
        } else {
            i10 = 0;
        }
        int i16 = i10 * 31;
        if (((C0907uj) this.f13663a).l() != null) {
            i11 = ((C0907uj) this.f13663a).l().hashCode();
        } else {
            i11 = 0;
        }
        int i17 = (i16 + i11) * 31;
        if (((C0907uj) this.f13663a).e() != null) {
            i12 = ((C0907uj) this.f13663a).e().hashCode();
        } else {
            i12 = 0;
        }
        int i18 = (i17 + i12) * 31;
        if (((C0907uj) this.f13663a).b() != null) {
            i13 = ((C0907uj) this.f13663a).b().hashCode();
        } else {
            i13 = 0;
        }
        int i19 = (i18 + i13) * 31;
        if (((C0907uj) this.f13663a).m() != null) {
            i14 = ((C0907uj) this.f13663a).m().hashCode();
        } else {
            i14 = 0;
        }
        int c10 = (((i19 + i14) * 31) + ((C0907uj) this.f13663a).c()) * 31;
        if (((C0907uj) this.f13663a).o() != null) {
            i15 = ((C0907uj) this.f13663a).o().hashCode();
        }
        return c10 + i15;
    }
}
