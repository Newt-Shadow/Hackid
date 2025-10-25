package sf;

import android.media.MediaPlayer;
import kotlin.jvm.internal.m;
import rf.o;
/* loaded from: classes2.dex */
public final class b implements c {

    /* renamed from: a  reason: collision with root package name */
    private final a f29696a;

    public b(a dataSource) {
        m.e(dataSource, "dataSource");
        this.f29696a = dataSource;
    }

    @Override // sf.c
    public void a(MediaPlayer mediaPlayer) {
        m.e(mediaPlayer, "mediaPlayer");
        mediaPlayer.setDataSource(this.f29696a);
    }

    @Override // sf.c
    public void b(o soundPoolPlayer) {
        m.e(soundPoolPlayer, "soundPoolPlayer");
        throw new IllegalStateException("Bytes sources are not supported on LOW_LATENCY mode yet.".toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && m.a(this.f29696a, ((b) obj).f29696a);
    }

    public int hashCode() {
        return this.f29696a.hashCode();
    }

    public String toString() {
        return "BytesSource(dataSource=" + this.f29696a + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(byte[] bytes) {
        this(new a(bytes));
        m.e(bytes, "bytes");
    }
}
