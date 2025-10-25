package l5;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public class a implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    boolean f25256a = false;

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue f25257b = new LinkedBlockingQueue();

    public IBinder a() {
        n5.q.j("BlockingServiceConnection.getService() called on main thread");
        if (!this.f25256a) {
            this.f25256a = true;
            return (IBinder) this.f25257b.take();
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    public IBinder b(long j10, TimeUnit timeUnit) {
        n5.q.j("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.f25256a) {
            this.f25256a = true;
            IBinder iBinder = (IBinder) this.f25257b.poll(j10, timeUnit);
            if (iBinder != null) {
                return iBinder;
            }
            throw new TimeoutException("Timed out waiting for the service connection");
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f25257b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
