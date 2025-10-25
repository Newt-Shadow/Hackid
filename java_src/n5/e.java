package n5;

import android.accounts.Account;
import android.view.View;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final Account f26272a;

    /* renamed from: b  reason: collision with root package name */
    private final Set f26273b;

    /* renamed from: c  reason: collision with root package name */
    private final Set f26274c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f26275d;

    /* renamed from: e  reason: collision with root package name */
    private final int f26276e;

    /* renamed from: f  reason: collision with root package name */
    private final View f26277f;

    /* renamed from: g  reason: collision with root package name */
    private final String f26278g;

    /* renamed from: h  reason: collision with root package name */
    private final String f26279h;

    /* renamed from: i  reason: collision with root package name */
    private final j6.a f26280i;

    /* renamed from: j  reason: collision with root package name */
    private Integer f26281j;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Account f26282a;

        /* renamed from: b  reason: collision with root package name */
        private r.b f26283b;

        /* renamed from: c  reason: collision with root package name */
        private String f26284c;

        /* renamed from: d  reason: collision with root package name */
        private String f26285d;

        /* renamed from: e  reason: collision with root package name */
        private final j6.a f26286e = j6.a.f24471j;

        public e a() {
            return new e(this.f26282a, this.f26283b, null, 0, null, this.f26284c, this.f26285d, this.f26286e, false);
        }

        public a b(String str) {
            this.f26284c = str;
            return this;
        }

        public final a c(Collection collection) {
            if (this.f26283b == null) {
                this.f26283b = new r.b();
            }
            this.f26283b.addAll(collection);
            return this;
        }

        public final a d(Account account) {
            this.f26282a = account;
            return this;
        }

        public final a e(String str) {
            this.f26285d = str;
            return this;
        }
    }

    public e(Account account, Set set, Map map, int i10, View view, String str, String str2, j6.a aVar, boolean z10) {
        Set unmodifiableSet;
        this.f26272a = account;
        if (set == null) {
            unmodifiableSet = Collections.emptySet();
        } else {
            unmodifiableSet = Collections.unmodifiableSet(set);
        }
        this.f26273b = unmodifiableSet;
        map = map == null ? Collections.emptyMap() : map;
        this.f26275d = map;
        this.f26277f = view;
        this.f26276e = i10;
        this.f26278g = str;
        this.f26279h = str2;
        this.f26280i = aVar == null ? j6.a.f24471j : aVar;
        HashSet hashSet = new HashSet(unmodifiableSet);
        Iterator it = map.values().iterator();
        if (!it.hasNext()) {
            this.f26274c = Collections.unmodifiableSet(hashSet);
        } else {
            android.support.v4.media.session.b.a(it.next());
            throw null;
        }
    }

    public Account a() {
        return this.f26272a;
    }

    public String b() {
        Account account = this.f26272a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    public Account c() {
        Account account = this.f26272a;
        if (account != null) {
            return account;
        }
        return new Account("<<default account>>", "com.google");
    }

    public Set d() {
        return this.f26274c;
    }

    public Set e(com.google.android.gms.common.api.a aVar) {
        android.support.v4.media.session.b.a(this.f26275d.get(aVar));
        return this.f26273b;
    }

    public String f() {
        return this.f26278g;
    }

    public Set g() {
        return this.f26273b;
    }

    public final j6.a h() {
        return this.f26280i;
    }

    public final Integer i() {
        return this.f26281j;
    }

    public final String j() {
        return this.f26279h;
    }

    public final void k(Integer num) {
        this.f26281j = num;
    }
}
