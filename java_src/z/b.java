package z;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f33318a = new b();

    private b() {
    }

    public static final void a(Bundle bundle, String str, Size size) {
        bundle.putSize(str, size);
    }

    public static final void b(Bundle bundle, String str, SizeF sizeF) {
        bundle.putSizeF(str, sizeF);
    }
}
