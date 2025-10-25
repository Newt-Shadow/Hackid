package c0;

import org.apache.tika.utils.StringUtils;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public final Object f4786a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f4787b;

    public c(Object obj, Object obj2) {
        this.f4786a = obj;
        this.f4787b = obj2;
    }

    public static c a(Object obj, Object obj2) {
        return new c(obj, obj2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (!b.a(cVar.f4786a, this.f4786a) || !b.a(cVar.f4787b, this.f4787b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        Object obj = this.f4786a;
        int i10 = 0;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        Object obj2 = this.f4787b;
        if (obj2 != null) {
            i10 = obj2.hashCode();
        }
        return hashCode ^ i10;
    }

    public String toString() {
        return "Pair{" + this.f4786a + StringUtils.SPACE + this.f4787b + "}";
    }
}
