package i5;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
/* loaded from: classes.dex */
public final class r {

    /* renamed from: d  reason: collision with root package name */
    private static r f17275d;

    /* renamed from: a  reason: collision with root package name */
    final c f17276a;

    /* renamed from: b  reason: collision with root package name */
    GoogleSignInAccount f17277b;

    /* renamed from: c  reason: collision with root package name */
    GoogleSignInOptions f17278c;

    private r(Context context) {
        c b10 = c.b(context);
        this.f17276a = b10;
        this.f17277b = b10.c();
        this.f17278c = b10.d();
    }

    public static synchronized r c(Context context) {
        r f10;
        synchronized (r.class) {
            f10 = f(context.getApplicationContext());
        }
        return f10;
    }

    private static synchronized r f(Context context) {
        synchronized (r.class) {
            r rVar = f17275d;
            if (rVar != null) {
                return rVar;
            }
            r rVar2 = new r(context);
            f17275d = rVar2;
            return rVar2;
        }
    }

    public final synchronized GoogleSignInAccount a() {
        return this.f17277b;
    }

    public final synchronized GoogleSignInOptions b() {
        return this.f17278c;
    }

    public final synchronized void d() {
        this.f17276a.a();
        this.f17277b = null;
        this.f17278c = null;
    }

    public final synchronized void e(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        this.f17276a.f(googleSignInAccount, googleSignInOptions);
        this.f17277b = googleSignInAccount;
        this.f17278c = googleSignInOptions;
    }
}
