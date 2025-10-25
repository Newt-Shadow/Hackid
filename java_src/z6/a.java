package z6;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import f7.k;
import java.io.CharConversionException;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.security.ProviderException;
import s6.l;
import s6.n;
import s6.o;
import s6.q;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: d  reason: collision with root package name */
    private static final Object f33556d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static final String f33557e = "a";

    /* renamed from: a  reason: collision with root package name */
    private final q f33558a;

    /* renamed from: b  reason: collision with root package name */
    private final s6.a f33559b;

    /* renamed from: c  reason: collision with root package name */
    private o f33560c;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private Context f33561a = null;

        /* renamed from: b  reason: collision with root package name */
        private String f33562b = null;

        /* renamed from: c  reason: collision with root package name */
        private String f33563c = null;

        /* renamed from: d  reason: collision with root package name */
        private String f33564d = null;

        /* renamed from: e  reason: collision with root package name */
        private s6.a f33565e = null;

        /* renamed from: f  reason: collision with root package name */
        private boolean f33566f = true;

        /* renamed from: g  reason: collision with root package name */
        private l f33567g = null;

        /* renamed from: h  reason: collision with root package name */
        private o f33568h;

        private o g() {
            if (this.f33567g != null) {
                o a10 = o.i().a(this.f33567g);
                o h10 = a10.h(a10.d().i().Z(0).Z());
                d dVar = new d(this.f33561a, this.f33562b, this.f33563c);
                if (this.f33565e != null) {
                    h10.d().r(dVar, this.f33565e);
                } else {
                    s6.c.b(h10.d(), dVar);
                }
                return h10;
            }
            throw new GeneralSecurityException("cannot read or generate keyset");
        }

        private static byte[] h(Context context, String str, String str2) {
            SharedPreferences sharedPreferences;
            if (str != null) {
                Context applicationContext = context.getApplicationContext();
                if (str2 == null) {
                    sharedPreferences = PreferenceManager.getDefaultSharedPreferences(applicationContext);
                } else {
                    sharedPreferences = applicationContext.getSharedPreferences(str2, 0);
                }
                try {
                    String string = sharedPreferences.getString(str, null);
                    if (string == null) {
                        return null;
                    }
                    return k.a(string);
                } catch (ClassCastException | IllegalArgumentException unused) {
                    throw new CharConversionException(String.format("can't read keyset; the pref value %s is not a valid hex string", str));
                }
            }
            throw new IllegalArgumentException("keysetName cannot be null");
        }

        private o i(byte[] bArr) {
            return o.j(s6.c.a(s6.b.b(bArr)));
        }

        private o j(byte[] bArr) {
            try {
                this.f33565e = new c().b(this.f33564d);
                try {
                    return o.j(n.n(s6.b.b(bArr), this.f33565e));
                } catch (IOException | GeneralSecurityException e10) {
                    try {
                        return i(bArr);
                    } catch (IOException unused) {
                        throw e10;
                    }
                }
            } catch (GeneralSecurityException | ProviderException e11) {
                try {
                    o i10 = i(bArr);
                    Log.w(a.f33557e, "cannot use Android Keystore, it'll be disabled", e11);
                    return i10;
                } catch (IOException unused2) {
                    throw e11;
                }
            }
        }

        private s6.a k() {
            if (!a.b()) {
                Log.w(a.f33557e, "Android Keystore requires at least Android M");
                return null;
            }
            c cVar = new c();
            try {
                boolean d10 = c.d(this.f33564d);
                try {
                    return cVar.b(this.f33564d);
                } catch (GeneralSecurityException | ProviderException e10) {
                    if (d10) {
                        Log.w(a.f33557e, "cannot use Android Keystore, it'll be disabled", e10);
                        return null;
                    }
                    throw new KeyStoreException(String.format("the master key %s exists but is unusable", this.f33564d), e10);
                }
            } catch (GeneralSecurityException | ProviderException e11) {
                Log.w(a.f33557e, "cannot use Android Keystore, it'll be disabled", e11);
                return null;
            }
        }

        public synchronized a f() {
            a aVar;
            if (this.f33562b != null) {
                synchronized (a.f33556d) {
                    byte[] h10 = h(this.f33561a, this.f33562b, this.f33563c);
                    if (h10 == null) {
                        if (this.f33564d != null) {
                            this.f33565e = k();
                        }
                        this.f33568h = g();
                    } else {
                        if (this.f33564d != null && a.b()) {
                            this.f33568h = j(h10);
                        }
                        this.f33568h = i(h10);
                    }
                    aVar = new a(this);
                }
            } else {
                throw new IllegalArgumentException("keysetName cannot be null");
            }
            return aVar;
        }

        public b l(l lVar) {
            this.f33567g = lVar;
            return this;
        }

        public b m(String str) {
            if (str.startsWith("android-keystore://")) {
                if (this.f33566f) {
                    this.f33564d = str;
                    return this;
                }
                throw new IllegalArgumentException("cannot call withMasterKeyUri() after calling doNotUseKeystore()");
            }
            throw new IllegalArgumentException("key URI must start with android-keystore://");
        }

        public b n(Context context, String str, String str2) {
            if (context != null) {
                if (str != null) {
                    this.f33561a = context;
                    this.f33562b = str;
                    this.f33563c = str2;
                    return this;
                }
                throw new IllegalArgumentException("need a keyset name");
            }
            throw new IllegalArgumentException("need an Android context");
        }
    }

    static /* synthetic */ boolean b() {
        return e();
    }

    private static boolean e() {
        return true;
    }

    public synchronized n d() {
        return this.f33560c.d();
    }

    private a(b bVar) {
        this.f33558a = new d(bVar.f33561a, bVar.f33562b, bVar.f33563c);
        this.f33559b = bVar.f33565e;
        this.f33560c = bVar.f33568h;
    }
}
