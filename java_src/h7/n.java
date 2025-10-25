package h7;

import android.content.Context;
import android.text.TextUtils;
import n5.q;
import n5.t;
import org.apache.tika.metadata.ClimateForcast;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final String f16879a;

    /* renamed from: b  reason: collision with root package name */
    private final String f16880b;

    /* renamed from: c  reason: collision with root package name */
    private final String f16881c;

    /* renamed from: d  reason: collision with root package name */
    private final String f16882d;

    /* renamed from: e  reason: collision with root package name */
    private final String f16883e;

    /* renamed from: f  reason: collision with root package name */
    private final String f16884f;

    /* renamed from: g  reason: collision with root package name */
    private final String f16885g;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private String f16886a;

        /* renamed from: b  reason: collision with root package name */
        private String f16887b;

        /* renamed from: c  reason: collision with root package name */
        private String f16888c;

        /* renamed from: d  reason: collision with root package name */
        private String f16889d;

        /* renamed from: e  reason: collision with root package name */
        private String f16890e;

        /* renamed from: f  reason: collision with root package name */
        private String f16891f;

        /* renamed from: g  reason: collision with root package name */
        private String f16892g;

        public n a() {
            return new n(this.f16887b, this.f16886a, this.f16888c, this.f16889d, this.f16890e, this.f16891f, this.f16892g);
        }

        public b b(String str) {
            this.f16886a = q.f(str, "ApiKey must be set.");
            return this;
        }

        public b c(String str) {
            this.f16887b = q.f(str, "ApplicationId must be set.");
            return this;
        }

        public b d(String str) {
            this.f16888c = str;
            return this;
        }

        public b e(String str) {
            this.f16889d = str;
            return this;
        }

        public b f(String str) {
            this.f16890e = str;
            return this;
        }

        public b g(String str) {
            this.f16892g = str;
            return this;
        }

        public b h(String str) {
            this.f16891f = str;
            return this;
        }
    }

    public static n a(Context context) {
        t tVar = new t(context);
        String a10 = tVar.a("google_app_id");
        if (TextUtils.isEmpty(a10)) {
            return null;
        }
        return new n(a10, tVar.a("google_api_key"), tVar.a("firebase_database_url"), tVar.a("ga_trackingId"), tVar.a("gcm_defaultSenderId"), tVar.a("google_storage_bucket"), tVar.a(ClimateForcast.PROJECT_ID));
    }

    public String b() {
        return this.f16879a;
    }

    public String c() {
        return this.f16880b;
    }

    public String d() {
        return this.f16881c;
    }

    public String e() {
        return this.f16882d;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        if (!n5.o.a(this.f16880b, nVar.f16880b) || !n5.o.a(this.f16879a, nVar.f16879a) || !n5.o.a(this.f16881c, nVar.f16881c) || !n5.o.a(this.f16882d, nVar.f16882d) || !n5.o.a(this.f16883e, nVar.f16883e) || !n5.o.a(this.f16884f, nVar.f16884f) || !n5.o.a(this.f16885g, nVar.f16885g)) {
            return false;
        }
        return true;
    }

    public String f() {
        return this.f16883e;
    }

    public String g() {
        return this.f16885g;
    }

    public String h() {
        return this.f16884f;
    }

    public int hashCode() {
        return n5.o.b(this.f16880b, this.f16879a, this.f16881c, this.f16882d, this.f16883e, this.f16884f, this.f16885g);
    }

    public String toString() {
        return n5.o.c(this).a("applicationId", this.f16880b).a("apiKey", this.f16879a).a("databaseUrl", this.f16881c).a("gcmSenderId", this.f16883e).a("storageBucket", this.f16884f).a("projectId", this.f16885g).toString();
    }

    private n(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        q.o(!com.google.android.gms.common.util.o.a(str), "ApplicationId must be set.");
        this.f16880b = str;
        this.f16879a = str2;
        this.f16881c = str3;
        this.f16882d = str4;
        this.f16883e = str5;
        this.f16884f = str6;
        this.f16885g = str7;
    }
}
