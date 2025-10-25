package e5;

import android.os.Bundle;
import com.google.android.gms.common.api.a;
import n5.o;
/* loaded from: classes.dex */
public final class g implements a.d {

    /* renamed from: d  reason: collision with root package name */
    public static final g f15364d = new g(new f());

    /* renamed from: a  reason: collision with root package name */
    private final String f15365a = null;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f15366b;

    /* renamed from: c  reason: collision with root package name */
    private final String f15367c;

    public g(f fVar) {
        this.f15366b = fVar.f15362a.booleanValue();
        this.f15367c = fVar.f15363b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ String b(g gVar) {
        String str = gVar.f15365a;
        return null;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("consumer_package", null);
        bundle.putBoolean("force_save_dialog", this.f15366b);
        bundle.putString("log_session_id", this.f15367c);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        String str = gVar.f15365a;
        if (o.a(null, null) && this.f15366b == gVar.f15366b && o.a(this.f15367c, gVar.f15367c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return o.b(null, Boolean.valueOf(this.f15366b), this.f15367c);
    }
}
