package c4;

import android.net.Uri;
import java.io.InputStream;
import java.util.List;
import x4.g0;
/* loaded from: classes.dex */
public final class b implements g0.a {

    /* renamed from: a  reason: collision with root package name */
    private final g0.a f5029a;

    /* renamed from: b  reason: collision with root package name */
    private final List f5030b;

    public b(g0.a aVar, List list) {
        this.f5029a = aVar;
        this.f5030b = list;
    }

    @Override // x4.g0.a
    /* renamed from: b */
    public a a(Uri uri, InputStream inputStream) {
        a aVar = (a) this.f5029a.a(uri, inputStream);
        List list = this.f5030b;
        if (list != null && !list.isEmpty()) {
            return (a) aVar.a(this.f5030b);
        }
        return aVar;
    }
}
