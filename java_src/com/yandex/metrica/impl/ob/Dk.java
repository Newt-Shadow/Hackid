package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
class Dk implements Yk {

    /* renamed from: a  reason: collision with root package name */
    private final C0739nk f9925a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Dk() {
        this(new C0739nk());
    }

    @Override // com.yandex.metrica.impl.ob.Yk
    public boolean a(String str, C0957wl c0957wl) {
        if (c0957wl.f13907g) {
            this.f9925a.getClass();
            return A2.a("do-not-parse", str);
        } else if (!A2.a("allow-parsing", str)) {
            return true;
        } else {
            return false;
        }
    }

    Dk(C0739nk c0739nk) {
        this.f9925a = c0739nk;
    }
}
