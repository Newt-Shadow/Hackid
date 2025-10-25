package m5;

import com.google.android.gms.common.api.a;
import m5.j;
/* loaded from: classes.dex */
public abstract class o {

    /* renamed from: a  reason: collision with root package name */
    private final j f25842a;

    /* renamed from: b  reason: collision with root package name */
    private final l5.d[] f25843b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f25844c;

    /* renamed from: d  reason: collision with root package name */
    private final int f25845d;

    /* JADX INFO: Access modifiers changed from: protected */
    public o(j jVar, l5.d[] dVarArr, boolean z10, int i10) {
        this.f25842a = jVar;
        this.f25843b = dVarArr;
        this.f25844c = z10;
        this.f25845d = i10;
    }

    public void a() {
        this.f25842a.a();
    }

    public j.a b() {
        return this.f25842a.b();
    }

    public l5.d[] c() {
        return this.f25843b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void d(a.b bVar, m6.l lVar);

    public final int e() {
        return this.f25845d;
    }

    public final boolean f() {
        return this.f25844c;
    }
}
