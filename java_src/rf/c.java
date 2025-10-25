package rf;

import android.media.AudioManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c extends a {

    /* renamed from: b  reason: collision with root package name */
    private final s f29152b;

    /* renamed from: c  reason: collision with root package name */
    private final id.a f29153c;

    /* renamed from: d  reason: collision with root package name */
    private final id.l f29154d;

    /* renamed from: e  reason: collision with root package name */
    private qf.a f29155e;

    /* renamed from: f  reason: collision with root package name */
    private AudioManager.OnAudioFocusChangeListener f29156f;

    public c(s player, id.a onGranted, id.l onLoss) {
        kotlin.jvm.internal.m.e(player, "player");
        kotlin.jvm.internal.m.e(onGranted, "onGranted");
        kotlin.jvm.internal.m.e(onLoss, "onLoss");
        this.f29152b = player;
        this.f29153c = onGranted;
        this.f29154d = onLoss;
        this.f29155e = e().j();
        l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(c cVar, int i10) {
        cVar.f(i10);
    }

    @Override // rf.a
    public qf.a b() {
        return this.f29155e;
    }

    @Override // rf.a
    public id.a c() {
        return this.f29153c;
    }

    @Override // rf.a
    public id.l d() {
        return this.f29154d;
    }

    @Override // rf.a
    public s e() {
        return this.f29152b;
    }

    @Override // rf.a
    public void g() {
        if (h()) {
            a().abandonAudioFocus(this.f29156f);
        }
    }

    @Override // rf.a
    protected boolean h() {
        if (this.f29156f != null) {
            return true;
        }
        return false;
    }

    @Override // rf.a
    protected void j() {
        f(a().requestAudioFocus(this.f29156f, 3, b().d()));
    }

    @Override // rf.a
    public void k(qf.a aVar) {
        kotlin.jvm.internal.m.e(aVar, "<set-?>");
        this.f29155e = aVar;
    }

    @Override // rf.a
    protected void l() {
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
        if (b().d() == 0) {
            onAudioFocusChangeListener = null;
        } else {
            onAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: rf.b
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public final void onAudioFocusChange(int i10) {
                    c.n(c.this, i10);
                }
            };
        }
        this.f29156f = onAudioFocusChangeListener;
    }
}
