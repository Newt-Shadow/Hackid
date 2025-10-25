package sb;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.pravera.flutter_foreground_task.service.ForegroundService;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    public static final a f29577a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f29578b = b.class.getSimpleName();

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(Context context) {
            m.e(context, "context");
            try {
                if ((context.getPackageManager().getServiceInfo(new ComponentName(context, ForegroundService.class), 128).flags & 1) == 1) {
                    return true;
                }
                return false;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e(b.f29578b, "isSetStopWithTaskFlag >> The service component cannot be found on the system.");
                return true;
            } catch (Exception e10) {
                String str = b.f29578b;
                Log.e(str, "isSetStopWithTaskFlag >> " + e10);
                return true;
            }
        }
    }
}
