package k5;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.util.Objects;
/* loaded from: classes.dex */
final class y {

    /* renamed from: a  reason: collision with root package name */
    private final Messenger f24769a;

    /* renamed from: b  reason: collision with root package name */
    private final l f24770b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(IBinder iBinder) {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if (Objects.equals(interfaceDescriptor, "android.os.IMessenger")) {
            this.f24769a = new Messenger(iBinder);
            this.f24770b = null;
        } else if (Objects.equals(interfaceDescriptor, "com.google.android.gms.iid.IMessengerCompat")) {
            this.f24770b = new l(iBinder);
            this.f24769a = null;
        } else {
            Log.w("MessengerIpcClient", "Invalid interface descriptor: ".concat(String.valueOf(interfaceDescriptor)));
            throw new RemoteException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Message message) {
        Messenger messenger = this.f24769a;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        l lVar = this.f24770b;
        if (lVar != null) {
            lVar.b(message);
            return;
        }
        throw new IllegalStateException("Both messengers are null");
    }
}
