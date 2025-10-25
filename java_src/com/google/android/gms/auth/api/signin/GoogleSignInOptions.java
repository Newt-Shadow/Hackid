package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import n5.q;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes.dex */
public class GoogleSignInOptions extends o5.a implements a.d, ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;

    /* renamed from: l  reason: collision with root package name */
    public static final GoogleSignInOptions f5814l;

    /* renamed from: m  reason: collision with root package name */
    public static final GoogleSignInOptions f5815m;

    /* renamed from: n  reason: collision with root package name */
    public static final Scope f5816n = new Scope("profile");

    /* renamed from: o  reason: collision with root package name */
    public static final Scope f5817o = new Scope("email");

    /* renamed from: p  reason: collision with root package name */
    public static final Scope f5818p = new Scope("openid");

    /* renamed from: q  reason: collision with root package name */
    public static final Scope f5819q;

    /* renamed from: r  reason: collision with root package name */
    public static final Scope f5820r;

    /* renamed from: s  reason: collision with root package name */
    private static final Comparator f5821s;

    /* renamed from: a  reason: collision with root package name */
    final int f5822a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList f5823b;

    /* renamed from: c  reason: collision with root package name */
    private Account f5824c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f5825d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f5826e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f5827f;

    /* renamed from: g  reason: collision with root package name */
    private String f5828g;

    /* renamed from: h  reason: collision with root package name */
    private String f5829h;

    /* renamed from: i  reason: collision with root package name */
    private ArrayList f5830i;

    /* renamed from: j  reason: collision with root package name */
    private String f5831j;

    /* renamed from: k  reason: collision with root package name */
    private Map f5832k;

    static {
        Scope scope = new Scope("https://www.googleapis.com/auth/games_lite");
        f5819q = scope;
        f5820r = new Scope("https://www.googleapis.com/auth/games");
        a aVar = new a();
        aVar.c();
        aVar.e();
        f5814l = aVar.a();
        a aVar2 = new a();
        aVar2.f(scope, new Scope[0]);
        f5815m = aVar2.a();
        CREATOR = new e();
        f5821s = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map O(List list) {
        HashMap hashMap = new HashMap();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                i5.a aVar = (i5.a) it.next();
                hashMap.put(Integer.valueOf(aVar.g()), aVar);
            }
        }
        return hashMap;
    }

    public static GoogleSignInOptions t(String str) {
        String str2;
        Account account;
        String str3;
        String str4 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            hashSet.add(new Scope(jSONArray.getString(i10)));
        }
        if (jSONObject.has("accountName")) {
            str2 = jSONObject.optString("accountName");
        } else {
            str2 = null;
        }
        if (!TextUtils.isEmpty(str2)) {
            account = new Account(str2, "com.google");
        } else {
            account = null;
        }
        ArrayList arrayList = new ArrayList(hashSet);
        boolean z10 = jSONObject.getBoolean("idTokenRequested");
        boolean z11 = jSONObject.getBoolean("serverAuthRequested");
        boolean z12 = jSONObject.getBoolean("forceCodeForRefreshToken");
        if (jSONObject.has("serverClientId")) {
            str3 = jSONObject.optString("serverClientId");
        } else {
            str3 = null;
        }
        if (jSONObject.has("hostedDomain")) {
            str4 = jSONObject.optString("hostedDomain");
        }
        return new GoogleSignInOptions(3, arrayList, account, z10, z11, z12, str3, str4, new HashMap(), (String) null);
    }

    public final String G() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.f5823b, f5821s);
            Iterator it = this.f5823b.iterator();
            while (it.hasNext()) {
                jSONArray.put(((Scope) it.next()).g());
            }
            jSONObject.put("scopes", jSONArray);
            Account account = this.f5824c;
            if (account != null) {
                jSONObject.put("accountName", account.name);
            }
            jSONObject.put("idTokenRequested", this.f5825d);
            jSONObject.put("forceCodeForRefreshToken", this.f5827f);
            jSONObject.put("serverAuthRequested", this.f5826e);
            if (!TextUtils.isEmpty(this.f5828g)) {
                jSONObject.put("serverClientId", this.f5828g);
            }
            if (!TextUtils.isEmpty(this.f5829h)) {
                jSONObject.put("hostedDomain", this.f5829h);
            }
            return jSONObject.toString();
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
        if (r1.equals(r4.g()) != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r4 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r4     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r1 = r3.f5830i     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.isEmpty()     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
            java.util.ArrayList r1 = r4.f5830i     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.isEmpty()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L18
            goto L90
        L18:
            java.util.ArrayList r1 = r3.f5823b     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r2 = r4.m()     // Catch: java.lang.ClassCastException -> L90
            int r2 = r2.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            java.util.ArrayList r1 = r3.f5823b     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r2 = r4.m()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.containsAll(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L35
            goto L90
        L35:
            android.accounts.Account r1 = r3.f5824c     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L40
            android.accounts.Account r1 = r4.g()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L90
            goto L4a
        L40:
            android.accounts.Account r2 = r4.g()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
        L4a:
            java.lang.String r1 = r3.f5828g     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L5d
            java.lang.String r1 = r4.n()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
            goto L6a
        L5d:
            java.lang.String r1 = r3.f5828g     // Catch: java.lang.ClassCastException -> L90
            java.lang.String r2 = r4.n()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L6a
            goto L90
        L6a:
            boolean r1 = r3.f5827f     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.o()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            boolean r1 = r3.f5825d     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.p()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            boolean r1 = r3.f5826e     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.r()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            java.lang.String r1 = r3.f5831j     // Catch: java.lang.ClassCastException -> L90
            java.lang.String r4 = r4.l()     // Catch: java.lang.ClassCastException -> L90
            boolean r4 = android.text.TextUtils.equals(r1, r4)     // Catch: java.lang.ClassCastException -> L90
            if (r4 == 0) goto L90
            r4 = 1
            return r4
        L90:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public Account g() {
        return this.f5824c;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f5823b;
        int size = arrayList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(((Scope) arrayList2.get(i10)).g());
        }
        Collections.sort(arrayList);
        i5.b bVar = new i5.b();
        bVar.a(arrayList);
        bVar.a(this.f5824c);
        bVar.a(this.f5828g);
        bVar.c(this.f5827f);
        bVar.c(this.f5825d);
        bVar.c(this.f5826e);
        bVar.a(this.f5831j);
        return bVar.b();
    }

    public ArrayList i() {
        return this.f5830i;
    }

    public String l() {
        return this.f5831j;
    }

    public ArrayList m() {
        return new ArrayList(this.f5823b);
    }

    public String n() {
        return this.f5828g;
    }

    public boolean o() {
        return this.f5827f;
    }

    public boolean p() {
        return this.f5825d;
    }

    public boolean r() {
        return this.f5826e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int i11 = this.f5822a;
        int a10 = o5.c.a(parcel);
        o5.c.k(parcel, 1, i11);
        o5.c.t(parcel, 2, m(), false);
        o5.c.p(parcel, 3, g(), i10, false);
        o5.c.c(parcel, 4, p());
        o5.c.c(parcel, 5, r());
        o5.c.c(parcel, 6, o());
        o5.c.q(parcel, 7, n(), false);
        o5.c.q(parcel, 8, this.f5829h, false);
        o5.c.t(parcel, 9, i(), false);
        o5.c.q(parcel, 10, l(), false);
        o5.c.b(parcel, a10);
    }

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Set f5833a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f5834b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f5835c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f5836d;

        /* renamed from: e  reason: collision with root package name */
        private String f5837e;

        /* renamed from: f  reason: collision with root package name */
        private Account f5838f;

        /* renamed from: g  reason: collision with root package name */
        private String f5839g;

        /* renamed from: h  reason: collision with root package name */
        private Map f5840h;

        /* renamed from: i  reason: collision with root package name */
        private String f5841i;

        public a() {
            this.f5833a = new HashSet();
            this.f5840h = new HashMap();
        }

        private final String k(String str) {
            q.e(str);
            String str2 = this.f5837e;
            boolean z10 = true;
            if (str2 != null && !str2.equals(str)) {
                z10 = false;
            }
            q.b(z10, "two different server client ids provided");
            return str;
        }

        public GoogleSignInOptions a() {
            if (this.f5833a.contains(GoogleSignInOptions.f5820r)) {
                Set set = this.f5833a;
                Scope scope = GoogleSignInOptions.f5819q;
                if (set.contains(scope)) {
                    this.f5833a.remove(scope);
                }
            }
            if (this.f5836d && (this.f5838f == null || !this.f5833a.isEmpty())) {
                c();
            }
            return new GoogleSignInOptions(new ArrayList(this.f5833a), this.f5838f, this.f5836d, this.f5834b, this.f5835c, this.f5837e, this.f5839g, this.f5840h, this.f5841i);
        }

        public a b() {
            this.f5833a.add(GoogleSignInOptions.f5817o);
            return this;
        }

        public a c() {
            this.f5833a.add(GoogleSignInOptions.f5818p);
            return this;
        }

        public a d(String str) {
            this.f5836d = true;
            k(str);
            this.f5837e = str;
            return this;
        }

        public a e() {
            this.f5833a.add(GoogleSignInOptions.f5816n);
            return this;
        }

        public a f(Scope scope, Scope... scopeArr) {
            this.f5833a.add(scope);
            this.f5833a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public a g(String str, boolean z10) {
            this.f5834b = true;
            k(str);
            this.f5837e = str;
            this.f5835c = z10;
            return this;
        }

        public a h(String str) {
            this.f5838f = new Account(q.e(str), "com.google");
            return this;
        }

        public a i(String str) {
            this.f5839g = q.e(str);
            return this;
        }

        public a j(String str) {
            this.f5841i = str;
            return this;
        }

        public a(GoogleSignInOptions googleSignInOptions) {
            this.f5833a = new HashSet();
            this.f5840h = new HashMap();
            q.k(googleSignInOptions);
            this.f5833a = new HashSet(googleSignInOptions.f5823b);
            this.f5834b = googleSignInOptions.f5826e;
            this.f5835c = googleSignInOptions.f5827f;
            this.f5836d = googleSignInOptions.f5825d;
            this.f5837e = googleSignInOptions.f5828g;
            this.f5838f = googleSignInOptions.f5824c;
            this.f5839g = googleSignInOptions.f5829h;
            this.f5840h = GoogleSignInOptions.O(googleSignInOptions.f5830i);
            this.f5841i = googleSignInOptions.f5831j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInOptions(int i10, ArrayList arrayList, Account account, boolean z10, boolean z11, boolean z12, String str, String str2, ArrayList arrayList2, String str3) {
        this(i10, arrayList, account, z10, z11, z12, str, str2, O(arrayList2), str3);
    }

    private GoogleSignInOptions(int i10, ArrayList arrayList, Account account, boolean z10, boolean z11, boolean z12, String str, String str2, Map map, String str3) {
        this.f5822a = i10;
        this.f5823b = arrayList;
        this.f5824c = account;
        this.f5825d = z10;
        this.f5826e = z11;
        this.f5827f = z12;
        this.f5828g = str;
        this.f5829h = str2;
        this.f5830i = new ArrayList(map.values());
        this.f5832k = map;
        this.f5831j = str3;
    }
}
