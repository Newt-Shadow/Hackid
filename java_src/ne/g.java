package ne;

import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLProtectionSpaceContract;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final String f26651a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f26652b;

    public g(String scheme, Map authParams) {
        String lowerCase;
        kotlin.jvm.internal.m.e(scheme, "scheme");
        kotlin.jvm.internal.m.e(authParams, "authParams");
        this.f26651a = scheme;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : authParams.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (str == null) {
                lowerCase = null;
            } else {
                Locale US = Locale.US;
                kotlin.jvm.internal.m.d(US, "US");
                lowerCase = str.toLowerCase(US);
                kotlin.jvm.internal.m.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            }
            linkedHashMap.put(lowerCase, str2);
        }
        Map unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        kotlin.jvm.internal.m.d(unmodifiableMap, "unmodifiableMap<String?, String>(newAuthParams)");
        this.f26652b = unmodifiableMap;
    }

    public final Charset a() {
        String str = (String) this.f26652b.get("charset");
        if (str != null) {
            try {
                Charset forName = Charset.forName(str);
                kotlin.jvm.internal.m.d(forName, "forName(charset)");
                return forName;
            } catch (Exception unused) {
            }
        }
        Charset ISO_8859_1 = StandardCharsets.ISO_8859_1;
        kotlin.jvm.internal.m.d(ISO_8859_1, "ISO_8859_1");
        return ISO_8859_1;
    }

    public final String b() {
        return (String) this.f26652b.get(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_REALM);
    }

    public final String c() {
        return this.f26651a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (kotlin.jvm.internal.m.a(gVar.f26651a, this.f26651a) && kotlin.jvm.internal.m.a(gVar.f26652b, this.f26652b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((899 + this.f26651a.hashCode()) * 31) + this.f26652b.hashCode();
    }

    public String toString() {
        return this.f26651a + " authParams=" + this.f26652b;
    }
}
