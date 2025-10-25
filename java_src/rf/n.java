package rf;

import android.media.AudioAttributes;
import android.media.SoundPool;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.g0;
import xc.t;
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final qf.d f29172a;

    /* renamed from: b  reason: collision with root package name */
    private final HashMap f29173b;

    public n(qf.d ref) {
        kotlin.jvm.internal.m.e(ref, "ref");
        this.f29172a = ref;
        this.f29173b = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(n nVar, p pVar, SoundPool soundPool, int i10, int i11) {
        sf.d dVar;
        qf.d dVar2 = nVar.f29172a;
        dVar2.m("Loaded " + i10);
        o oVar = (o) pVar.b().get(Integer.valueOf(i10));
        if (oVar != null) {
            dVar = oVar.r();
        } else {
            dVar = null;
        }
        if (dVar != null) {
            Map b10 = pVar.b();
            g0.b(b10).remove(oVar.p());
            synchronized (pVar.d()) {
                List<o> list = (List) pVar.d().get(dVar);
                if (list == null) {
                    list = yc.o.h();
                }
                for (o oVar2 : list) {
                    s s10 = oVar2.s();
                    s10.t("Marking " + oVar2 + " as loaded");
                    oVar2.s().J(true);
                    if (oVar2.s().o()) {
                        s s11 = oVar2.s();
                        s11.t("Delayed start of " + oVar2);
                        oVar2.start();
                    }
                }
                t tVar = t.f32733a;
            }
        }
    }

    public final void b(int i10, qf.a audioContext) {
        kotlin.jvm.internal.m.e(audioContext, "audioContext");
        AudioAttributes a10 = audioContext.a();
        if (!this.f29173b.containsKey(a10)) {
            SoundPool build = new SoundPool.Builder().setAudioAttributes(a10).setMaxStreams(i10).build();
            qf.d dVar = this.f29172a;
            dVar.m("Create SoundPool with " + a10);
            kotlin.jvm.internal.m.b(build);
            final p pVar = new p(build);
            pVar.c().setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: rf.m
                @Override // android.media.SoundPool.OnLoadCompleteListener
                public final void onLoadComplete(SoundPool soundPool, int i11, int i12) {
                    n.c(n.this, pVar, soundPool, i11, i12);
                }
            });
            this.f29173b.put(a10, pVar);
        }
    }

    public final void d() {
        for (Map.Entry entry : this.f29173b.entrySet()) {
            ((p) entry.getValue()).a();
        }
        this.f29173b.clear();
    }

    public final p e(qf.a audioContext) {
        kotlin.jvm.internal.m.e(audioContext, "audioContext");
        return (p) this.f29173b.get(audioContext.a());
    }
}
