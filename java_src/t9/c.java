package t9;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    private final List f30489a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30490b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(List list, int i10) {
        this.f30489a = new ArrayList(list);
        this.f30490b = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List a() {
        return this.f30489a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f30490b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(List list) {
        return this.f30489a.equals(list);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        return this.f30489a.equals(((c) obj).f30489a);
    }

    public int hashCode() {
        return this.f30489a.hashCode();
    }

    public String toString() {
        return "{ " + this.f30489a + " }";
    }
}
