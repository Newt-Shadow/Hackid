package t7;

import java.util.List;
import t7.f0;
/* loaded from: classes.dex */
final class f extends f0.d {

    /* renamed from: a  reason: collision with root package name */
    private final List f30290a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30291b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.d.a {

        /* renamed from: a  reason: collision with root package name */
        private List f30292a;

        /* renamed from: b  reason: collision with root package name */
        private String f30293b;

        @Override // t7.f0.d.a
        public f0.d a() {
            List list = this.f30292a;
            if (list != null) {
                return new f(list, this.f30293b);
            }
            throw new IllegalStateException("Missing required properties: files");
        }

        @Override // t7.f0.d.a
        public f0.d.a b(List list) {
            if (list != null) {
                this.f30292a = list;
                return this;
            }
            throw new NullPointerException("Null files");
        }

        @Override // t7.f0.d.a
        public f0.d.a c(String str) {
            this.f30293b = str;
            return this;
        }
    }

    @Override // t7.f0.d
    public List b() {
        return this.f30290a;
    }

    @Override // t7.f0.d
    public String c() {
        return this.f30291b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.d)) {
            return false;
        }
        f0.d dVar = (f0.d) obj;
        if (this.f30290a.equals(dVar.b())) {
            String str = this.f30291b;
            if (str == null) {
                if (dVar.c() == null) {
                    return true;
                }
            } else if (str.equals(dVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (this.f30290a.hashCode() ^ 1000003) * 1000003;
        String str = this.f30291b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 ^ hashCode;
    }

    public String toString() {
        return "FilesPayload{files=" + this.f30290a + ", orgId=" + this.f30291b + "}";
    }

    private f(List list, String str) {
        this.f30290a = list;
        this.f30291b = str;
    }
}
