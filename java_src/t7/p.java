package t7;

import java.util.List;
import t7.f0;
/* loaded from: classes.dex */
final class p extends f0.e.d.a.b.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f30402a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30403b;

    /* renamed from: c  reason: collision with root package name */
    private final List f30404c;

    /* renamed from: d  reason: collision with root package name */
    private final f0.e.d.a.b.c f30405d;

    /* renamed from: e  reason: collision with root package name */
    private final int f30406e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.a.b.c.AbstractC0326a {

        /* renamed from: a  reason: collision with root package name */
        private String f30407a;

        /* renamed from: b  reason: collision with root package name */
        private String f30408b;

        /* renamed from: c  reason: collision with root package name */
        private List f30409c;

        /* renamed from: d  reason: collision with root package name */
        private f0.e.d.a.b.c f30410d;

        /* renamed from: e  reason: collision with root package name */
        private int f30411e;

        /* renamed from: f  reason: collision with root package name */
        private byte f30412f;

        @Override // t7.f0.e.d.a.b.c.AbstractC0326a
        public f0.e.d.a.b.c a() {
            String str;
            List list;
            if (this.f30412f == 1 && (str = this.f30407a) != null && (list = this.f30409c) != null) {
                return new p(str, this.f30408b, list, this.f30410d, this.f30411e);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30407a == null) {
                sb2.append(" type");
            }
            if (this.f30409c == null) {
                sb2.append(" frames");
            }
            if ((1 & this.f30412f) == 0) {
                sb2.append(" overflowCount");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.d.a.b.c.AbstractC0326a
        public f0.e.d.a.b.c.AbstractC0326a b(f0.e.d.a.b.c cVar) {
            this.f30410d = cVar;
            return this;
        }

        @Override // t7.f0.e.d.a.b.c.AbstractC0326a
        public f0.e.d.a.b.c.AbstractC0326a c(List list) {
            if (list != null) {
                this.f30409c = list;
                return this;
            }
            throw new NullPointerException("Null frames");
        }

        @Override // t7.f0.e.d.a.b.c.AbstractC0326a
        public f0.e.d.a.b.c.AbstractC0326a d(int i10) {
            this.f30411e = i10;
            this.f30412f = (byte) (this.f30412f | 1);
            return this;
        }

        @Override // t7.f0.e.d.a.b.c.AbstractC0326a
        public f0.e.d.a.b.c.AbstractC0326a e(String str) {
            this.f30408b = str;
            return this;
        }

        @Override // t7.f0.e.d.a.b.c.AbstractC0326a
        public f0.e.d.a.b.c.AbstractC0326a f(String str) {
            if (str != null) {
                this.f30407a = str;
                return this;
            }
            throw new NullPointerException("Null type");
        }
    }

    @Override // t7.f0.e.d.a.b.c
    public f0.e.d.a.b.c b() {
        return this.f30405d;
    }

    @Override // t7.f0.e.d.a.b.c
    public List c() {
        return this.f30404c;
    }

    @Override // t7.f0.e.d.a.b.c
    public int d() {
        return this.f30406e;
    }

    @Override // t7.f0.e.d.a.b.c
    public String e() {
        return this.f30403b;
    }

    public boolean equals(Object obj) {
        String str;
        f0.e.d.a.b.c cVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.c)) {
            return false;
        }
        f0.e.d.a.b.c cVar2 = (f0.e.d.a.b.c) obj;
        if (this.f30402a.equals(cVar2.f()) && ((str = this.f30403b) != null ? str.equals(cVar2.e()) : cVar2.e() == null) && this.f30404c.equals(cVar2.c()) && ((cVar = this.f30405d) != null ? cVar.equals(cVar2.b()) : cVar2.b() == null) && this.f30406e == cVar2.d()) {
            return true;
        }
        return false;
    }

    @Override // t7.f0.e.d.a.b.c
    public String f() {
        return this.f30402a;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (this.f30402a.hashCode() ^ 1000003) * 1000003;
        String str = this.f30403b;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode3 = (((hashCode2 ^ hashCode) * 1000003) ^ this.f30404c.hashCode()) * 1000003;
        f0.e.d.a.b.c cVar = this.f30405d;
        if (cVar != null) {
            i10 = cVar.hashCode();
        }
        return ((hashCode3 ^ i10) * 1000003) ^ this.f30406e;
    }

    public String toString() {
        return "Exception{type=" + this.f30402a + ", reason=" + this.f30403b + ", frames=" + this.f30404c + ", causedBy=" + this.f30405d + ", overflowCount=" + this.f30406e + "}";
    }

    private p(String str, String str2, List list, f0.e.d.a.b.c cVar, int i10) {
        this.f30402a = str;
        this.f30403b = str2;
        this.f30404c = list;
        this.f30405d = cVar;
        this.f30406e = i10;
    }
}
