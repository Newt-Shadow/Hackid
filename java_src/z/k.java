package z;

import android.os.LocaleList;
import java.util.Locale;
/* loaded from: classes.dex */
final class k implements j {

    /* renamed from: a  reason: collision with root package name */
    private final LocaleList f33328a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Object obj) {
        this.f33328a = (LocaleList) obj;
    }

    @Override // z.j
    public String a() {
        return this.f33328a.toLanguageTags();
    }

    @Override // z.j
    public Object b() {
        return this.f33328a;
    }

    public boolean equals(Object obj) {
        return this.f33328a.equals(((j) obj).b());
    }

    @Override // z.j
    public Locale get(int i10) {
        return this.f33328a.get(i10);
    }

    public int hashCode() {
        return this.f33328a.hashCode();
    }

    @Override // z.j
    public boolean isEmpty() {
        return this.f33328a.isEmpty();
    }

    @Override // z.j
    public int size() {
        return this.f33328a.size();
    }

    public String toString() {
        return this.f33328a.toString();
    }
}
