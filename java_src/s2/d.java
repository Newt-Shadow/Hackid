package s2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: c  reason: collision with root package name */
    private static final d f29264c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final String f29265a;

    /* renamed from: b  reason: collision with root package name */
    private final List f29266b;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private String f29267a = "";

        /* renamed from: b  reason: collision with root package name */
        private List f29268b = new ArrayList();

        a() {
        }

        public d a() {
            return new d(this.f29267a, Collections.unmodifiableList(this.f29268b));
        }

        public a b(List list) {
            this.f29268b = list;
            return this;
        }

        public a c(String str) {
            this.f29267a = str;
            return this;
        }
    }

    d(String str, List list) {
        this.f29265a = str;
        this.f29266b = list;
    }

    public static a c() {
        return new a();
    }

    public List a() {
        return this.f29266b;
    }

    public String b() {
        return this.f29265a;
    }
}
