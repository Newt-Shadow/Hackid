package q2;

import android.content.Context;
/* loaded from: classes.dex */
final class c extends h {

    /* renamed from: a  reason: collision with root package name */
    private final Context f27990a;

    /* renamed from: b  reason: collision with root package name */
    private final z2.a f27991b;

    /* renamed from: c  reason: collision with root package name */
    private final z2.a f27992c;

    /* renamed from: d  reason: collision with root package name */
    private final String f27993d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, z2.a aVar, z2.a aVar2, String str) {
        if (context != null) {
            this.f27990a = context;
            if (aVar != null) {
                this.f27991b = aVar;
                if (aVar2 != null) {
                    this.f27992c = aVar2;
                    if (str != null) {
                        this.f27993d = str;
                        return;
                    }
                    throw new NullPointerException("Null backendName");
                }
                throw new NullPointerException("Null monotonicClock");
            }
            throw new NullPointerException("Null wallClock");
        }
        throw new NullPointerException("Null applicationContext");
    }

    @Override // q2.h
    public Context b() {
        return this.f27990a;
    }

    @Override // q2.h
    public String c() {
        return this.f27993d;
    }

    @Override // q2.h
    public z2.a d() {
        return this.f27992c;
    }

    @Override // q2.h
    public z2.a e() {
        return this.f27991b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f27990a.equals(hVar.b()) && this.f27991b.equals(hVar.e()) && this.f27992c.equals(hVar.d()) && this.f27993d.equals(hVar.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.f27990a.hashCode() ^ 1000003) * 1000003) ^ this.f27991b.hashCode()) * 1000003) ^ this.f27992c.hashCode()) * 1000003) ^ this.f27993d.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f27990a + ", wallClock=" + this.f27991b + ", monotonicClock=" + this.f27992c + ", backendName=" + this.f27993d + "}";
    }
}
