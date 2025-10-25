package io.flutter.embedding.engine;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import io.flutter.FlutterInjector;
import io.flutter.Log;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.deferredcomponents.DeferredComponentManager;
import io.flutter.embedding.engine.loader.FlutterLoader;
import io.flutter.embedding.engine.plugins.PluginRegistry;
import io.flutter.embedding.engine.plugins.activity.ActivityControlSurface;
import io.flutter.embedding.engine.plugins.broadcastreceiver.BroadcastReceiverControlSurface;
import io.flutter.embedding.engine.plugins.contentprovider.ContentProviderControlSurface;
import io.flutter.embedding.engine.plugins.service.ServiceControlSurface;
import io.flutter.embedding.engine.plugins.util.GeneratedPluginRegister;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.embedding.engine.systemchannels.AccessibilityChannel;
import io.flutter.embedding.engine.systemchannels.BackGestureChannel;
import io.flutter.embedding.engine.systemchannels.DeferredComponentChannel;
import io.flutter.embedding.engine.systemchannels.LifecycleChannel;
import io.flutter.embedding.engine.systemchannels.LocalizationChannel;
import io.flutter.embedding.engine.systemchannels.MouseCursorChannel;
import io.flutter.embedding.engine.systemchannels.NavigationChannel;
import io.flutter.embedding.engine.systemchannels.PlatformChannel;
import io.flutter.embedding.engine.systemchannels.ProcessTextChannel;
import io.flutter.embedding.engine.systemchannels.RestorationChannel;
import io.flutter.embedding.engine.systemchannels.ScribeChannel;
import io.flutter.embedding.engine.systemchannels.SettingsChannel;
import io.flutter.embedding.engine.systemchannels.SpellCheckChannel;
import io.flutter.embedding.engine.systemchannels.SystemChannel;
import io.flutter.embedding.engine.systemchannels.TextInputChannel;
import io.flutter.plugin.localization.LocalizationPlugin;
import io.flutter.plugin.platform.PlatformViewsController;
import io.flutter.plugin.platform.PlatformViewsController2;
import io.flutter.plugin.text.ProcessTextPlugin;
import io.flutter.util.ViewUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class FlutterEngine implements ViewUtils.DisplayUpdater {
    private static final String TAG = "FlutterEngine";
    private static final Map<Long, FlutterEngine> idToEngine = new HashMap();
    private static long nextEngineId = 1;
    private final AccessibilityChannel accessibilityChannel;
    private final BackGestureChannel backGestureChannel;
    private final DartExecutor dartExecutor;
    private final DeferredComponentChannel deferredComponentChannel;
    private final long engineId;
    private final EngineLifecycleListener engineLifecycleListener;
    private final Set<EngineLifecycleListener> engineLifecycleListeners;
    private final FlutterJNI flutterJNI;
    private final LifecycleChannel lifecycleChannel;
    private final LocalizationChannel localizationChannel;
    private final LocalizationPlugin localizationPlugin;
    private final MouseCursorChannel mouseCursorChannel;
    private final NavigationChannel navigationChannel;
    private final PlatformChannel platformChannel;
    private final PlatformViewsController platformViewsController;
    private final PlatformViewsController2 platformViewsController2;
    private final FlutterEngineConnectionRegistry pluginRegistry;
    private final ProcessTextChannel processTextChannel;
    private final FlutterRenderer renderer;
    private final RestorationChannel restorationChannel;
    private final ScribeChannel scribeChannel;
    private final SettingsChannel settingsChannel;
    private final SpellCheckChannel spellCheckChannel;
    private final SystemChannel systemChannel;
    private final TextInputChannel textInputChannel;

    /* loaded from: classes2.dex */
    public interface EngineLifecycleListener {
        void onEngineWillDestroy();

        void onPreEngineRestart();
    }

    public FlutterEngine(Context context) {
        this(context, null);
    }

    private void attachToJni() {
        Log.v(TAG, "Attaching to JNI.");
        this.flutterJNI.attachToNative();
        if (isAttachedToJni()) {
            return;
        }
        throw new RuntimeException("FlutterEngine failed to attach to its native Object reference.");
    }

    public static FlutterEngine engineForId(long j10) {
        return idToEngine.get(Long.valueOf(j10));
    }

    private boolean isAttachedToJni() {
        return this.flutterJNI.isAttached();
    }

    public static void resetNextEngineId() {
        nextEngineId = 1L;
    }

    public void addEngineLifecycleListener(EngineLifecycleListener engineLifecycleListener) {
        this.engineLifecycleListeners.add(engineLifecycleListener);
    }

    public void destroy() {
        Log.v(TAG, "Destroying.");
        for (EngineLifecycleListener engineLifecycleListener : this.engineLifecycleListeners) {
            engineLifecycleListener.onEngineWillDestroy();
        }
        this.pluginRegistry.destroy();
        this.platformViewsController.onDetachedFromJNI();
        this.platformViewsController2.onDetachedFromJNI();
        this.dartExecutor.onDetachedFromJNI();
        this.flutterJNI.removeEngineLifecycleListener(this.engineLifecycleListener);
        this.flutterJNI.setDeferredComponentManager(null);
        this.flutterJNI.detachFromNativeAndReleaseResources();
        if (FlutterInjector.instance().deferredComponentManager() != null) {
            FlutterInjector.instance().deferredComponentManager().destroy();
            this.deferredComponentChannel.setDeferredComponentManager(null);
        }
        idToEngine.remove(Long.valueOf(this.engineId));
    }

    public AccessibilityChannel getAccessibilityChannel() {
        return this.accessibilityChannel;
    }

    public ActivityControlSurface getActivityControlSurface() {
        return this.pluginRegistry;
    }

    public BackGestureChannel getBackGestureChannel() {
        return this.backGestureChannel;
    }

    public BroadcastReceiverControlSurface getBroadcastReceiverControlSurface() {
        return this.pluginRegistry;
    }

    public ContentProviderControlSurface getContentProviderControlSurface() {
        return this.pluginRegistry;
    }

    public DartExecutor getDartExecutor() {
        return this.dartExecutor;
    }

    public DeferredComponentChannel getDeferredComponentChannel() {
        return this.deferredComponentChannel;
    }

    public long getEngineId() {
        return this.engineId;
    }

    public LifecycleChannel getLifecycleChannel() {
        return this.lifecycleChannel;
    }

    public LocalizationChannel getLocalizationChannel() {
        return this.localizationChannel;
    }

    public LocalizationPlugin getLocalizationPlugin() {
        return this.localizationPlugin;
    }

    public MouseCursorChannel getMouseCursorChannel() {
        return this.mouseCursorChannel;
    }

    public NavigationChannel getNavigationChannel() {
        return this.navigationChannel;
    }

    public PlatformChannel getPlatformChannel() {
        return this.platformChannel;
    }

    public PlatformViewsController getPlatformViewsController() {
        return this.platformViewsController;
    }

    public PlatformViewsController2 getPlatformViewsController2() {
        return this.platformViewsController2;
    }

    public PluginRegistry getPlugins() {
        return this.pluginRegistry;
    }

    public ProcessTextChannel getProcessTextChannel() {
        return this.processTextChannel;
    }

    public FlutterRenderer getRenderer() {
        return this.renderer;
    }

    public RestorationChannel getRestorationChannel() {
        return this.restorationChannel;
    }

    public ScribeChannel getScribeChannel() {
        return this.scribeChannel;
    }

    public ServiceControlSurface getServiceControlSurface() {
        return this.pluginRegistry;
    }

    public SettingsChannel getSettingsChannel() {
        return this.settingsChannel;
    }

    public SpellCheckChannel getSpellCheckChannel() {
        return this.spellCheckChannel;
    }

    public SystemChannel getSystemChannel() {
        return this.systemChannel;
    }

    public TextInputChannel getTextInputChannel() {
        return this.textInputChannel;
    }

    public void removeEngineLifecycleListener(EngineLifecycleListener engineLifecycleListener) {
        this.engineLifecycleListeners.remove(engineLifecycleListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlutterEngine spawn(Context context, DartExecutor.DartEntrypoint dartEntrypoint, String str, List<String> list, PlatformViewsController platformViewsController, boolean z10, boolean z11) {
        if (isAttachedToJni()) {
            return new FlutterEngine(context, null, this.flutterJNI.spawn(dartEntrypoint.dartEntrypointFunctionName, dartEntrypoint.dartEntrypointLibrary, str, list, nextEngineId), platformViewsController, null, z10, z11);
        }
        throw new IllegalStateException("Spawn can only be called on a fully constructed FlutterEngine");
    }

    @Override // io.flutter.util.ViewUtils.DisplayUpdater
    public void updateDisplayMetrics(float f10, float f11, float f12) {
        this.flutterJNI.updateDisplayMetrics(0, f10, f11, f12);
    }

    public FlutterEngine(Context context, String[] strArr) {
        this(context, null, null, strArr, true);
    }

    public FlutterEngine(Context context, String[] strArr, boolean z10) {
        this(context, null, null, strArr, z10);
    }

    public FlutterEngine(Context context, String[] strArr, boolean z10, boolean z11) {
        this(context, null, null, new PlatformViewsController(), strArr, z10, z11);
    }

    public FlutterEngine(Context context, FlutterLoader flutterLoader, FlutterJNI flutterJNI) {
        this(context, flutterLoader, flutterJNI, null, true);
    }

    public FlutterEngine(Context context, FlutterLoader flutterLoader, FlutterJNI flutterJNI, String[] strArr, boolean z10) {
        this(context, flutterLoader, flutterJNI, new PlatformViewsController(), strArr, z10);
    }

    public FlutterEngine(Context context, FlutterLoader flutterLoader, FlutterJNI flutterJNI, PlatformViewsController platformViewsController, String[] strArr, boolean z10) {
        this(context, flutterLoader, flutterJNI, platformViewsController, strArr, z10, false);
    }

    public FlutterEngine(Context context, FlutterLoader flutterLoader, FlutterJNI flutterJNI, PlatformViewsController platformViewsController, String[] strArr, boolean z10, boolean z11) {
        this(context, flutterLoader, flutterJNI, platformViewsController, strArr, z10, z11, null);
    }

    public FlutterEngine(Context context, FlutterLoader flutterLoader, FlutterJNI flutterJNI, PlatformViewsController platformViewsController, String[] strArr, boolean z10, boolean z11, FlutterEngineGroup flutterEngineGroup) {
        AssetManager assets;
        this.engineLifecycleListeners = new HashSet();
        this.engineLifecycleListener = new EngineLifecycleListener() { // from class: io.flutter.embedding.engine.FlutterEngine.1
            @Override // io.flutter.embedding.engine.FlutterEngine.EngineLifecycleListener
            public void onEngineWillDestroy() {
            }

            @Override // io.flutter.embedding.engine.FlutterEngine.EngineLifecycleListener
            public void onPreEngineRestart() {
                Log.v(FlutterEngine.TAG, "onPreEngineRestart()");
                for (EngineLifecycleListener engineLifecycleListener : FlutterEngine.this.engineLifecycleListeners) {
                    engineLifecycleListener.onPreEngineRestart();
                }
                FlutterEngine.this.platformViewsController.onPreEngineRestart();
                FlutterEngine.this.platformViewsController2.onPreEngineRestart();
                FlutterEngine.this.restorationChannel.clearData();
            }
        };
        long j10 = nextEngineId;
        nextEngineId = 1 + j10;
        this.engineId = j10;
        idToEngine.put(Long.valueOf(j10), this);
        try {
            assets = context.createPackageContext(context.getPackageName(), 0).getAssets();
        } catch (PackageManager.NameNotFoundException unused) {
            assets = context.getAssets();
        }
        FlutterInjector instance = FlutterInjector.instance();
        flutterJNI = flutterJNI == null ? instance.getFlutterJNIFactory().provideFlutterJNI() : flutterJNI;
        this.flutterJNI = flutterJNI;
        DartExecutor dartExecutor = new DartExecutor(flutterJNI, assets, this.engineId);
        this.dartExecutor = dartExecutor;
        dartExecutor.onAttachedToJNI();
        DeferredComponentManager deferredComponentManager = FlutterInjector.instance().deferredComponentManager();
        this.accessibilityChannel = new AccessibilityChannel(dartExecutor, flutterJNI);
        DeferredComponentChannel deferredComponentChannel = new DeferredComponentChannel(dartExecutor);
        this.deferredComponentChannel = deferredComponentChannel;
        this.lifecycleChannel = new LifecycleChannel(dartExecutor);
        LocalizationChannel localizationChannel = new LocalizationChannel(dartExecutor);
        this.localizationChannel = localizationChannel;
        this.mouseCursorChannel = new MouseCursorChannel(dartExecutor);
        this.navigationChannel = new NavigationChannel(dartExecutor);
        this.backGestureChannel = new BackGestureChannel(dartExecutor);
        this.platformChannel = new PlatformChannel(dartExecutor);
        this.processTextChannel = new ProcessTextChannel(dartExecutor, context.getPackageManager());
        this.restorationChannel = new RestorationChannel(dartExecutor, z11);
        this.scribeChannel = new ScribeChannel(dartExecutor);
        this.settingsChannel = new SettingsChannel(dartExecutor);
        this.spellCheckChannel = new SpellCheckChannel(dartExecutor);
        this.systemChannel = new SystemChannel(dartExecutor);
        this.textInputChannel = new TextInputChannel(dartExecutor);
        if (deferredComponentManager != null) {
            deferredComponentManager.setDeferredComponentChannel(deferredComponentChannel);
        }
        LocalizationPlugin localizationPlugin = new LocalizationPlugin(context, localizationChannel);
        this.localizationPlugin = localizationPlugin;
        flutterLoader = flutterLoader == null ? instance.flutterLoader() : flutterLoader;
        if (!flutterJNI.isAttached()) {
            flutterLoader.startInitialization(context.getApplicationContext());
            flutterLoader.ensureInitializationComplete(context, strArr);
        }
        PlatformViewsController2 platformViewsController2 = new PlatformViewsController2();
        platformViewsController2.setRegistry(platformViewsController.getRegistry());
        platformViewsController2.setFlutterJNI(flutterJNI);
        flutterJNI.addEngineLifecycleListener(this.engineLifecycleListener);
        flutterJNI.setPlatformViewsController(platformViewsController);
        flutterJNI.setPlatformViewsController2(platformViewsController2);
        flutterJNI.setLocalizationPlugin(localizationPlugin);
        flutterJNI.setDeferredComponentManager(instance.deferredComponentManager());
        if (!flutterJNI.isAttached()) {
            attachToJni();
        }
        this.renderer = new FlutterRenderer(flutterJNI);
        this.platformViewsController = platformViewsController;
        this.platformViewsController2 = platformViewsController2;
        FlutterEngineConnectionRegistry flutterEngineConnectionRegistry = new FlutterEngineConnectionRegistry(context.getApplicationContext(), this, flutterLoader, flutterEngineGroup);
        this.pluginRegistry = flutterEngineConnectionRegistry;
        localizationPlugin.sendLocalesToFlutter(context.getResources().getConfiguration());
        if (z10 && flutterLoader.automaticallyRegisterPlugins()) {
            GeneratedPluginRegister.registerGeneratedPlugins(this);
        }
        ViewUtils.calculateMaximumDisplayMetrics(context, this);
        flutterEngineConnectionRegistry.add(new ProcessTextPlugin(getProcessTextChannel()));
    }
}
