package io.flutter.plugin.editing;

import android.annotation.TargetApi;
import android.os.Build;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import io.flutter.Build;
import io.flutter.embedding.engine.systemchannels.ScribeChannel;
/* loaded from: classes2.dex */
public class ScribePlugin implements ScribeChannel.ScribeMethodHandler {
    private final InputMethodManager mInputMethodManager;
    private final ScribeChannel mScribeChannel;
    private View mView;

    public ScribePlugin(View view, InputMethodManager inputMethodManager, ScribeChannel scribeChannel) {
        if (Build.VERSION.SDK_INT >= 33) {
            view.setAutoHandwritingEnabled(false);
        }
        this.mView = view;
        this.mInputMethodManager = inputMethodManager;
        this.mScribeChannel = scribeChannel;
        scribeChannel.setScribeMethodHandler(this);
    }

    public void destroy() {
        this.mScribeChannel.setScribeMethodHandler(null);
    }

    @Override // io.flutter.embedding.engine.systemchannels.ScribeChannel.ScribeMethodHandler
    public boolean isFeatureAvailable() {
        if (Build.VERSION.SDK_INT >= 34 && isStylusHandwritingAvailable()) {
            return true;
        }
        return false;
    }

    @Override // io.flutter.embedding.engine.systemchannels.ScribeChannel.ScribeMethodHandler
    @TargetApi(Build.API_LEVELS.API_34)
    public boolean isStylusHandwritingAvailable() {
        boolean isStylusHandwritingAvailable;
        isStylusHandwritingAvailable = this.mInputMethodManager.isStylusHandwritingAvailable();
        return isStylusHandwritingAvailable;
    }

    public void setView(View view) {
        if (view == this.mView) {
            return;
        }
        this.mView = view;
    }

    @Override // io.flutter.embedding.engine.systemchannels.ScribeChannel.ScribeMethodHandler
    @TargetApi(Build.API_LEVELS.API_33)
    public void startStylusHandwriting() {
        this.mInputMethodManager.startStylusHandwriting(this.mView);
    }
}
