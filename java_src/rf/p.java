package rf;

import android.media.SoundPool;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private final SoundPool f29194a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f29195b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f29196c;

    public p(SoundPool soundPool) {
        kotlin.jvm.internal.m.e(soundPool, "soundPool");
        this.f29194a = soundPool;
        Map synchronizedMap = Collections.synchronizedMap(new LinkedHashMap());
        kotlin.jvm.internal.m.d(synchronizedMap, "synchronizedMap(...)");
        this.f29195b = synchronizedMap;
        Map synchronizedMap2 = Collections.synchronizedMap(new LinkedHashMap());
        kotlin.jvm.internal.m.d(synchronizedMap2, "synchronizedMap(...)");
        this.f29196c = synchronizedMap2;
    }

    public final void a() {
        this.f29194a.release();
        this.f29195b.clear();
        this.f29196c.clear();
    }

    public final Map b() {
        return this.f29195b;
    }

    public final SoundPool c() {
        return this.f29194a;
    }

    public final Map d() {
        return this.f29196c;
    }
}
