package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.ud  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0901ud implements InterfaceC0949wd {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0949wd f13689a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0949wd f13690b;

    /* renamed from: com.yandex.metrica.impl.ob.ud$a */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private InterfaceC0949wd f13691a;

        /* renamed from: b  reason: collision with root package name */
        private InterfaceC0949wd f13692b;

        public a(InterfaceC0949wd interfaceC0949wd, InterfaceC0949wd interfaceC0949wd2) {
            this.f13691a = interfaceC0949wd;
            this.f13692b = interfaceC0949wd2;
        }

        public a a(C0787pi c0787pi) {
            this.f13692b = new Fd(c0787pi.E());
            return this;
        }

        public a a(boolean z10) {
            this.f13691a = new C0973xd(z10);
            return this;
        }

        public C0901ud a() {
            return new C0901ud(this.f13691a, this.f13692b);
        }
    }

    C0901ud(InterfaceC0949wd interfaceC0949wd, InterfaceC0949wd interfaceC0949wd2) {
        this.f13689a = interfaceC0949wd;
        this.f13690b = interfaceC0949wd2;
    }

    public static a b() {
        return new a(new C0973xd(false), new Fd(null));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0949wd
    public boolean a(String str) {
        return this.f13690b.a(str) && this.f13689a.a(str);
    }

    public String toString() {
        return "AskForPermissionsStrategy{mLocationFlagStrategy=" + this.f13689a + ", mStartupStateStrategy=" + this.f13690b + '}';
    }

    public a a() {
        return new a(this.f13689a, this.f13690b);
    }
}
