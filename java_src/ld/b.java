package ld;

import kotlin.jvm.internal.m;
import pd.k;
/* loaded from: classes2.dex */
final class b implements d {

    /* renamed from: a  reason: collision with root package name */
    private Object f25536a;

    @Override // ld.d, ld.c
    public Object a(Object obj, k property) {
        m.e(property, "property");
        Object obj2 = this.f25536a;
        if (obj2 != null) {
            return obj2;
        }
        throw new IllegalStateException("Property " + property.getName() + " should be initialized before get.");
    }

    @Override // ld.d
    public void b(Object obj, k property, Object value) {
        m.e(property, "property");
        m.e(value, "value");
        this.f25536a = value;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("NotNullProperty(");
        if (this.f25536a != null) {
            str = "value=" + this.f25536a;
        } else {
            str = "value not initialized yet";
        }
        sb2.append(str);
        sb2.append(')');
        return sb2.toString();
    }
}
