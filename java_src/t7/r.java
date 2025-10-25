package t7;

import java.util.List;
import t7.f0;
/* loaded from: classes.dex */
final class r extends f0.e.d.a.b.AbstractC0329e {

    /* renamed from: a  reason: collision with root package name */
    private final String f30420a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30421b;

    /* renamed from: c  reason: collision with root package name */
    private final List f30422c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.a.b.AbstractC0329e.AbstractC0330a {

        /* renamed from: a  reason: collision with root package name */
        private String f30423a;

        /* renamed from: b  reason: collision with root package name */
        private int f30424b;

        /* renamed from: c  reason: collision with root package name */
        private List f30425c;

        /* renamed from: d  reason: collision with root package name */
        private byte f30426d;

        @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0330a
        public f0.e.d.a.b.AbstractC0329e a() {
            String str;
            List list;
            if (this.f30426d == 1 && (str = this.f30423a) != null && (list = this.f30425c) != null) {
                return new r(str, this.f30424b, list);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30423a == null) {
                sb2.append(" name");
            }
            if ((1 & this.f30426d) == 0) {
                sb2.append(" importance");
            }
            if (this.f30425c == null) {
                sb2.append(" frames");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0330a
        public f0.e.d.a.b.AbstractC0329e.AbstractC0330a b(List list) {
            if (list != null) {
                this.f30425c = list;
                return this;
            }
            throw new NullPointerException("Null frames");
        }

        @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0330a
        public f0.e.d.a.b.AbstractC0329e.AbstractC0330a c(int i10) {
            this.f30424b = i10;
            this.f30426d = (byte) (this.f30426d | 1);
            return this;
        }

        @Override // t7.f0.e.d.a.b.AbstractC0329e.AbstractC0330a
        public f0.e.d.a.b.AbstractC0329e.AbstractC0330a d(String str) {
            if (str != null) {
                this.f30423a = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }
    }

    @Override // t7.f0.e.d.a.b.AbstractC0329e
    public List b() {
        return this.f30422c;
    }

    @Override // t7.f0.e.d.a.b.AbstractC0329e
    public int c() {
        return this.f30421b;
    }

    @Override // t7.f0.e.d.a.b.AbstractC0329e
    public String d() {
        return this.f30420a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0329e)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0329e abstractC0329e = (f0.e.d.a.b.AbstractC0329e) obj;
        if (this.f30420a.equals(abstractC0329e.d()) && this.f30421b == abstractC0329e.c() && this.f30422c.equals(abstractC0329e.b())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f30420a.hashCode() ^ 1000003) * 1000003) ^ this.f30421b) * 1000003) ^ this.f30422c.hashCode();
    }

    public String toString() {
        return "Thread{name=" + this.f30420a + ", importance=" + this.f30421b + ", frames=" + this.f30422c + "}";
    }

    private r(String str, int i10, List list) {
        this.f30420a = str;
        this.f30421b = i10;
        this.f30422c = list;
    }
}
