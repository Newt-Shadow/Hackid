package h9;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.os.Vibrator;
import android.util.Log;
import java.io.IOException;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: d  reason: collision with root package name */
    private static final String f16902d = "e";

    /* renamed from: a  reason: collision with root package name */
    private final Context f16903a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f16904b = true;

    /* renamed from: c  reason: collision with root package name */
    private boolean f16905c = false;

    public e(Activity activity) {
        activity.setVolumeControlStream(3);
        this.f16903a = activity.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(MediaPlayer mediaPlayer) {
        mediaPlayer.stop();
        mediaPlayer.reset();
        mediaPlayer.release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(MediaPlayer mediaPlayer, int i10, int i11) {
        String str = f16902d;
        Log.w(str, "Failed to beep " + i10 + ", " + i11);
        mediaPlayer.stop();
        mediaPlayer.reset();
        mediaPlayer.release();
        return true;
    }

    public MediaPlayer e() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(2).build());
        mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: h9.c
            @Override // android.media.MediaPlayer.OnCompletionListener
            public final void onCompletion(MediaPlayer mediaPlayer2) {
                e.c(mediaPlayer2);
            }
        });
        mediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: h9.d
            @Override // android.media.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mediaPlayer2, int i10, int i11) {
                boolean d10;
                d10 = e.d(mediaPlayer2, i10, i11);
                return d10;
            }
        });
        try {
            AssetFileDescriptor openRawResourceFd = this.f16903a.getResources().openRawResourceFd(m.f16944a);
            mediaPlayer.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
            openRawResourceFd.close();
            mediaPlayer.setVolume(0.1f, 0.1f);
            mediaPlayer.prepare();
            mediaPlayer.start();
            return mediaPlayer;
        } catch (IOException e10) {
            Log.w(f16902d, e10);
            mediaPlayer.reset();
            mediaPlayer.release();
            return null;
        }
    }

    public synchronized void f() {
        Vibrator vibrator;
        if (this.f16904b) {
            e();
        }
        if (this.f16905c && (vibrator = (Vibrator) this.f16903a.getSystemService("vibrator")) != null) {
            vibrator.vibrate(200L);
        }
    }

    public void g(boolean z10) {
        this.f16904b = z10;
    }
}
