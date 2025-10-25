package n2;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f26107a;

    private c(String str) {
        if (str != null) {
            this.f26107a = str;
            return;
        }
        throw new NullPointerException("name is null");
    }

    public static c b(String str) {
        return new c(str);
    }

    public String a() {
        return this.f26107a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        return this.f26107a.equals(((c) obj).f26107a);
    }

    public int hashCode() {
        return this.f26107a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Encoding{name=\"" + this.f26107a + "\"}";
    }
}
