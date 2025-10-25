package sf;

import android.media.MediaPlayer;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URI;
import java.net.URL;
import kotlin.jvm.internal.m;
import rd.b0;
import rf.o;
import xc.t;
/* loaded from: classes2.dex */
public final class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f29697a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f29698b;

    public d(String url, boolean z10) {
        m.e(url, "url");
        this.f29697a = url;
        this.f29698b = z10;
    }

    private final byte[] c(URL url) {
        boolean z10;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        InputStream openStream = url.openStream();
        try {
            byte[] bArr = new byte[Base64Utils.IO_BUFFER_SIZE];
            while (true) {
                Integer valueOf = Integer.valueOf(openStream.read(bArr));
                if (valueOf.intValue() > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    valueOf = null;
                }
                if (valueOf != null) {
                    byteArrayOutputStream.write(bArr, 0, valueOf.intValue());
                } else {
                    t tVar = t.f32733a;
                    gd.b.a(openStream, null);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    m.d(byteArray, "toByteArray(...)");
                    return byteArray;
                }
            }
        } finally {
        }
    }

    private final File e() {
        URL url = URI.create(this.f29697a).toURL();
        m.d(url, "toURL(...)");
        byte[] c10 = c(url);
        File createTempFile = File.createTempFile("sound", "");
        FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
        try {
            fileOutputStream.write(c10);
            createTempFile.deleteOnExit();
            t tVar = t.f32733a;
            gd.b.a(fileOutputStream, null);
            m.b(createTempFile);
            return createTempFile;
        } finally {
        }
    }

    @Override // sf.c
    public void a(MediaPlayer mediaPlayer) {
        m.e(mediaPlayer, "mediaPlayer");
        mediaPlayer.setDataSource(this.f29697a);
    }

    @Override // sf.c
    public void b(o soundPoolPlayer) {
        m.e(soundPoolPlayer, "soundPoolPlayer");
        soundPoolPlayer.release();
        soundPoolPlayer.w(this);
    }

    public final String d() {
        String s02;
        if (this.f29698b) {
            s02 = b0.s0(this.f29697a, "file://");
            return s02;
        }
        String absolutePath = e().getAbsolutePath();
        m.d(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            return m.a(this.f29697a, dVar.f29697a) && this.f29698b == dVar.f29698b;
        }
        return false;
    }

    public int hashCode() {
        return (this.f29697a.hashCode() * 31) + Boolean.hashCode(this.f29698b);
    }

    public String toString() {
        return "UrlSource(url=" + this.f29697a + ", isLocal=" + this.f29698b + ')';
    }
}
