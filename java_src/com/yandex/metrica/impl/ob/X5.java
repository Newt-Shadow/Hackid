package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class X5 {

    /* renamed from: a  reason: collision with root package name */
    private final EnumC0526f6 f11729a;

    /* renamed from: b  reason: collision with root package name */
    private final Long f11730b;

    /* renamed from: c  reason: collision with root package name */
    private final Long f11731c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f11732d;

    /* renamed from: e  reason: collision with root package name */
    private final Long f11733e;

    /* renamed from: f  reason: collision with root package name */
    private final Boolean f11734f;

    /* renamed from: g  reason: collision with root package name */
    private final Long f11735g;

    /* renamed from: h  reason: collision with root package name */
    private final Long f11736h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public Long f11737a;

        /* renamed from: b  reason: collision with root package name */
        private EnumC0526f6 f11738b;

        /* renamed from: c  reason: collision with root package name */
        private Long f11739c;

        /* renamed from: d  reason: collision with root package name */
        private Long f11740d;

        /* renamed from: e  reason: collision with root package name */
        private Integer f11741e;

        /* renamed from: f  reason: collision with root package name */
        private Long f11742f;

        /* renamed from: g  reason: collision with root package name */
        private Boolean f11743g;

        /* renamed from: h  reason: collision with root package name */
        private Long f11744h;

        private b(Z5 z52) {
            this.f11738b = z52.b();
            this.f11741e = z52.a();
        }

        public b a(Long l10) {
            this.f11740d = l10;
            return this;
        }

        public b b(Long l10) {
            this.f11742f = l10;
            return this;
        }

        public b c(Long l10) {
            this.f11739c = l10;
            return this;
        }

        public b d(Long l10) {
            this.f11744h = l10;
            return this;
        }

        public b a(Boolean bool) {
            this.f11743g = bool;
            return this;
        }
    }

    public EnumC0526f6 a() {
        return this.f11729a;
    }

    public long b(long j10) {
        Long l10 = this.f11733e;
        if (l10 != null) {
            return l10.longValue();
        }
        return j10;
    }

    public long c(long j10) {
        Long l10 = this.f11730b;
        if (l10 != null) {
            return l10.longValue();
        }
        return j10;
    }

    public long d(long j10) {
        Long l10 = this.f11736h;
        if (l10 != null) {
            return l10.longValue();
        }
        return j10;
    }

    public long e(long j10) {
        Long l10 = this.f11735g;
        if (l10 != null) {
            return l10.longValue();
        }
        return j10;
    }

    private X5(b bVar) {
        this.f11729a = bVar.f11738b;
        this.f11732d = bVar.f11741e;
        this.f11730b = bVar.f11739c;
        this.f11731c = bVar.f11740d;
        this.f11733e = bVar.f11742f;
        this.f11734f = bVar.f11743g;
        this.f11735g = bVar.f11744h;
        this.f11736h = bVar.f11737a;
    }

    public long a(long j10) {
        Long l10 = this.f11731c;
        return l10 == null ? j10 : l10.longValue();
    }

    public int a(int i10) {
        Integer num = this.f11732d;
        return num == null ? i10 : num.intValue();
    }

    public boolean a(boolean z10) {
        Boolean bool = this.f11734f;
        return bool == null ? z10 : bool.booleanValue();
    }
}
