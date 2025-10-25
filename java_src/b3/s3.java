package b3;

import android.os.Bundle;
import b3.r;
/* loaded from: classes.dex */
public abstract class s3 implements r {

    /* renamed from: a  reason: collision with root package name */
    static final String f4361a = y4.q0.q0(0);

    /* renamed from: b  reason: collision with root package name */
    public static final r.a f4362b = new r.a() { // from class: b3.r3
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            s3 b10;
            b10 = s3.b(bundle);
            return b10;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static s3 b(Bundle bundle) {
        int i10 = bundle.getInt(f4361a, -1);
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return (s3) e4.f3868g.fromBundle(bundle);
                    }
                    throw new IllegalArgumentException("Unknown RatingType: " + i10);
                }
                return (s3) z3.f4584g.fromBundle(bundle);
            }
            return (s3) g3.f4040e.fromBundle(bundle);
        }
        return (s3) a2.f3776g.fromBundle(bundle);
    }
}
