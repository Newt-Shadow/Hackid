package s1;

import android.app.Activity;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.m;
import t1.f;
import wd.d;
/* loaded from: classes.dex */
public final class a implements f {

    /* renamed from: b  reason: collision with root package name */
    private final f f29236b;

    /* renamed from: c  reason: collision with root package name */
    private final r1.a f29237c;

    private a(f fVar, r1.a aVar) {
        this.f29236b = fVar;
        this.f29237c = aVar;
    }

    @Override // t1.f
    public d a(Activity activity) {
        m.e(activity, "activity");
        return this.f29236b.a(activity);
    }

    public final void b(Activity activity, Executor executor, c0.a consumer) {
        m.e(activity, "activity");
        m.e(executor, "executor");
        m.e(consumer, "consumer");
        this.f29237c.a(executor, consumer, this.f29236b.a(activity));
    }

    public final void c(c0.a consumer) {
        m.e(consumer, "consumer");
        this.f29237c.b(consumer);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(f tracker) {
        this(tracker, new r1.a());
        m.e(tracker, "tracker");
    }
}
