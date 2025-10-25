package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(androidx.versionedparcelable.a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f1850a = (IconCompat) aVar.v(remoteActionCompat.f1850a, 1);
        remoteActionCompat.f1851b = aVar.l(remoteActionCompat.f1851b, 2);
        remoteActionCompat.f1852c = aVar.l(remoteActionCompat.f1852c, 3);
        remoteActionCompat.f1853d = (PendingIntent) aVar.r(remoteActionCompat.f1853d, 4);
        remoteActionCompat.f1854e = aVar.h(remoteActionCompat.f1854e, 5);
        remoteActionCompat.f1855f = aVar.h(remoteActionCompat.f1855f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, androidx.versionedparcelable.a aVar) {
        aVar.x(false, false);
        aVar.M(remoteActionCompat.f1850a, 1);
        aVar.D(remoteActionCompat.f1851b, 2);
        aVar.D(remoteActionCompat.f1852c, 3);
        aVar.H(remoteActionCompat.f1853d, 4);
        aVar.z(remoteActionCompat.f1854e, 5);
        aVar.z(remoteActionCompat.f1855f, 6);
    }
}
