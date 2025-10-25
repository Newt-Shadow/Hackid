package i5;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private int f17259a = 1;

    public b a(Object obj) {
        int hashCode;
        int i10 = this.f17259a * 31;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        this.f17259a = i10 + hashCode;
        return this;
    }

    public int b() {
        return this.f17259a;
    }

    public final b c(boolean z10) {
        this.f17259a = (this.f17259a * 31) + (z10 ? 1 : 0);
        return this;
    }
}
