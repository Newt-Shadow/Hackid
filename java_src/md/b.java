package md;

import java.util.Random;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class b extends md.a {

    /* renamed from: c  reason: collision with root package name */
    private final a f26020c = new a();

    /* loaded from: classes2.dex */
    public static final class a extends ThreadLocal {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public Random initialValue() {
            return new Random();
        }
    }

    @Override // md.a
    public Random c() {
        Object obj = this.f26020c.get();
        m.d(obj, "get(...)");
        return (Random) obj;
    }
}
