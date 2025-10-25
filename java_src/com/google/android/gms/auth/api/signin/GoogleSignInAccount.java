package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.arthenica.ffmpegkit.Chapter;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import n5.q;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes.dex */
public class GoogleSignInAccount extends o5.a implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new c();

    /* renamed from: n  reason: collision with root package name */
    public static final com.google.android.gms.common.util.d f5800n = com.google.android.gms.common.util.g.b();

    /* renamed from: a  reason: collision with root package name */
    final int f5801a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5802b;

    /* renamed from: c  reason: collision with root package name */
    private final String f5803c;

    /* renamed from: d  reason: collision with root package name */
    private final String f5804d;

    /* renamed from: e  reason: collision with root package name */
    private final String f5805e;

    /* renamed from: f  reason: collision with root package name */
    private final Uri f5806f;

    /* renamed from: g  reason: collision with root package name */
    private String f5807g;

    /* renamed from: h  reason: collision with root package name */
    private final long f5808h;

    /* renamed from: i  reason: collision with root package name */
    private final String f5809i;

    /* renamed from: j  reason: collision with root package name */
    final List f5810j;

    /* renamed from: k  reason: collision with root package name */
    private final String f5811k;

    /* renamed from: l  reason: collision with root package name */
    private final String f5812l;

    /* renamed from: m  reason: collision with root package name */
    private final Set f5813m = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInAccount(int i10, String str, String str2, String str3, String str4, Uri uri, String str5, long j10, String str6, List list, String str7, String str8) {
        this.f5801a = i10;
        this.f5802b = str;
        this.f5803c = str2;
        this.f5804d = str3;
        this.f5805e = str4;
        this.f5806f = uri;
        this.f5807g = str5;
        this.f5808h = j10;
        this.f5809i = str6;
        this.f5810j = list;
        this.f5811k = str7;
        this.f5812l = str8;
    }

    public static GoogleSignInAccount D(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l10, String str7, Set set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l10.longValue(), q.e(str7), new ArrayList((Collection) q.k(set)), str5, str6);
    }

    public static GoogleSignInAccount F(String str) {
        Uri uri;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl");
        if (!TextUtils.isEmpty(optString)) {
            uri = Uri.parse(optString);
        } else {
            uri = null;
        }
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            hashSet.add(new Scope(jSONArray.getString(i10)));
        }
        String optString2 = jSONObject.optString(Chapter.KEY_ID);
        if (jSONObject.has("tokenId")) {
            str2 = jSONObject.optString("tokenId");
        } else {
            str2 = null;
        }
        if (jSONObject.has("email")) {
            str3 = jSONObject.optString("email");
        } else {
            str3 = null;
        }
        if (jSONObject.has("displayName")) {
            str4 = jSONObject.optString("displayName");
        } else {
            str4 = null;
        }
        if (jSONObject.has("givenName")) {
            str5 = jSONObject.optString("givenName");
        } else {
            str5 = null;
        }
        if (jSONObject.has("familyName")) {
            str6 = jSONObject.optString("familyName");
        } else {
            str6 = null;
        }
        GoogleSignInAccount D = D(optString2, str2, str3, str4, str5, str6, uri, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        if (jSONObject.has("serverAuthCode")) {
            str7 = jSONObject.optString("serverAuthCode");
        }
        D.f5807g = str7;
        return D;
    }

    public boolean C() {
        if (f5800n.currentTimeMillis() / 1000 >= this.f5808h - 300) {
            return true;
        }
        return false;
    }

    public final String G() {
        return this.f5809i;
    }

    public final String I() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (o() != null) {
                jSONObject.put(Chapter.KEY_ID, o());
            }
            if (p() != null) {
                jSONObject.put("tokenId", p());
            }
            if (i() != null) {
                jSONObject.put("email", i());
            }
            if (g() != null) {
                jSONObject.put("displayName", g());
            }
            if (m() != null) {
                jSONObject.put("givenName", m());
            }
            if (l() != null) {
                jSONObject.put("familyName", l());
            }
            Uri r10 = r();
            if (r10 != null) {
                jSONObject.put("photoUrl", r10.toString());
            }
            if (t() != null) {
                jSONObject.put("serverAuthCode", t());
            }
            jSONObject.put("expirationTime", this.f5808h);
            jSONObject.put("obfuscatedIdentifier", this.f5809i);
            JSONArray jSONArray = new JSONArray();
            List list = this.f5810j;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, new Comparator() { // from class: h5.c
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    Parcelable.Creator<GoogleSignInAccount> creator = GoogleSignInAccount.CREATOR;
                    return ((Scope) obj).g().compareTo(((Scope) obj2).g());
                }
            });
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.g());
            }
            jSONObject.put("grantedScopes", jSONArray);
            jSONObject.remove("serverAuthCode");
            return jSONObject.toString();
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        if (!googleSignInAccount.f5809i.equals(this.f5809i) || !googleSignInAccount.s().equals(s())) {
            return false;
        }
        return true;
    }

    public String g() {
        return this.f5805e;
    }

    public int hashCode() {
        return ((this.f5809i.hashCode() + 527) * 31) + s().hashCode();
    }

    public String i() {
        return this.f5804d;
    }

    public String l() {
        return this.f5812l;
    }

    public String m() {
        return this.f5811k;
    }

    public Set n() {
        return new HashSet(this.f5810j);
    }

    public String o() {
        return this.f5802b;
    }

    public String p() {
        return this.f5803c;
    }

    public Uri r() {
        return this.f5806f;
    }

    public Set s() {
        HashSet hashSet = new HashSet(this.f5810j);
        hashSet.addAll(this.f5813m);
        return hashSet;
    }

    public String t() {
        return this.f5807g;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, this.f5801a);
        o5.c.q(parcel, 2, o(), false);
        o5.c.q(parcel, 3, p(), false);
        o5.c.q(parcel, 4, i(), false);
        o5.c.q(parcel, 5, g(), false);
        o5.c.p(parcel, 6, r(), i10, false);
        o5.c.q(parcel, 7, t(), false);
        o5.c.n(parcel, 8, this.f5808h);
        o5.c.q(parcel, 9, this.f5809i, false);
        o5.c.t(parcel, 10, this.f5810j, false);
        o5.c.q(parcel, 11, m(), false);
        o5.c.q(parcel, 12, l(), false);
        o5.c.b(parcel, a10);
    }
}
