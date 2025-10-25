package c7;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import s6.k;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final c7.a f5050a;

    /* renamed from: b  reason: collision with root package name */
    private final List f5051b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f5052c;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private ArrayList f5053a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private c7.a f5054b = c7.a.f5047b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f5055c = null;

        private boolean c(int i10) {
            Iterator it = this.f5053a.iterator();
            while (it.hasNext()) {
                if (((C0090c) it.next()).a() == i10) {
                    return true;
                }
            }
            return false;
        }

        public b a(k kVar, int i10, String str, String str2) {
            ArrayList arrayList = this.f5053a;
            if (arrayList != null) {
                arrayList.add(new C0090c(kVar, i10, str, str2));
                return this;
            }
            throw new IllegalStateException("addEntry cannot be called after build()");
        }

        public c b() {
            if (this.f5053a != null) {
                Integer num = this.f5055c;
                if (num != null && !c(num.intValue())) {
                    throw new GeneralSecurityException("primary key ID is not present in entries");
                }
                c cVar = new c(this.f5054b, Collections.unmodifiableList(this.f5053a), this.f5055c);
                this.f5053a = null;
                return cVar;
            }
            throw new IllegalStateException("cannot call build() twice");
        }

        public b d(c7.a aVar) {
            if (this.f5053a != null) {
                this.f5054b = aVar;
                return this;
            }
            throw new IllegalStateException("setAnnotations cannot be called after build()");
        }

        public b e(int i10) {
            if (this.f5053a != null) {
                this.f5055c = Integer.valueOf(i10);
                return this;
            }
            throw new IllegalStateException("setPrimaryKeyId cannot be called after build()");
        }
    }

    /* renamed from: c7.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0090c {

        /* renamed from: a  reason: collision with root package name */
        private final k f5056a;

        /* renamed from: b  reason: collision with root package name */
        private final int f5057b;

        /* renamed from: c  reason: collision with root package name */
        private final String f5058c;

        /* renamed from: d  reason: collision with root package name */
        private final String f5059d;

        public int a() {
            return this.f5057b;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C0090c)) {
                return false;
            }
            C0090c c0090c = (C0090c) obj;
            if (this.f5056a != c0090c.f5056a || this.f5057b != c0090c.f5057b || !this.f5058c.equals(c0090c.f5058c) || !this.f5059d.equals(c0090c.f5059d)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return Objects.hash(this.f5056a, Integer.valueOf(this.f5057b), this.f5058c, this.f5059d);
        }

        public String toString() {
            return String.format("(status=%s, keyId=%s, keyType='%s', keyPrefix='%s')", this.f5056a, Integer.valueOf(this.f5057b), this.f5058c, this.f5059d);
        }

        private C0090c(k kVar, int i10, String str, String str2) {
            this.f5056a = kVar;
            this.f5057b = i10;
            this.f5058c = str;
            this.f5059d = str2;
        }
    }

    public static b a() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (!this.f5050a.equals(cVar.f5050a) || !this.f5051b.equals(cVar.f5051b) || !Objects.equals(this.f5052c, cVar.f5052c)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Objects.hash(this.f5050a, this.f5051b);
    }

    public String toString() {
        return String.format("(annotations=%s, entries=%s, primaryKeyId=%s)", this.f5050a, this.f5051b, this.f5052c);
    }

    private c(c7.a aVar, List list, Integer num) {
        this.f5050a = aVar;
        this.f5051b = list;
        this.f5052c = num;
    }
}
