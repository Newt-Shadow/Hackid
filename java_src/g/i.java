package g;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class i extends g.a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f16082a = new a(null);

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
    public Intent a(Context context, f.g input) {
        m.e(context, "context");
        m.e(input, "input");
        Intent putExtra = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", input);
        m.d(putExtra, "Intent(ACTION_INTENT_SEN…NT_SENDER_REQUEST, input)");
        return putExtra;
    }

    @Override // g.a
    /* renamed from: e */
    public f.a c(int i10, Intent intent) {
        return new f.a(i10, intent);
    }
}
