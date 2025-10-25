package io.flutter.embedding.android;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import io.flutter.Log;
import io.flutter.embedding.android.FlutterActivityLaunchConfigs;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterShellArgs;
import io.flutter.embedding.engine.plugins.util.GeneratedPluginRegister;
import io.flutter.plugin.platform.PlatformPlugin;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class FlutterFragmentActivity extends androidx.fragment.app.u implements FlutterEngineProvider, FlutterEngineConfigurator {
    public static final int FRAGMENT_CONTAINER_ID = View.generateViewId();
    private static final String TAG = "FlutterFragmentActivity";
    private static final String TAG_FLUTTER_FRAGMENT = "flutter_fragment";
    private FlutterFragment flutterFragment;

    /* loaded from: classes2.dex */
    public static class CachedEngineIntentBuilder {
        private final Class<? extends FlutterFragmentActivity> activityClass;
        private final String cachedEngineId;
        private boolean destroyEngineWithActivity = false;
        private String backgroundMode = FlutterActivityLaunchConfigs.DEFAULT_BACKGROUND_MODE;

        public CachedEngineIntentBuilder(Class<? extends FlutterFragmentActivity> cls, String str) {
            this.activityClass = cls;
            this.cachedEngineId = str;
        }

        public CachedEngineIntentBuilder backgroundMode(FlutterActivityLaunchConfigs.BackgroundMode backgroundMode) {
            this.backgroundMode = backgroundMode.name();
            return this;
        }

        public Intent build(Context context) {
            return new Intent(context, this.activityClass).putExtra("cached_engine_id", this.cachedEngineId).putExtra("destroy_engine_with_activity", this.destroyEngineWithActivity).putExtra("background_mode", this.backgroundMode);
        }

        public CachedEngineIntentBuilder destroyEngineWithActivity(boolean z10) {
            this.destroyEngineWithActivity = z10;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static class NewEngineInGroupIntentBuilder {
        private final Class<? extends FlutterFragmentActivity> activityClass;
        private final String cachedEngineGroupId;
        private String dartEntrypoint = "main";
        private String initialRoute = "/";
        private String backgroundMode = FlutterActivityLaunchConfigs.DEFAULT_BACKGROUND_MODE;

        public NewEngineInGroupIntentBuilder(Class<? extends FlutterFragmentActivity> cls, String str) {
            this.activityClass = cls;
            this.cachedEngineGroupId = str;
        }

        public NewEngineInGroupIntentBuilder backgroundMode(FlutterActivityLaunchConfigs.BackgroundMode backgroundMode) {
            this.backgroundMode = backgroundMode.name();
            return this;
        }

        public Intent build(Context context) {
            return new Intent(context, this.activityClass).putExtra("dart_entrypoint", this.dartEntrypoint).putExtra("route", this.initialRoute).putExtra("cached_engine_group_id", this.cachedEngineGroupId).putExtra("background_mode", this.backgroundMode).putExtra("destroy_engine_with_activity", true);
        }

        public NewEngineInGroupIntentBuilder dartEntrypoint(String str) {
            this.dartEntrypoint = str;
            return this;
        }

        public NewEngineInGroupIntentBuilder initialRoute(String str) {
            this.initialRoute = str;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static class NewEngineIntentBuilder {
        private final Class<? extends FlutterFragmentActivity> activityClass;
        private List<String> dartEntrypointArgs;
        private String initialRoute = "/";
        private String backgroundMode = FlutterActivityLaunchConfigs.DEFAULT_BACKGROUND_MODE;

        public NewEngineIntentBuilder(Class<? extends FlutterFragmentActivity> cls) {
            this.activityClass = cls;
        }

        public NewEngineIntentBuilder backgroundMode(FlutterActivityLaunchConfigs.BackgroundMode backgroundMode) {
            this.backgroundMode = backgroundMode.name();
            return this;
        }

        public Intent build(Context context) {
            Intent putExtra = new Intent(context, this.activityClass).putExtra("route", this.initialRoute).putExtra("background_mode", this.backgroundMode).putExtra("destroy_engine_with_activity", true);
            if (this.dartEntrypointArgs != null) {
                putExtra.putExtra("dart_entrypoint_args", new ArrayList(this.dartEntrypointArgs));
            }
            return putExtra;
        }

        public NewEngineIntentBuilder dartEntrypointArgs(List<String> list) {
            this.dartEntrypointArgs = list;
            return this;
        }

        public NewEngineIntentBuilder initialRoute(String str) {
            this.initialRoute = str;
            return this;
        }
    }

    private void configureStatusBarForFullscreenFlutterExperience() {
        Window window = getWindow();
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(1073741824);
        window.getDecorView().setSystemUiVisibility(PlatformPlugin.DEFAULT_SYSTEM_UI);
    }

    private void configureWindowForTransparency() {
        if (getBackgroundMode() == FlutterActivityLaunchConfigs.BackgroundMode.transparent) {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
    }

    public static Intent createDefaultIntent(Context context) {
        return withNewEngine().build(context);
    }

    private View createFragmentContainer() {
        FrameLayout provideRootLayout = provideRootLayout(this);
        provideRootLayout.setId(FRAGMENT_CONTAINER_ID);
        provideRootLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return provideRootLayout;
    }

    private void ensureFlutterFragmentCreated() {
        if (this.flutterFragment == null) {
            this.flutterFragment = retrieveExistingFlutterFragmentIfPossible();
        }
        if (this.flutterFragment == null) {
            this.flutterFragment = createFlutterFragment();
            getSupportFragmentManager().o().b(FRAGMENT_CONTAINER_ID, this.flutterFragment, TAG_FLUTTER_FRAGMENT).f();
        }
    }

    private boolean isDebuggable() {
        if ((getApplicationInfo().flags & 2) != 0) {
            return true;
        }
        return false;
    }

    private void switchLaunchThemeForNormalTheme() {
        try {
            Bundle metaData = getMetaData();
            if (metaData != null) {
                int i10 = metaData.getInt("io.flutter.embedding.android.NormalTheme", -1);
                if (i10 != -1) {
                    setTheme(i10);
                }
            } else {
                Log.v(TAG, "Using the launch theme as normal theme.");
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(TAG, "Could not read meta-data for FlutterFragmentActivity. Using the launch theme as normal theme.");
        }
    }

    public static CachedEngineIntentBuilder withCachedEngine(String str) {
        return new CachedEngineIntentBuilder(FlutterFragmentActivity.class, str);
    }

    public static NewEngineIntentBuilder withNewEngine() {
        return new NewEngineIntentBuilder(FlutterFragmentActivity.class);
    }

    public static NewEngineInGroupIntentBuilder withNewEngineInGroup(String str) {
        return new NewEngineInGroupIntentBuilder(FlutterFragmentActivity.class, str);
    }

    @Override // io.flutter.embedding.android.FlutterEngineConfigurator
    public void cleanUpFlutterEngine(FlutterEngine flutterEngine) {
    }

    @Override // io.flutter.embedding.android.FlutterEngineConfigurator
    public void configureFlutterEngine(FlutterEngine flutterEngine) {
        FlutterFragment flutterFragment = this.flutterFragment;
        if (flutterFragment != null && flutterFragment.isFlutterEngineInjected()) {
            return;
        }
        GeneratedPluginRegister.registerGeneratedPlugins(flutterEngine);
    }

    protected FlutterFragment createFlutterFragment() {
        TransparencyMode transparencyMode;
        boolean z10;
        String str;
        FlutterActivityLaunchConfigs.BackgroundMode backgroundMode = getBackgroundMode();
        RenderMode renderMode = getRenderMode();
        if (backgroundMode == FlutterActivityLaunchConfigs.BackgroundMode.opaque) {
            transparencyMode = TransparencyMode.opaque;
        } else {
            transparencyMode = TransparencyMode.transparent;
        }
        if (renderMode == RenderMode.surface) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (getCachedEngineId() != null) {
            Log.v(TAG, "Creating FlutterFragment with cached engine:\nCached engine ID: " + getCachedEngineId() + "\nWill destroy engine when Activity is destroyed: " + shouldDestroyEngineWithHost() + "\nBackground transparency mode: " + backgroundMode + "\nWill attach FlutterEngine to Activity: " + shouldAttachEngineToActivity());
            return FlutterFragment.withCachedEngine(getCachedEngineId()).renderMode(renderMode).transparencyMode(transparencyMode).handleDeeplinking(Boolean.valueOf(shouldHandleDeeplinking())).shouldAttachEngineToActivity(shouldAttachEngineToActivity()).destroyEngineWithFragment(shouldDestroyEngineWithHost()).shouldDelayFirstAndroidViewDraw(z10).shouldAutomaticallyHandleOnBackPressed(true).build();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Creating FlutterFragment with new engine:\nCached engine group ID: ");
        sb2.append(getCachedEngineGroupId());
        sb2.append("\nBackground transparency mode: ");
        sb2.append(backgroundMode);
        sb2.append("\nDart entrypoint: ");
        sb2.append(getDartEntrypointFunctionName());
        sb2.append("\nDart entrypoint library uri: ");
        if (getDartEntrypointLibraryUri() != null) {
            str = getDartEntrypointLibraryUri();
        } else {
            str = "\"\"";
        }
        sb2.append(str);
        sb2.append("\nInitial route: ");
        sb2.append(getInitialRoute());
        sb2.append("\nApp bundle path: ");
        sb2.append(getAppBundlePath());
        sb2.append("\nWill attach FlutterEngine to Activity: ");
        sb2.append(shouldAttachEngineToActivity());
        Log.v(TAG, sb2.toString());
        if (getCachedEngineGroupId() != null) {
            return FlutterFragment.withNewEngineInGroup(getCachedEngineGroupId()).dartEntrypoint(getDartEntrypointFunctionName()).initialRoute(getInitialRoute()).handleDeeplinking(shouldHandleDeeplinking()).renderMode(renderMode).transparencyMode(transparencyMode).shouldAttachEngineToActivity(shouldAttachEngineToActivity()).shouldDelayFirstAndroidViewDraw(z10).shouldAutomaticallyHandleOnBackPressed(true).build();
        }
        return FlutterFragment.withNewEngine().dartEntrypoint(getDartEntrypointFunctionName()).dartLibraryUri(getDartEntrypointLibraryUri()).dartEntrypointArgs(getDartEntrypointArgs()).initialRoute(getInitialRoute()).appBundlePath(getAppBundlePath()).flutterShellArgs(FlutterShellArgs.fromIntent(getIntent())).handleDeeplinking(Boolean.valueOf(shouldHandleDeeplinking())).renderMode(renderMode).transparencyMode(transparencyMode).shouldAttachEngineToActivity(shouldAttachEngineToActivity()).shouldDelayFirstAndroidViewDraw(z10).shouldAutomaticallyHandleOnBackPressed(true).build();
    }

    protected String getAppBundlePath() {
        String dataString;
        if (isDebuggable() && "android.intent.action.RUN".equals(getIntent().getAction()) && (dataString = getIntent().getDataString()) != null) {
            return dataString;
        }
        return null;
    }

    protected FlutterActivityLaunchConfigs.BackgroundMode getBackgroundMode() {
        if (getIntent().hasExtra("background_mode")) {
            return FlutterActivityLaunchConfigs.BackgroundMode.valueOf(getIntent().getStringExtra("background_mode"));
        }
        return FlutterActivityLaunchConfigs.BackgroundMode.opaque;
    }

    protected String getCachedEngineGroupId() {
        return getIntent().getStringExtra("cached_engine_group_id");
    }

    protected String getCachedEngineId() {
        return getIntent().getStringExtra("cached_engine_id");
    }

    public List<String> getDartEntrypointArgs() {
        return (List) getIntent().getSerializableExtra("dart_entrypoint_args");
    }

    public String getDartEntrypointFunctionName() {
        String str;
        try {
            Bundle metaData = getMetaData();
            if (metaData != null) {
                str = metaData.getString("io.flutter.Entrypoint");
            } else {
                str = null;
            }
            if (str == null) {
                return "main";
            }
            return str;
        } catch (PackageManager.NameNotFoundException unused) {
            return "main";
        }
    }

    public String getDartEntrypointLibraryUri() {
        try {
            Bundle metaData = getMetaData();
            if (metaData == null) {
                return null;
            }
            return metaData.getString("io.flutter.EntrypointUri");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    protected FlutterEngine getFlutterEngine() {
        return this.flutterFragment.getFlutterEngine();
    }

    protected String getInitialRoute() {
        if (getIntent().hasExtra("route")) {
            return getIntent().getStringExtra("route");
        }
        try {
            Bundle metaData = getMetaData();
            if (metaData == null) {
                return null;
            }
            return metaData.getString("io.flutter.InitialRoute");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    protected Bundle getMetaData() {
        return getPackageManager().getActivityInfo(getComponentName(), 128).metaData;
    }

    protected RenderMode getRenderMode() {
        if (getBackgroundMode() == FlutterActivityLaunchConfigs.BackgroundMode.opaque) {
            return RenderMode.surface;
        }
        return RenderMode.texture;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.u, androidx.activity.j, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        this.flutterFragment.onActivityResult(i10, i11, intent);
    }

    @Override // androidx.activity.j, android.app.Activity
    public void onBackPressed() {
        this.flutterFragment.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.u, androidx.activity.j, androidx.core.app.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        switchLaunchThemeForNormalTheme();
        this.flutterFragment = retrieveExistingFlutterFragmentIfPossible();
        super.onCreate(bundle);
        configureWindowForTransparency();
        setContentView(createFragmentContainer());
        configureStatusBarForFullscreenFlutterExperience();
        ensureFlutterFragmentCreated();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.j, android.app.Activity
    public void onNewIntent(Intent intent) {
        this.flutterFragment.onNewIntent(intent);
        super.onNewIntent(intent);
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.flutterFragment.onPostResume();
    }

    @Override // androidx.fragment.app.u, androidx.activity.j, android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i10, strArr, iArr);
        this.flutterFragment.onRequestPermissionsResult(i10, strArr, iArr);
    }

    @Override // androidx.activity.j, android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i10) {
        super.onTrimMemory(i10);
        this.flutterFragment.onTrimMemory(i10);
    }

    @Override // androidx.activity.j, android.app.Activity
    public void onUserLeaveHint() {
        this.flutterFragment.onUserLeaveHint();
    }

    @Override // io.flutter.embedding.android.FlutterEngineProvider
    public FlutterEngine provideFlutterEngine(Context context) {
        return null;
    }

    protected FrameLayout provideRootLayout(Context context) {
        return new FrameLayout(context);
    }

    FlutterFragment retrieveExistingFlutterFragmentIfPossible() {
        return (FlutterFragment) getSupportFragmentManager().j0(TAG_FLUTTER_FRAGMENT);
    }

    protected boolean shouldAttachEngineToActivity() {
        return true;
    }

    public boolean shouldDestroyEngineWithHost() {
        return getIntent().getBooleanExtra("destroy_engine_with_activity", false);
    }

    protected boolean shouldHandleDeeplinking() {
        try {
            return FlutterActivityLaunchConfigs.deepLinkEnabled(getMetaData());
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
