package k7;

import org.apache.tika.utils.StringUtils;
/* loaded from: classes.dex */
public final class e0 {

    /* renamed from: a  reason: collision with root package name */
    private final Class f24804a;

    /* renamed from: b  reason: collision with root package name */
    private final Class f24805b;

    /* loaded from: classes.dex */
    private @interface a {
    }

    public e0(Class cls, Class cls2) {
        this.f24804a = cls;
        this.f24805b = cls2;
    }

    public static e0 a(Class cls, Class cls2) {
        return new e0(cls, cls2);
    }

    public static e0 b(Class cls) {
        return new e0(a.class, cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e0.class != obj.getClass()) {
            return false;
        }
        e0 e0Var = (e0) obj;
        if (!this.f24805b.equals(e0Var.f24805b)) {
            return false;
        }
        return this.f24804a.equals(e0Var.f24804a);
    }

    public int hashCode() {
        return (this.f24805b.hashCode() * 31) + this.f24804a.hashCode();
    }

    public String toString() {
        if (this.f24804a == a.class) {
            return this.f24805b.getName();
        }
        return "@" + this.f24804a.getName() + StringUtils.SPACE + this.f24805b.getName();
    }
}
