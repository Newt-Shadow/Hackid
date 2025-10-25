package i8;

import java.util.List;
/* loaded from: classes.dex */
final class a extends w {

    /* renamed from: a  reason: collision with root package name */
    private final String f17329a;

    /* renamed from: b  reason: collision with root package name */
    private final List f17330b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, List list) {
        if (str != null) {
            this.f17329a = str;
            if (list != null) {
                this.f17330b = list;
                return;
            }
            throw new NullPointerException("Null usedDates");
        }
        throw new NullPointerException("Null userAgent");
    }

    @Override // i8.w
    public List b() {
        return this.f17330b;
    }

    @Override // i8.w
    public String c() {
        return this.f17329a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        if (this.f17329a.equals(wVar.c()) && this.f17330b.equals(wVar.b())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f17329a.hashCode() ^ 1000003) * 1000003) ^ this.f17330b.hashCode();
    }

    public String toString() {
        return "HeartBeatResult{userAgent=" + this.f17329a + ", usedDates=" + this.f17330b + "}";
    }
}
