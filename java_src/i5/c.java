package i5;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
/* loaded from: classes.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private static final Lock f17260c = new ReentrantLock();

    /* renamed from: d  reason: collision with root package name */
    private static c f17261d;

    /* renamed from: a  reason: collision with root package name */
    private final Lock f17262a = new ReentrantLock();

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f17263b;

    c(Context context) {
        this.f17263b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static c b(Context context) {
        n5.q.k(context);
        Lock lock = f17260c;
        lock.lock();
        try {
            if (f17261d == null) {
                f17261d = new c(context.getApplicationContext());
            }
            c cVar = f17261d;
            lock.unlock();
            return cVar;
        } catch (Throwable th) {
            f17260c.unlock();
            throw th;
        }
    }

    private static final String i(String str, String str2) {
        return str + ":" + str2;
    }

    public void a() {
        this.f17262a.lock();
        try {
            this.f17263b.edit().clear().apply();
        } finally {
            this.f17262a.unlock();
        }
    }

    public GoogleSignInAccount c() {
        String g10;
        String g11 = g("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(g11) || (g10 = g(i("googleSignInAccount", g11))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.F(g10);
        } catch (JSONException unused) {
            return null;
        }
    }

    public GoogleSignInOptions d() {
        String g10;
        String g11 = g("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(g11) || (g10 = g(i("googleSignInOptions", g11))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.t(g10);
        } catch (JSONException unused) {
            return null;
        }
    }

    public String e() {
        return g("refreshToken");
    }

    public void f(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        n5.q.k(googleSignInAccount);
        n5.q.k(googleSignInOptions);
        h("defaultGoogleSignInAccount", googleSignInAccount.G());
        n5.q.k(googleSignInAccount);
        n5.q.k(googleSignInOptions);
        String G = googleSignInAccount.G();
        h(i("googleSignInAccount", G), googleSignInAccount.I());
        h(i("googleSignInOptions", G), googleSignInOptions.G());
    }

    protected final String g(String str) {
        this.f17262a.lock();
        try {
            return this.f17263b.getString(str, null);
        } finally {
            this.f17262a.unlock();
        }
    }

    protected final void h(String str, String str2) {
        this.f17262a.lock();
        try {
            this.f17263b.edit().putString(str, str2).apply();
        } finally {
            this.f17262a.unlock();
        }
    }
}
