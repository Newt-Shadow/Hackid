package t1;

import java.util.List;
import yc.w;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final List f29835a;

    public j(List displayFeatures) {
        kotlin.jvm.internal.m.e(displayFeatures, "displayFeatures");
        this.f29835a = displayFeatures;
    }

    public final List a() {
        return this.f29835a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && kotlin.jvm.internal.m.a(j.class, obj.getClass())) {
            return kotlin.jvm.internal.m.a(this.f29835a, ((j) obj).f29835a);
        }
        return false;
    }

    public int hashCode() {
        return this.f29835a.hashCode();
    }

    public String toString() {
        String X;
        X = w.X(this.f29835a, ", ", "WindowLayoutInfo{ DisplayFeatures[", "] }", 0, null, null, 56, null);
        return X;
    }
}
