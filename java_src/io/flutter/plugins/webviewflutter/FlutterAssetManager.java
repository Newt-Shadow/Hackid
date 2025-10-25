package io.flutter.plugins.webviewflutter;

import android.content.res.AssetManager;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
/* loaded from: classes2.dex */
abstract class FlutterAssetManager {
    final AssetManager assetManager;

    /* loaded from: classes2.dex */
    static class PluginBindingFlutterAssetManager extends FlutterAssetManager {
        final FlutterPlugin.FlutterAssets flutterAssets;

        /* JADX INFO: Access modifiers changed from: package-private */
        public PluginBindingFlutterAssetManager(AssetManager assetManager, FlutterPlugin.FlutterAssets flutterAssets) {
            super(assetManager);
            this.flutterAssets = flutterAssets;
        }

        @Override // io.flutter.plugins.webviewflutter.FlutterAssetManager
        public String getAssetFilePathByName(String str) {
            return this.flutterAssets.getAssetFilePathByName(str);
        }
    }

    public FlutterAssetManager(AssetManager assetManager) {
        this.assetManager = assetManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String getAssetFilePathByName(String str);

    public String[] list(String str) {
        return this.assetManager.list(str);
    }
}
