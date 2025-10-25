package androidx.core.app;

import android.app.Person;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.Objects;
/* loaded from: classes.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    CharSequence f1993a;

    /* renamed from: b  reason: collision with root package name */
    IconCompat f1994b;

    /* renamed from: c  reason: collision with root package name */
    String f1995c;

    /* renamed from: d  reason: collision with root package name */
    String f1996d;

    /* renamed from: e  reason: collision with root package name */
    boolean f1997e;

    /* renamed from: f  reason: collision with root package name */
    boolean f1998f;

    /* loaded from: classes.dex */
    static class a {
        static t a(Person person) {
            IconCompat iconCompat;
            b f10 = new b().f(person.getName());
            if (person.getIcon() != null) {
                iconCompat = IconCompat.b(person.getIcon());
            } else {
                iconCompat = null;
            }
            return f10.c(iconCompat).g(person.getUri()).e(person.getKey()).b(person.isBot()).d(person.isImportant()).a();
        }

        static Person b(t tVar) {
            Icon icon;
            Person.Builder name = new Person.Builder().setName(tVar.e());
            if (tVar.c() != null) {
                icon = tVar.c().u();
            } else {
                icon = null;
            }
            return name.setIcon(icon).setUri(tVar.f()).setKey(tVar.d()).setBot(tVar.g()).setImportant(tVar.h()).build();
        }
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        CharSequence f1999a;

        /* renamed from: b  reason: collision with root package name */
        IconCompat f2000b;

        /* renamed from: c  reason: collision with root package name */
        String f2001c;

        /* renamed from: d  reason: collision with root package name */
        String f2002d;

        /* renamed from: e  reason: collision with root package name */
        boolean f2003e;

        /* renamed from: f  reason: collision with root package name */
        boolean f2004f;

        public t a() {
            return new t(this);
        }

        public b b(boolean z10) {
            this.f2003e = z10;
            return this;
        }

        public b c(IconCompat iconCompat) {
            this.f2000b = iconCompat;
            return this;
        }

        public b d(boolean z10) {
            this.f2004f = z10;
            return this;
        }

        public b e(String str) {
            this.f2002d = str;
            return this;
        }

        public b f(CharSequence charSequence) {
            this.f1999a = charSequence;
            return this;
        }

        public b g(String str) {
            this.f2001c = str;
            return this;
        }
    }

    t(b bVar) {
        this.f1993a = bVar.f1999a;
        this.f1994b = bVar.f2000b;
        this.f1995c = bVar.f2001c;
        this.f1996d = bVar.f2002d;
        this.f1997e = bVar.f2003e;
        this.f1998f = bVar.f2004f;
    }

    public static t a(Person person) {
        return a.a(person);
    }

    public static t b(Bundle bundle) {
        IconCompat iconCompat;
        Bundle bundle2 = bundle.getBundle("icon");
        b f10 = new b().f(bundle.getCharSequence(Constants.NAME));
        if (bundle2 != null) {
            iconCompat = IconCompat.a(bundle2);
        } else {
            iconCompat = null;
        }
        return f10.c(iconCompat).g(bundle.getString("uri")).e(bundle.getString("key")).b(bundle.getBoolean("isBot")).d(bundle.getBoolean("isImportant")).a();
    }

    public IconCompat c() {
        return this.f1994b;
    }

    public String d() {
        return this.f1996d;
    }

    public CharSequence e() {
        return this.f1993a;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        String d10 = d();
        String d11 = tVar.d();
        if (d10 == null && d11 == null) {
            if (!Objects.equals(Objects.toString(e()), Objects.toString(tVar.e())) || !Objects.equals(f(), tVar.f()) || !Objects.equals(Boolean.valueOf(g()), Boolean.valueOf(tVar.g())) || !Objects.equals(Boolean.valueOf(h()), Boolean.valueOf(tVar.h()))) {
                return false;
            }
            return true;
        }
        return Objects.equals(d10, d11);
    }

    public String f() {
        return this.f1995c;
    }

    public boolean g() {
        return this.f1997e;
    }

    public boolean h() {
        return this.f1998f;
    }

    public int hashCode() {
        String d10 = d();
        if (d10 != null) {
            return d10.hashCode();
        }
        return Objects.hash(e(), f(), Boolean.valueOf(g()), Boolean.valueOf(h()));
    }

    public String i() {
        String str = this.f1995c;
        if (str != null) {
            return str;
        }
        if (this.f1993a != null) {
            return "name:" + ((Object) this.f1993a);
        }
        return "";
    }

    public Person j() {
        return a.b(this);
    }

    public Bundle k() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        bundle2.putCharSequence(Constants.NAME, this.f1993a);
        IconCompat iconCompat = this.f1994b;
        if (iconCompat != null) {
            bundle = iconCompat.t();
        } else {
            bundle = null;
        }
        bundle2.putBundle("icon", bundle);
        bundle2.putString("uri", this.f1995c);
        bundle2.putString("key", this.f1996d);
        bundle2.putBoolean("isBot", this.f1997e);
        bundle2.putBoolean("isImportant", this.f1998f);
        return bundle2;
    }
}
