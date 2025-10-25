package rf;

import android.media.MediaPlayer;
/* loaded from: classes2.dex */
public final class i implements l {

    /* renamed from: a  reason: collision with root package name */
    private final s f29162a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaPlayer f29163b;

    public i(s wrappedPlayer) {
        kotlin.jvm.internal.m.e(wrappedPlayer, "wrappedPlayer");
        this.f29162a = wrappedPlayer;
        this.f29163b = p(wrappedPlayer);
    }

    private final MediaPlayer p(final s sVar) {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: rf.d
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer2) {
                i.q(s.this, mediaPlayer2);
            }
        });
        mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: rf.e
            @Override // android.media.MediaPlayer.OnCompletionListener
            public final void onCompletion(MediaPlayer mediaPlayer2) {
                i.r(s.this, mediaPlayer2);
            }
        });
        mediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: rf.f
            @Override // android.media.MediaPlayer.OnSeekCompleteListener
            public final void onSeekComplete(MediaPlayer mediaPlayer2) {
                i.s(s.this, mediaPlayer2);
            }
        });
        mediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: rf.g
            @Override // android.media.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mediaPlayer2, int i10, int i11) {
                boolean t10;
                t10 = i.t(s.this, mediaPlayer2, i10, i11);
                return t10;
            }
        });
        mediaPlayer.setOnBufferingUpdateListener(new MediaPlayer.OnBufferingUpdateListener() { // from class: rf.h
            @Override // android.media.MediaPlayer.OnBufferingUpdateListener
            public final void onBufferingUpdate(MediaPlayer mediaPlayer2, int i10) {
                i.u(s.this, mediaPlayer2, i10);
            }
        });
        sVar.j().h(mediaPlayer);
        return mediaPlayer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(s sVar, MediaPlayer mediaPlayer) {
        sVar.A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(s sVar, MediaPlayer mediaPlayer) {
        sVar.y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(s sVar, MediaPlayer mediaPlayer) {
        sVar.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean t(s sVar, MediaPlayer mediaPlayer, int i10, int i11) {
        return sVar.z(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(s sVar, MediaPlayer mediaPlayer, int i10) {
        sVar.x(i10);
    }

    @Override // rf.l
    public void a() {
        this.f29163b.reset();
    }

    @Override // rf.l
    public void b() {
        this.f29163b.prepareAsync();
    }

    @Override // rf.l
    public void c(boolean z10) {
        this.f29163b.setLooping(z10);
    }

    @Override // rf.l
    public void d(sf.c source) {
        kotlin.jvm.internal.m.e(source, "source");
        a();
        source.a(this.f29163b);
    }

    @Override // rf.l
    public void e(int i10) {
        this.f29163b.seekTo(i10);
    }

    @Override // rf.l
    public Integer f() {
        return Integer.valueOf(this.f29163b.getCurrentPosition());
    }

    @Override // rf.l
    public void g(qf.a context) {
        kotlin.jvm.internal.m.e(context, "context");
        context.h(this.f29163b);
        if (context.f()) {
            this.f29163b.setWakeMode(this.f29162a.h(), 1);
        }
    }

    @Override // rf.l
    public Integer getDuration() {
        boolean z10;
        Integer valueOf = Integer.valueOf(this.f29163b.getDuration());
        if (valueOf.intValue() == -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return null;
        }
        return valueOf;
    }

    @Override // rf.l
    public void h(float f10, float f11) {
        this.f29163b.setVolume(f10, f11);
    }

    @Override // rf.l
    public boolean i() {
        Integer duration = getDuration();
        if (duration != null && duration.intValue() != 0) {
            return false;
        }
        return true;
    }

    @Override // rf.l
    public void j(float f10) {
        MediaPlayer mediaPlayer = this.f29163b;
        mediaPlayer.setPlaybackParams(mediaPlayer.getPlaybackParams().setSpeed(f10));
    }

    @Override // rf.l
    public void pause() {
        this.f29163b.pause();
    }

    @Override // rf.l
    public void release() {
        this.f29163b.reset();
        this.f29163b.release();
    }

    @Override // rf.l
    public void start() {
        j(this.f29162a.q());
    }

    @Override // rf.l
    public void stop() {
        this.f29163b.stop();
    }
}
