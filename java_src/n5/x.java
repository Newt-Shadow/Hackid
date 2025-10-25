package n5;

import android.os.Bundle;
import com.google.android.gms.common.api.a;
/* loaded from: classes.dex */
public class x implements a.d {

    /* renamed from: b  reason: collision with root package name */
    public static final x f26406b = a().a();

    /* renamed from: a  reason: collision with root package name */
    private final String f26407a;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f26408a;

        /* synthetic */ a(a0 a0Var) {
        }

        public x a() {
            return new x(this.f26408a, null);
        }

        public a b(String str) {
            this.f26408a = str;
            return this;
        }
    }

    /* synthetic */ x(String str, b0 b0Var) {
        this.f26407a = str;
    }

    public static a a() {
        return new a(null);
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        String str = this.f26407a;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        return o.a(this.f26407a, ((x) obj).f26407a);
    }

    public final int hashCode() {
        return o.b(this.f26407a);
    }
}
