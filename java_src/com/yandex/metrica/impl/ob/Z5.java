package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public final class Z5 {

    /* renamed from: a  reason: collision with root package name */
    private final EnumC0526f6 f11858a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f11859b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private EnumC0526f6 f11860a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f11861b;

        private b(EnumC0526f6 enumC0526f6) {
            this.f11860a = enumC0526f6;
        }

        public b a(int i10) {
            this.f11861b = Integer.valueOf(i10);
            return this;
        }

        public Z5 a() {
            return new Z5(this);
        }
    }

    public static final b a(EnumC0526f6 enumC0526f6) {
        return new b(enumC0526f6);
    }

    public EnumC0526f6 b() {
        return this.f11858a;
    }

    private Z5(b bVar) {
        this.f11858a = bVar.f11860a;
        this.f11859b = bVar.f11861b;
    }

    public Integer a() {
        return this.f11859b;
    }
}
