package io.flutter.embedding.android;

import android.view.KeyEvent;
import io.flutter.embedding.android.KeyboardManager;
import io.flutter.embedding.engine.systemchannels.KeyEventChannel;
/* loaded from: classes2.dex */
public class KeyChannelResponder implements KeyboardManager.Responder {
    private static final String TAG = "KeyChannelResponder";
    private final KeyboardManager.CharacterCombiner characterCombiner = new KeyboardManager.CharacterCombiner();
    private final KeyEventChannel keyEventChannel;

    public KeyChannelResponder(KeyEventChannel keyEventChannel) {
        this.keyEventChannel = keyEventChannel;
    }

    @Override // io.flutter.embedding.android.KeyboardManager.Responder
    public void handleEvent(KeyEvent keyEvent, final KeyboardManager.Responder.OnKeyEventHandledCallback onKeyEventHandledCallback) {
        int action = keyEvent.getAction();
        boolean z10 = false;
        if (action != 0 && action != 1) {
            onKeyEventHandledCallback.onKeyEventHandled(false);
            return;
        }
        KeyEventChannel.FlutterKeyEvent flutterKeyEvent = new KeyEventChannel.FlutterKeyEvent(keyEvent, this.characterCombiner.applyCombiningCharacterToBaseCharacter(keyEvent.getUnicodeChar()));
        if (action != 0) {
            z10 = true;
        }
        this.keyEventChannel.sendFlutterKeyEvent(flutterKeyEvent, z10, new KeyEventChannel.EventResponseHandler() { // from class: io.flutter.embedding.android.r
            @Override // io.flutter.embedding.engine.systemchannels.KeyEventChannel.EventResponseHandler
            public final void onFrameworkResponse(boolean z11) {
                KeyboardManager.Responder.OnKeyEventHandledCallback.this.onKeyEventHandled(z11);
            }
        });
    }
}
