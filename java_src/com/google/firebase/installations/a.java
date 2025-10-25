package com.google.firebase.installations;

import com.google.firebase.installations.g;
/* loaded from: classes.dex */
final class a extends g {

    /* renamed from: a  reason: collision with root package name */
    private final String f8767a;

    /* renamed from: b  reason: collision with root package name */
    private final long f8768b;

    /* renamed from: c  reason: collision with root package name */
    private final long f8769c;

    /* loaded from: classes.dex */
    static final class b extends g.a {

        /* renamed from: a  reason: collision with root package name */
        private String f8770a;

        /* renamed from: b  reason: collision with root package name */
        private Long f8771b;

        /* renamed from: c  reason: collision with root package name */
        private Long f8772c;

        @Override // com.google.firebase.installations.g.a
        public g a() {
            String str = "";
            if (this.f8770a == null) {
                str = " token";
            }
            if (this.f8771b == null) {
                str = str + " tokenExpirationTimestamp";
            }
            if (this.f8772c == null) {
                str = str + " tokenCreationTimestamp";
            }
            if (str.isEmpty()) {
                return new a(this.f8770a, this.f8771b.longValue(), this.f8772c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.g.a
        public g.a b(String str) {
            if (str != null) {
                this.f8770a = str;
                return this;
            }
            throw new NullPointerException("Null token");
        }

        @Override // com.google.firebase.installations.g.a
        public g.a c(long j10) {
            this.f8772c = Long.valueOf(j10);
            return this;
        }

        @Override // com.google.firebase.installations.g.a
        public g.a d(long j10) {
            this.f8771b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // com.google.firebase.installations.g
    public String b() {
        return this.f8767a;
    }

    @Override // com.google.firebase.installations.g
    public long c() {
        return this.f8769c;
    }

    @Override // com.google.firebase.installations.g
    public long d() {
        return this.f8768b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f8767a.equals(gVar.b()) && this.f8768b == gVar.d() && this.f8769c == gVar.c()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f8768b;
        long j11 = this.f8769c;
        return ((((this.f8767a.hashCode() ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f8767a + ", tokenExpirationTimestamp=" + this.f8768b + ", tokenCreationTimestamp=" + this.f8769c + "}";
    }

    private a(String str, long j10, long j11) {
        this.f8767a = str;
        this.f8768b = j10;
        this.f8769c = j11;
    }
}
