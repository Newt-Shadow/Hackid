package io.flutter.plugin.text;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import io.flutter.Build;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.embedding.engine.systemchannels.ProcessTextChannel;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.tika.mime.MimeTypes;
/* loaded from: classes2.dex */
public class ProcessTextPlugin implements FlutterPlugin, ActivityAware, PluginRegistry.ActivityResultListener, ProcessTextChannel.ProcessTextMethodHandler {
    private static final String TAG = "ProcessTextPlugin";
    private ActivityPluginBinding activityBinding;
    private final PackageManager packageManager;
    private final ProcessTextChannel processTextChannel;
    private Map<Integer, MethodChannel.Result> requestsByCode = new HashMap();
    private Map<String, ResolveInfo> resolveInfosById;

    public ProcessTextPlugin(ProcessTextChannel processTextChannel) {
        this.processTextChannel = processTextChannel;
        this.packageManager = processTextChannel.packageManager;
        processTextChannel.setMethodHandler(this);
    }

    private void cacheResolveInfos() {
        List<ResolveInfo> queryIntentActivities;
        PackageManager.ResolveInfoFlags of2;
        this.resolveInfosById = new HashMap();
        int i10 = Build.VERSION.SDK_INT;
        Intent type = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType(MimeTypes.PLAIN_TEXT);
        if (i10 >= 33) {
            PackageManager packageManager = this.packageManager;
            of2 = PackageManager.ResolveInfoFlags.of(0L);
            queryIntentActivities = packageManager.queryIntentActivities(type, of2);
        } else {
            queryIntentActivities = this.packageManager.queryIntentActivities(type, 0);
        }
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            String str = resolveInfo.activityInfo.name;
            resolveInfo.loadLabel(this.packageManager).toString();
            this.resolveInfosById.put(str, resolveInfo);
        }
    }

    public void destroy() {
        this.processTextChannel.setMethodHandler(null);
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    @TargetApi(Build.API_LEVELS.API_23)
    public boolean onActivityResult(int i10, int i11, Intent intent) {
        String str;
        if (!this.requestsByCode.containsKey(Integer.valueOf(i10))) {
            return false;
        }
        if (i11 == -1) {
            str = intent.getStringExtra("android.intent.extra.PROCESS_TEXT");
        } else {
            str = null;
        }
        this.requestsByCode.remove(Integer.valueOf(i10)).success(str);
        return true;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        this.activityBinding = activityPluginBinding;
        activityPluginBinding.addActivityResultListener(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.activityBinding.removeActivityResultListener(this);
        this.activityBinding = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.activityBinding.removeActivityResultListener(this);
        this.activityBinding = null;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        this.activityBinding = activityPluginBinding;
        activityPluginBinding.addActivityResultListener(this);
    }

    @Override // io.flutter.embedding.engine.systemchannels.ProcessTextChannel.ProcessTextMethodHandler
    public void processTextAction(String str, String str2, boolean z10, MethodChannel.Result result) {
        if (this.activityBinding == null) {
            result.error("error", "Plugin not bound to an Activity", null);
            return;
        }
        Map<String, ResolveInfo> map = this.resolveInfosById;
        if (map == null) {
            result.error("error", "Can not process text actions before calling queryTextActions", null);
            return;
        }
        ResolveInfo resolveInfo = map.get(str);
        if (resolveInfo == null) {
            result.error("error", "Text processing activity not found", null);
            return;
        }
        Integer valueOf = Integer.valueOf(result.hashCode());
        this.requestsByCode.put(valueOf, result);
        Intent intent = new Intent();
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent.setClassName(activityInfo.packageName, activityInfo.name);
        intent.setAction("android.intent.action.PROCESS_TEXT");
        intent.setType(MimeTypes.PLAIN_TEXT);
        intent.putExtra("android.intent.extra.PROCESS_TEXT", str2);
        intent.putExtra("android.intent.extra.PROCESS_TEXT_READONLY", z10);
        this.activityBinding.getActivity().startActivityForResult(intent, valueOf.intValue());
    }

    @Override // io.flutter.embedding.engine.systemchannels.ProcessTextChannel.ProcessTextMethodHandler
    public Map<String, String> queryTextActions() {
        if (this.resolveInfosById == null) {
            cacheResolveInfos();
        }
        HashMap hashMap = new HashMap();
        for (String str : this.resolveInfosById.keySet()) {
            hashMap.put(str, this.resolveInfosById.get(str).loadLabel(this.packageManager).toString());
        }
        return hashMap;
    }
}
