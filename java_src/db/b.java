package db;

import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class b implements MethodChannel.MethodCallHandler {
    private final double a() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((float) (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong())) / 1048576.0f;
    }

    private final double b(String str) {
        StatFs statFs = new StatFs(str);
        return ((float) (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong())) / 1048576.0f;
    }

    private final String c() {
        String str = Build.VERSION.RELEASE;
        return "Android " + str;
    }

    private final double d() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((float) (statFs.getBlockSizeLong() * statFs.getBlockCountLong())) / 1048576.0f;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        m.e(call, "call");
        m.e(result, "result");
        String str = call.method;
        if (str != null) {
            switch (str.hashCode()) {
                case -1687221785:
                    if (str.equals("getFreeDiskSpaceForPath")) {
                        Object argument = call.argument("path");
                        m.b(argument);
                        result.success(Double.valueOf(b((String) argument)));
                        return;
                    }
                    break;
                case -835310425:
                    if (str.equals("getFreeDiskSpace")) {
                        result.success(Double.valueOf(a()));
                        return;
                    }
                    break;
                case 609971067:
                    if (str.equals("getTotalDiskSpace")) {
                        result.success(Double.valueOf(d()));
                        return;
                    }
                    break;
                case 1385449135:
                    if (str.equals("getPlatformVersion")) {
                        result.success(c());
                        return;
                    }
                    break;
            }
        }
        result.notImplemented();
    }
}
