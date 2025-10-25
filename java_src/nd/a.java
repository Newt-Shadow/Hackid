package nd;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class a extends md.a {
    @Override // md.a
    public Random c() {
        ThreadLocalRandom current = ThreadLocalRandom.current();
        m.d(current, "current(...)");
        return current;
    }
}
