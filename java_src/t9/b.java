package t9;

import java.util.Objects;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final s9.b f30486a;

    /* renamed from: b  reason: collision with root package name */
    private final s9.b f30487b;

    /* renamed from: c  reason: collision with root package name */
    private final s9.c f30488c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(s9.b bVar, s9.b bVar2, s9.c cVar) {
        this.f30486a = bVar;
        this.f30487b = bVar2;
        this.f30488c = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s9.c a() {
        return this.f30488c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s9.b b() {
        return this.f30486a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s9.b c() {
        return this.f30487b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        if (this.f30487b == null) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (!Objects.equals(this.f30486a, bVar.f30486a) || !Objects.equals(this.f30487b, bVar.f30487b) || !Objects.equals(this.f30488c, bVar.f30488c)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (Objects.hashCode(this.f30486a) ^ Objects.hashCode(this.f30487b)) ^ Objects.hashCode(this.f30488c);
    }

    public String toString() {
        Object valueOf;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[ ");
        sb2.append(this.f30486a);
        sb2.append(" , ");
        sb2.append(this.f30487b);
        sb2.append(" : ");
        s9.c cVar = this.f30488c;
        if (cVar == null) {
            valueOf = "null";
        } else {
            valueOf = Integer.valueOf(cVar.c());
        }
        sb2.append(valueOf);
        sb2.append(" ]");
        return sb2.toString();
    }
}
