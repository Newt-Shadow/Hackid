package j0;

import id.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public abstract class w {

    /* loaded from: classes.dex */
    public static final class a extends w {

        /* renamed from: a  reason: collision with root package name */
        private final Function2 f24239a;

        /* renamed from: b  reason: collision with root package name */
        private final td.v f24240b;

        /* renamed from: c  reason: collision with root package name */
        private final i0 f24241c;

        /* renamed from: d  reason: collision with root package name */
        private final ad.i f24242d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Function2 transform, td.v ack, i0 i0Var, ad.i callerContext) {
            super(null);
            kotlin.jvm.internal.m.e(transform, "transform");
            kotlin.jvm.internal.m.e(ack, "ack");
            kotlin.jvm.internal.m.e(callerContext, "callerContext");
            this.f24239a = transform;
            this.f24240b = ack;
            this.f24241c = i0Var;
            this.f24242d = callerContext;
        }

        public final td.v a() {
            return this.f24240b;
        }

        public final ad.i b() {
            return this.f24242d;
        }

        public i0 c() {
            return this.f24241c;
        }

        public final Function2 d() {
            return this.f24239a;
        }
    }

    private w() {
    }

    public /* synthetic */ w(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
