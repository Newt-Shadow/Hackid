package n2;
/* loaded from: classes.dex */
final class b extends g {

    /* renamed from: a  reason: collision with root package name */
    private final Integer f26106a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Integer num) {
        this.f26106a = num;
    }

    @Override // n2.g
    public Integer a() {
        return this.f26106a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        Integer num = this.f26106a;
        Integer a10 = ((g) obj).a();
        if (num == null) {
            if (a10 == null) {
                return true;
            }
            return false;
        }
        return num.equals(a10);
    }

    public int hashCode() {
        int hashCode;
        Integer num = this.f26106a;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        return hashCode ^ 1000003;
    }

    public String toString() {
        return "ProductData{productId=" + this.f26106a + "}";
    }
}
