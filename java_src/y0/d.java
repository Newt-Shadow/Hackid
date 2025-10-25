package y0;

import androidx.lifecycle.g;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import kotlin.jvm.internal.m;
import x0.a;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f32813a = new d();

    /* loaded from: classes.dex */
    public static final class a implements a.b {

        /* renamed from: a  reason: collision with root package name */
        public static final a f32814a = new a();

        private a() {
        }
    }

    private d() {
    }

    public final x0.a a(m0 owner) {
        m.e(owner, "owner");
        if (owner instanceof g) {
            return ((g) owner).getDefaultViewModelCreationExtras();
        }
        return a.C0362a.f32165b;
    }

    public final String b(pd.c modelClass) {
        m.e(modelClass, "modelClass");
        String a10 = e.a(modelClass);
        if (a10 != null) {
            return "androidx.lifecycle.ViewModelProvider.DefaultKey:" + a10;
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels".toString());
    }

    public final j0 c() {
        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
    }
}
