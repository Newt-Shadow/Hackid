package io.sentry;
/* loaded from: classes2.dex */
public final class x6 {

    /* renamed from: a  reason: collision with root package name */
    private final Boolean f23924a;

    /* renamed from: b  reason: collision with root package name */
    private final Double f23925b;

    /* renamed from: c  reason: collision with root package name */
    private final Boolean f23926c;

    /* renamed from: d  reason: collision with root package name */
    private final Double f23927d;

    public x6(Boolean bool) {
        this(bool, null);
    }

    public Double a() {
        return this.f23927d;
    }

    public Boolean b() {
        return this.f23926c;
    }

    public Double c() {
        return this.f23925b;
    }

    public Boolean d() {
        return this.f23924a;
    }

    public x6(Boolean bool, Double d10) {
        this(bool, d10, Boolean.FALSE, null);
    }

    public x6(Boolean bool, Double d10, Boolean bool2, Double d11) {
        this.f23924a = bool;
        this.f23925b = d10;
        this.f23926c = Boolean.valueOf(bool.booleanValue() && bool2.booleanValue());
        this.f23927d = d11;
    }
}
