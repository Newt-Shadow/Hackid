package o1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private List f26921a;

    /* renamed from: b  reason: collision with root package name */
    private List f26922b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f26923c;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        private boolean f26926c = false;

        /* renamed from: a  reason: collision with root package name */
        private List f26924a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private List f26925b = new ArrayList();

        private List f() {
            return this.f26925b;
        }

        private List h() {
            return this.f26924a;
        }

        private boolean j() {
            return this.f26926c;
        }

        public a a(String str) {
            this.f26925b.add(str);
            return this;
        }

        public a b(String str) {
            this.f26924a.add(new b(str, "direct://"));
            return this;
        }

        public a c(String str) {
            this.f26924a.add(new b(str));
            return this;
        }

        public a d(String str, String str2) {
            this.f26924a.add(new b(str2, str));
            return this;
        }

        public d e() {
            return new d(h(), f(), j());
        }

        public a g() {
            return a("<local>");
        }

        public a i() {
            return a("<-loopback>");
        }

        public a k(boolean z10) {
            this.f26926c = z10;
            return this;
        }
    }

    public d(List list, List list2, boolean z10) {
        this.f26921a = list;
        this.f26922b = list2;
        this.f26923c = z10;
    }

    public List a() {
        return Collections.unmodifiableList(this.f26922b);
    }

    public List b() {
        return Collections.unmodifiableList(this.f26921a);
    }

    public boolean c() {
        return this.f26923c;
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private String f26927a;

        /* renamed from: b  reason: collision with root package name */
        private String f26928b;

        public b(String str, String str2) {
            this.f26927a = str;
            this.f26928b = str2;
        }

        public String a() {
            return this.f26927a;
        }

        public String b() {
            return this.f26928b;
        }

        public b(String str) {
            this("*", str);
        }
    }
}
