package a1;

import android.app.Notification;
import android.media.session.MediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import androidx.core.app.j;
import androidx.core.app.k;
/* loaded from: classes.dex */
public class a extends k.j {

    /* renamed from: e  reason: collision with root package name */
    int[] f58e = null;

    /* renamed from: f  reason: collision with root package name */
    MediaSessionCompat.Token f59f;

    @Override // androidx.core.app.k.j
    public void b(j jVar) {
        jVar.a().setStyle(n(new Notification.MediaStyle()));
    }

    @Override // androidx.core.app.k.j
    public RemoteViews i(j jVar) {
        return null;
    }

    @Override // androidx.core.app.k.j
    public RemoteViews j(j jVar) {
        return null;
    }

    Notification.MediaStyle n(Notification.MediaStyle mediaStyle) {
        int[] iArr = this.f58e;
        if (iArr != null) {
            mediaStyle.setShowActionsInCompactView(iArr);
        }
        MediaSessionCompat.Token token = this.f59f;
        if (token != null) {
            mediaStyle.setMediaSession((MediaSession.Token) token.a());
        }
        return mediaStyle;
    }
}
