package g;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class h extends g.a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f16081a = new a(null);

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // g.a
    /* renamed from: d */
    public Intent a(Context context, Intent input) {
        m.e(context, "context");
        m.e(input, "input");
        return input;
    }

    @Override // g.a
    /* renamed from: e */
    public f.a c(int i10, Intent intent) {
        return new f.a(i10, intent);
    }
}
