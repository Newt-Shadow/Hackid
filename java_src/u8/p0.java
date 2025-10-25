package u8;
/* loaded from: classes.dex */
public final class p0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f30965a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30966b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30967c;

    /* renamed from: d  reason: collision with root package name */
    private final long f30968d;

    /* renamed from: e  reason: collision with root package name */
    private final e f30969e;

    /* renamed from: f  reason: collision with root package name */
    private final String f30970f;

    /* renamed from: g  reason: collision with root package name */
    private final String f30971g;

    public p0(String sessionId, String firstSessionId, int i10, long j10, e dataCollectionStatus, String firebaseInstallationId, String firebaseAuthenticationToken) {
        kotlin.jvm.internal.m.e(sessionId, "sessionId");
        kotlin.jvm.internal.m.e(firstSessionId, "firstSessionId");
        kotlin.jvm.internal.m.e(dataCollectionStatus, "dataCollectionStatus");
        kotlin.jvm.internal.m.e(firebaseInstallationId, "firebaseInstallationId");
        kotlin.jvm.internal.m.e(firebaseAuthenticationToken, "firebaseAuthenticationToken");
        this.f30965a = sessionId;
        this.f30966b = firstSessionId;
        this.f30967c = i10;
        this.f30968d = j10;
        this.f30969e = dataCollectionStatus;
        this.f30970f = firebaseInstallationId;
        this.f30971g = firebaseAuthenticationToken;
    }

    public final e a() {
        return this.f30969e;
    }

    public final long b() {
        return this.f30968d;
    }

    public final String c() {
        return this.f30971g;
    }

    public final String d() {
        return this.f30970f;
    }

    public final String e() {
        return this.f30966b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof p0) {
            p0 p0Var = (p0) obj;
            return kotlin.jvm.internal.m.a(this.f30965a, p0Var.f30965a) && kotlin.jvm.internal.m.a(this.f30966b, p0Var.f30966b) && this.f30967c == p0Var.f30967c && this.f30968d == p0Var.f30968d && kotlin.jvm.internal.m.a(this.f30969e, p0Var.f30969e) && kotlin.jvm.internal.m.a(this.f30970f, p0Var.f30970f) && kotlin.jvm.internal.m.a(this.f30971g, p0Var.f30971g);
        }
        return false;
    }

    public final String f() {
        return this.f30965a;
    }

    public final int g() {
        return this.f30967c;
    }

    public int hashCode() {
        return (((((((((((this.f30965a.hashCode() * 31) + this.f30966b.hashCode()) * 31) + Integer.hashCode(this.f30967c)) * 31) + Long.hashCode(this.f30968d)) * 31) + this.f30969e.hashCode()) * 31) + this.f30970f.hashCode()) * 31) + this.f30971g.hashCode();
    }

    public String toString() {
        return "SessionInfo(sessionId=" + this.f30965a + ", firstSessionId=" + this.f30966b + ", sessionIndex=" + this.f30967c + ", eventTimestampUs=" + this.f30968d + ", dataCollectionStatus=" + this.f30969e + ", firebaseInstallationId=" + this.f30970f + ", firebaseAuthenticationToken=" + this.f30971g + ')';
    }
}
