package f7;

import f7.j;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: b  reason: collision with root package name */
    public static final i f15880b = new i(new j.a());

    /* renamed from: c  reason: collision with root package name */
    public static final i f15881c = new i(new j.e());

    /* renamed from: d  reason: collision with root package name */
    public static final i f15882d = new i(new j.g());

    /* renamed from: e  reason: collision with root package name */
    public static final i f15883e = new i(new j.f());

    /* renamed from: f  reason: collision with root package name */
    public static final i f15884f = new i(new j.b());

    /* renamed from: g  reason: collision with root package name */
    public static final i f15885g = new i(new j.d());

    /* renamed from: h  reason: collision with root package name */
    public static final i f15886h = new i(new j.c());

    /* renamed from: a  reason: collision with root package name */
    private final e f15887a;

    /* loaded from: classes.dex */
    private static class b implements e {

        /* renamed from: a  reason: collision with root package name */
        private final j f15888a;

        @Override // f7.i.e
        public Object a(String str) {
            Exception exc = null;
            for (Provider provider : i.b("GmsCore_OpenSSL", "AndroidOpenSSL")) {
                try {
                    return this.f15888a.a(str, provider);
                } catch (Exception e10) {
                    if (exc == null) {
                        exc = e10;
                    }
                }
            }
            return this.f15888a.a(str, null);
        }

        private b(j jVar) {
            this.f15888a = jVar;
        }
    }

    /* loaded from: classes.dex */
    private static class c implements e {

        /* renamed from: a  reason: collision with root package name */
        private final j f15889a;

        @Override // f7.i.e
        public Object a(String str) {
            return this.f15889a.a(str, null);
        }

        private c(j jVar) {
            this.f15889a = jVar;
        }
    }

    /* loaded from: classes.dex */
    private static class d implements e {

        /* renamed from: a  reason: collision with root package name */
        private final j f15890a;

        @Override // f7.i.e
        public Object a(String str) {
            Exception exc = null;
            for (Provider provider : i.b("GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt")) {
                try {
                    return this.f15890a.a(str, provider);
                } catch (Exception e10) {
                    if (exc == null) {
                        exc = e10;
                    }
                }
            }
            throw new GeneralSecurityException("No good Provider found.", exc);
        }

        private d(j jVar) {
            this.f15890a = jVar;
        }
    }

    /* loaded from: classes.dex */
    private interface e {
        Object a(String str);
    }

    public i(j jVar) {
        if (x6.b.c()) {
            this.f15887a = new d(jVar);
        } else if (q.b()) {
            this.f15887a = new b(jVar);
        } else {
            this.f15887a = new c(jVar);
        }
    }

    public static List b(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            }
        }
        return arrayList;
    }

    public Object a(String str) {
        return this.f15887a.a(str);
    }
}
