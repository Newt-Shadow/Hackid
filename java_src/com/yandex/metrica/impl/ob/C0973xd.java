package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.xd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0973xd implements InterfaceC0949wd {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f13945a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0973xd(boolean z10) {
        this.f13945a = z10;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0949wd
    public boolean a(String str) {
        if (!"android.permission.ACCESS_FINE_LOCATION".equals(str) && !"android.permission.ACCESS_COARSE_LOCATION".equals(str)) {
            return true;
        }
        return this.f13945a;
    }

    public String toString() {
        return "LocationFlagStrategy{mEnabled=" + this.f13945a + '}';
    }
}
