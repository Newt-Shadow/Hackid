package td;

import ad.i;
import java.io.Closeable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import td.k1;
/* loaded from: classes2.dex */
public abstract class k1 extends i0 implements Closeable, AutoCloseable {

    /* renamed from: c  reason: collision with root package name */
    public static final a f30661c = new a(null);

    /* loaded from: classes2.dex */
    public static final class a extends ad.b {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final k1 d(i.b bVar) {
            if (bVar instanceof k1) {
                return (k1) bVar;
            }
            return null;
        }

        private a() {
            super(i0.f30653b, new id.l() { // from class: td.j1
                @Override // id.l
                public final Object invoke(Object obj) {
                    k1 d10;
                    d10 = k1.a.d((i.b) obj);
                    return d10;
                }
            });
        }
    }
}
