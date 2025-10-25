package q7;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import java.util.regex.Pattern;
import q7.p0;
/* loaded from: classes.dex */
public class o0 implements p0 {

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f28512g = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: h  reason: collision with root package name */
    private static final String f28513h = Pattern.quote("/");

    /* renamed from: a  reason: collision with root package name */
    private final q0 f28514a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f28515b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28516c;

    /* renamed from: d  reason: collision with root package name */
    private final l8.e f28517d;

    /* renamed from: e  reason: collision with root package name */
    private final j0 f28518e;

    /* renamed from: f  reason: collision with root package name */
    private p0.a f28519f;

    public o0(Context context, String str, l8.e eVar, j0 j0Var) {
        if (context != null) {
            if (str != null) {
                this.f28515b = context;
                this.f28516c = str;
                this.f28517d = eVar;
                this.f28518e = j0Var;
                this.f28514a = new q0();
                return;
            }
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        throw new IllegalArgumentException("appContext must not be null");
    }

    private synchronized String b(String str, SharedPreferences sharedPreferences) {
        String e10;
        e10 = e(UUID.randomUUID().toString());
        n7.g f10 = n7.g.f();
        f10.i("Created new Crashlytics installation ID: " + e10 + " for FID: " + str);
        sharedPreferences.edit().putString("crashlytics.installation.id", e10).putString("firebase.installation.id", str).apply();
        return e10;
    }

    static String c() {
        return "SYN_" + UUID.randomUUID().toString();
    }

    private static String e(String str) {
        return f28512g.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    static boolean k(String str) {
        if (str != null && str.startsWith("SYN_")) {
            return true;
        }
        return false;
    }

    private String l(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("crashlytics.installation.id", null);
    }

    private String m(String str) {
        return str.replaceAll(f28513h, "");
    }

    private boolean n() {
        p0.a aVar = this.f28519f;
        if (aVar != null && (aVar.e() != null || !this.f28518e.d())) {
            return false;
        }
        return true;
    }

    @Override // q7.p0
    public synchronized p0.a a() {
        String str;
        if (!n()) {
            return this.f28519f;
        }
        n7.g.f().i("Determining Crashlytics installation ID...");
        SharedPreferences q10 = j.q(this.f28515b);
        String string = q10.getString("firebase.installation.id", null);
        n7.g f10 = n7.g.f();
        f10.i("Cached Firebase Installation ID: " + string);
        if (this.f28518e.d()) {
            n0 d10 = d(false);
            n7.g f11 = n7.g.f();
            f11.i("Fetched Firebase Installation ID: " + d10.b());
            if (d10.b() == null) {
                if (string == null) {
                    str = c();
                } else {
                    str = string;
                }
                d10 = new n0(str, null);
            }
            if (Objects.equals(d10.b(), string)) {
                this.f28519f = p0.a.a(l(q10), d10);
            } else {
                this.f28519f = p0.a.a(b(d10.b(), q10), d10);
            }
        } else if (k(string)) {
            this.f28519f = p0.a.b(l(q10));
        } else {
            this.f28519f = p0.a.b(b(c(), q10));
        }
        n7.g f12 = n7.g.f();
        f12.i("Install IDs: " + this.f28519f);
        return this.f28519f;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:1|(7:13|14|4|5|6|7|8)|3|4|5|6|7|8) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
        n7.g.f().l("Error getting Firebase installation id.", r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public q7.n0 d(boolean r6) {
        /*
            r5 = this;
            r7.i.e()
            r0 = 10000(0x2710, double:4.9407E-320)
            r2 = 0
            if (r6 == 0) goto L26
            l8.e r6 = r5.f28517d     // Catch: java.lang.Exception -> L1c
            r3 = 0
            m6.Task r6 = r6.a(r3)     // Catch: java.lang.Exception -> L1c
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> L1c
            java.lang.Object r6 = m6.n.b(r6, r0, r3)     // Catch: java.lang.Exception -> L1c
            com.google.firebase.installations.g r6 = (com.google.firebase.installations.g) r6     // Catch: java.lang.Exception -> L1c
            java.lang.String r6 = r6.b()     // Catch: java.lang.Exception -> L1c
            goto L27
        L1c:
            r6 = move-exception
            n7.g r3 = n7.g.f()
            java.lang.String r4 = "Error getting Firebase authentication token."
            r3.l(r4, r6)
        L26:
            r6 = r2
        L27:
            l8.e r3 = r5.f28517d     // Catch: java.lang.Exception -> L37
            m6.Task r3 = r3.getId()     // Catch: java.lang.Exception -> L37
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> L37
            java.lang.Object r0 = m6.n.b(r3, r0, r4)     // Catch: java.lang.Exception -> L37
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L37
            r2 = r0
            goto L41
        L37:
            r0 = move-exception
            n7.g r1 = n7.g.f()
            java.lang.String r3 = "Error getting Firebase installation id."
            r1.l(r3, r0)
        L41:
            q7.n0 r0 = new q7.n0
            r0.<init>(r2, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: q7.o0.d(boolean):q7.n0");
    }

    public String f() {
        return this.f28516c;
    }

    public String g() {
        return this.f28514a.a(this.f28515b);
    }

    public String h() {
        return String.format(Locale.US, "%s/%s", m(Build.MANUFACTURER), m(Build.MODEL));
    }

    public String i() {
        return m(Build.VERSION.INCREMENTAL);
    }

    public String j() {
        return m(Build.VERSION.RELEASE);
    }
}
