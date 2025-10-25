package i4;

import android.net.Uri;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap f17122a;

    /* loaded from: classes.dex */
    class a extends LinkedHashMap {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f17123a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(e eVar, int i10, float f10, boolean z10, int i11) {
            super(i10, f10, z10);
            this.f17123a = i11;
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry entry) {
            if (size() > this.f17123a) {
                return true;
            }
            return false;
        }
    }

    public e(int i10) {
        this.f17122a = new a(this, i10 + 1, 1.0f, false, i10);
    }

    public byte[] a(Uri uri) {
        if (uri == null) {
            return null;
        }
        return (byte[]) this.f17122a.get(uri);
    }

    public byte[] b(Uri uri, byte[] bArr) {
        return (byte[]) this.f17122a.put((Uri) y4.a.e(uri), (byte[]) y4.a.e(bArr));
    }

    public byte[] c(Uri uri) {
        return (byte[]) this.f17122a.remove(y4.a.e(uri));
    }
}
