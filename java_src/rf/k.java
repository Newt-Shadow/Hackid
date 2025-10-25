package rf;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class k extends a {

    /* renamed from: b  reason: collision with root package name */
    private final s f29165b;

    /* renamed from: c  reason: collision with root package name */
    private final id.a f29166c;

    /* renamed from: d  reason: collision with root package name */
    private final id.l f29167d;

    /* renamed from: e  reason: collision with root package name */
    private qf.a f29168e;

    /* renamed from: f  reason: collision with root package name */
    private AudioFocusRequest f29169f;

    public k(s player, id.a onGranted, id.l onLoss) {
        kotlin.jvm.internal.m.e(player, "player");
        kotlin.jvm.internal.m.e(onGranted, "onGranted");
        kotlin.jvm.internal.m.e(onLoss, "onLoss");
        this.f29165b = player;
        this.f29166c = onGranted;
        this.f29167d = onLoss;
        this.f29168e = e().j();
        l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(k kVar, int i10) {
        kVar.f(i10);
    }

    @Override // rf.a
    public qf.a b() {
        return this.f29168e;
    }

    @Override // rf.a
    public id.a c() {
        return this.f29166c;
    }

    @Override // rf.a
    public id.l d() {
        return this.f29167d;
    }

    @Override // rf.a
    public s e() {
        return this.f29165b;
    }

    @Override // rf.a
    public void g() {
        AudioFocusRequest audioFocusRequest;
        if (h() && (audioFocusRequest = this.f29169f) != null) {
            a().abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    @Override // rf.a
    protected boolean h() {
        if (this.f29169f != null) {
            return true;
        }
        return false;
    }

    @Override // rf.a
    protected void j() {
        int requestAudioFocus;
        AudioManager a10 = a();
        AudioFocusRequest audioFocusRequest = this.f29169f;
        kotlin.jvm.internal.m.b(audioFocusRequest);
        requestAudioFocus = a10.requestAudioFocus(audioFocusRequest);
        f(requestAudioFocus);
    }

    @Override // rf.a
    public void k(qf.a aVar) {
        kotlin.jvm.internal.m.e(aVar, "<set-?>");
        this.f29168e = aVar;
    }

    @Override // rf.a
    protected void l() {
        AudioFocusRequest.Builder audioAttributes;
        AudioFocusRequest.Builder onAudioFocusChangeListener;
        AudioFocusRequest build;
        if (b().d() == 0) {
            build = null;
        } else {
            b3.e.a();
            audioAttributes = b3.d.a(b().d()).setAudioAttributes(b().a());
            onAudioFocusChangeListener = audioAttributes.setOnAudioFocusChangeListener(new AudioManager.OnAudioFocusChangeListener() { // from class: rf.j
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public final void onAudioFocusChange(int i10) {
                    k.n(k.this, i10);
                }
            });
            build = onAudioFocusChangeListener.build();
        }
        this.f29169f = build;
    }
}
