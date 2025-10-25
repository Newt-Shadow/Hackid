package q1;

import android.util.Log;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final a f27942a = new a();

    private a() {
    }

    @Override // q1.g
    public void a(String tag, String message) {
        m.e(tag, "tag");
        m.e(message, "message");
        Log.d(tag, message);
    }
}
