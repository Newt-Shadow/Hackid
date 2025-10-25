package m4;

import android.os.Bundle;
import b3.r;
import java.util.ArrayList;
import java.util.List;
import o6.q;
import y4.q0;
/* loaded from: classes.dex */
public final class e implements r {

    /* renamed from: c  reason: collision with root package name */
    public static final e f25719c = new e(q.D(), 0);

    /* renamed from: d  reason: collision with root package name */
    private static final String f25720d = q0.q0(0);

    /* renamed from: e  reason: collision with root package name */
    private static final String f25721e = q0.q0(1);

    /* renamed from: f  reason: collision with root package name */
    public static final r.a f25722f = new r.a() { // from class: m4.d
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            e b10;
            b10 = e.b(bundle);
            return b10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final q f25723a;

    /* renamed from: b  reason: collision with root package name */
    public final long f25724b;

    public e(List list, long j10) {
        this.f25723a = q.t(list);
        this.f25724b = j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final e b(Bundle bundle) {
        q b10;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(f25720d);
        if (parcelableArrayList == null) {
            b10 = q.D();
        } else {
            b10 = y4.c.b(b.J, parcelableArrayList);
        }
        return new e(b10, bundle.getLong(f25721e));
    }
}
