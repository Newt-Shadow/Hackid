package ge;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class f {

    /* loaded from: classes2.dex */
    public static final class a extends f {

        /* renamed from: a  reason: collision with root package name */
        public static final a f16418a = new a();

        private a() {
            super(null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends f {

        /* renamed from: a  reason: collision with root package name */
        public static final b f16419a = new b();

        private b() {
            super(null);
        }
    }

    private f() {
    }

    public /* synthetic */ f(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public String toString() {
        String b10 = d0.b(getClass()).b();
        m.b(b10);
        return b10;
    }
}
