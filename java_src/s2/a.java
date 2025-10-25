package s2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p2.m;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: e  reason: collision with root package name */
    private static final a f29238e = new C0304a().b();

    /* renamed from: a  reason: collision with root package name */
    private final f f29239a;

    /* renamed from: b  reason: collision with root package name */
    private final List f29240b;

    /* renamed from: c  reason: collision with root package name */
    private final b f29241c;

    /* renamed from: d  reason: collision with root package name */
    private final String f29242d;

    /* renamed from: s2.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0304a {

        /* renamed from: a  reason: collision with root package name */
        private f f29243a = null;

        /* renamed from: b  reason: collision with root package name */
        private List f29244b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private b f29245c = null;

        /* renamed from: d  reason: collision with root package name */
        private String f29246d = "";

        C0304a() {
        }

        public C0304a a(d dVar) {
            this.f29244b.add(dVar);
            return this;
        }

        public a b() {
            return new a(this.f29243a, Collections.unmodifiableList(this.f29244b), this.f29245c, this.f29246d);
        }

        public C0304a c(String str) {
            this.f29246d = str;
            return this;
        }

        public C0304a d(b bVar) {
            this.f29245c = bVar;
            return this;
        }

        public C0304a e(f fVar) {
            this.f29243a = fVar;
            return this;
        }
    }

    a(f fVar, List list, b bVar, String str) {
        this.f29239a = fVar;
        this.f29240b = list;
        this.f29241c = bVar;
        this.f29242d = str;
    }

    public static C0304a e() {
        return new C0304a();
    }

    public String a() {
        return this.f29242d;
    }

    public b b() {
        return this.f29241c;
    }

    public List c() {
        return this.f29240b;
    }

    public f d() {
        return this.f29239a;
    }

    public byte[] f() {
        return m.a(this);
    }
}
