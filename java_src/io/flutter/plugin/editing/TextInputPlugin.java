package io.flutter.plugin.editing;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.flutter.Log;
import io.flutter.embedding.android.KeyboardManager;
import io.flutter.embedding.engine.systemchannels.ScribeChannel;
import io.flutter.embedding.engine.systemchannels.TextInputChannel;
import io.flutter.plugin.editing.ListenableEditingState;
import io.flutter.plugin.platform.PlatformViewsController;
import io.flutter.plugin.platform.PlatformViewsController2;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class TextInputPlugin implements ListenableEditingState.EditingStateWatcher {
    private static final String TAG = "TextInputPlugin";
    private final AutofillManager afm;
    private SparseArray<TextInputChannel.Configuration> autofillConfiguration;
    private TextInputChannel.Configuration configuration;
    private ImeSyncDeferringInsetsCallback imeSyncCallback;
    private InputTarget inputTarget = new InputTarget(InputTarget.Type.NO_TARGET, 0);
    private boolean isInputConnectionLocked;
    private Rect lastClientRect;
    private InputConnection lastInputConnection;
    private ListenableEditingState mEditable;
    private final InputMethodManager mImm;
    private TextInputChannel.TextEditState mLastKnownFrameworkTextEditingState;
    private boolean mRestartInputPending;
    private final View mView;
    private PlatformViewsController platformViewsController;
    private PlatformViewsController2 platformViewsController2;
    private final ScribeChannel scribeChannel;
    private final TextInputChannel textInputChannel;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class InputTarget {

        /* renamed from: id  reason: collision with root package name */
        int f21534id;
        Type type;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public enum Type {
            NO_TARGET,
            FRAMEWORK_CLIENT,
            VIRTUAL_DISPLAY_PLATFORM_VIEW,
            PHYSICAL_DISPLAY_PLATFORM_VIEW
        }

        public InputTarget(Type type, int i10) {
            this.type = type;
            this.f21534id = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface MinMax {
        void inspect(double d10, double d11);
    }

    @SuppressLint({"NewApi"})
    public TextInputPlugin(View view, TextInputChannel textInputChannel, ScribeChannel scribeChannel, PlatformViewsController platformViewsController, PlatformViewsController2 platformViewsController2) {
        this.mView = view;
        this.mEditable = new ListenableEditingState(null, view);
        this.mImm = (InputMethodManager) view.getContext().getSystemService("input_method");
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            this.afm = z.a(view.getContext().getSystemService(y.a()));
        } else {
            this.afm = null;
        }
        if (i10 >= 30) {
            ImeSyncDeferringInsetsCallback imeSyncDeferringInsetsCallback = new ImeSyncDeferringInsetsCallback(view);
            this.imeSyncCallback = imeSyncDeferringInsetsCallback;
            imeSyncDeferringInsetsCallback.install();
        }
        this.textInputChannel = textInputChannel;
        textInputChannel.setTextInputMethodHandler(new TextInputChannel.TextInputMethodHandler() { // from class: io.flutter.plugin.editing.TextInputPlugin.1
            @Override // io.flutter.embedding.engine.systemchannels.TextInputChannel.TextInputMethodHandler
            public void clearClient() {
                TextInputPlugin.this.clearTextInputClient();
            }

            @Override // io.flutter.embedding.engine.systemchannels.TextInputChannel.TextInputMethodHandler
            public void finishAutofillContext(boolean z10) {
                if (Build.VERSION.SDK_INT >= 26 && TextInputPlugin.this.afm != null) {
                    if (z10) {
                        TextInputPlugin.this.afm.commit();
                    } else {
                        TextInputPlugin.this.afm.cancel();
                    }
                }
            }

            @Override // io.flutter.embedding.engine.systemchannels.TextInputChannel.TextInputMethodHandler
            public void hide() {
                if (TextInputPlugin.this.inputTarget.type == InputTarget.Type.PHYSICAL_DISPLAY_PLATFORM_VIEW) {
                    TextInputPlugin.this.notifyViewExited();
                    return;
                }
                TextInputPlugin textInputPlugin = TextInputPlugin.this;
                textInputPlugin.hideTextInput(textInputPlugin.mView);
            }

            @Override // io.flutter.embedding.engine.systemchannels.TextInputChannel.TextInputMethodHandler
            public void requestAutofill() {
                TextInputPlugin.this.notifyViewEntered();
            }

            @Override // io.flutter.embedding.engine.systemchannels.TextInputChannel.TextInputMethodHandler
            public void sendAppPrivateCommand(String str, Bundle bundle) {
                TextInputPlugin.this.sendTextInputAppPrivateCommand(str, bundle);
            }

            @Override // io.flutter.embedding.engine.systemchannels.TextInputChannel.TextInputMethodHandler
            public void setClient(int i11, TextInputChannel.Configuration configuration) {
                TextInputPlugin.this.setTextInputClient(i11, configuration);
            }

            @Override // io.flutter.embedding.engine.systemchannels.TextInputChannel.TextInputMethodHandler
            public void setEditableSizeAndTransform(double d10, double d11, double[] dArr) {
                TextInputPlugin.this.saveEditableSizeAndTransform(d10, d11, dArr);
            }

            @Override // io.flutter.embedding.engine.systemchannels.TextInputChannel.TextInputMethodHandler
            public void setEditingState(TextInputChannel.TextEditState textEditState) {
                TextInputPlugin textInputPlugin = TextInputPlugin.this;
                textInputPlugin.setTextInputEditingState(textInputPlugin.mView, textEditState);
            }

            @Override // io.flutter.embedding.engine.systemchannels.TextInputChannel.TextInputMethodHandler
            public void setPlatformViewClient(int i11, boolean z10) {
                TextInputPlugin.this.setPlatformViewTextInputClient(i11, z10);
            }

            @Override // io.flutter.embedding.engine.systemchannels.TextInputChannel.TextInputMethodHandler
            public void show() {
                TextInputPlugin textInputPlugin = TextInputPlugin.this;
                textInputPlugin.showTextInput(textInputPlugin.mView);
            }
        });
        textInputChannel.requestExistingInputState();
        this.scribeChannel = scribeChannel;
        this.platformViewsController = platformViewsController;
        platformViewsController.attachTextInputPlugin(this);
        this.platformViewsController2 = platformViewsController2;
        platformViewsController2.attachTextInputPlugin(this);
    }

    private static boolean composingChanged(TextInputChannel.TextEditState textEditState, TextInputChannel.TextEditState textEditState2) {
        int i10 = textEditState.composingEnd - textEditState.composingStart;
        if (i10 != textEditState2.composingEnd - textEditState2.composingStart) {
            return true;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (textEditState.text.charAt(textEditState.composingStart + i11) != textEditState2.text.charAt(textEditState2.composingStart + i11)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideTextInput(View view) {
        notifyViewExited();
        this.mImm.hideSoftInputFromWindow(view.getApplicationWindowToken(), 0);
    }

    private static int inputTypeFromTextInputType(TextInputChannel.InputType inputType, boolean z10, boolean z11, boolean z12, boolean z13, TextInputChannel.TextCapitalization textCapitalization) {
        int i10;
        int i11;
        TextInputChannel.TextInputType textInputType = inputType.type;
        if (textInputType == TextInputChannel.TextInputType.DATETIME) {
            return 4;
        }
        if (textInputType == TextInputChannel.TextInputType.NUMBER) {
            if (inputType.isSigned) {
                i11 = 4098;
            } else {
                i11 = 2;
            }
            if (inputType.isDecimal) {
                return i11 | 8192;
            }
            return i11;
        } else if (textInputType == TextInputChannel.TextInputType.PHONE) {
            return 3;
        } else {
            if (textInputType == TextInputChannel.TextInputType.NONE) {
                return 0;
            }
            if (textInputType == TextInputChannel.TextInputType.MULTILINE) {
                i10 = 131073;
            } else if (textInputType != TextInputChannel.TextInputType.EMAIL_ADDRESS && textInputType != TextInputChannel.TextInputType.TWITTER) {
                if (textInputType != TextInputChannel.TextInputType.URL && textInputType != TextInputChannel.TextInputType.WEB_SEARCH) {
                    if (textInputType == TextInputChannel.TextInputType.VISIBLE_PASSWORD) {
                        i10 = 145;
                    } else if (textInputType == TextInputChannel.TextInputType.NAME) {
                        i10 = 97;
                    } else if (textInputType == TextInputChannel.TextInputType.POSTAL_ADDRESS) {
                        i10 = 113;
                    } else {
                        i10 = 1;
                    }
                } else {
                    i10 = 17;
                }
            } else {
                i10 = 33;
            }
            if (z10) {
                i10 = i10 | 524288 | 128;
            } else {
                if (z11) {
                    i10 |= 32768;
                }
                if (!z12) {
                    i10 = i10 | 524288 | 144;
                }
            }
            if (textCapitalization == TextInputChannel.TextCapitalization.CHARACTERS) {
                return i10 | Base64Utils.IO_BUFFER_SIZE;
            }
            if (textCapitalization == TextInputChannel.TextCapitalization.WORDS) {
                return i10 | 8192;
            }
            if (textCapitalization == TextInputChannel.TextCapitalization.SENTENCES) {
                return i10 | 16384;
            }
            return i10;
        }
    }

    private boolean needsAutofill() {
        if (this.autofillConfiguration != null) {
            return true;
        }
        return false;
    }

    private void notifyValueChanged(String str) {
        AutofillValue forText;
        if (Build.VERSION.SDK_INT >= 26 && this.afm != null && needsAutofill()) {
            String str2 = this.configuration.autofill.uniqueIdentifier;
            AutofillManager autofillManager = this.afm;
            View view = this.mView;
            int hashCode = str2.hashCode();
            forText = AutofillValue.forText(str);
            autofillManager.notifyValueChanged(view, hashCode, forText);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyViewEntered() {
        if (Build.VERSION.SDK_INT >= 26 && this.afm != null && needsAutofill()) {
            String str = this.configuration.autofill.uniqueIdentifier;
            int[] iArr = new int[2];
            this.mView.getLocationOnScreen(iArr);
            Rect rect = new Rect(this.lastClientRect);
            rect.offset(iArr[0], iArr[1]);
            this.afm.notifyViewEntered(this.mView, str.hashCode(), rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyViewExited() {
        TextInputChannel.Configuration configuration;
        if (Build.VERSION.SDK_INT >= 26 && this.afm != null && (configuration = this.configuration) != null && configuration.autofill != null && needsAutofill()) {
            this.afm.notifyViewExited(this.mView, this.configuration.autofill.uniqueIdentifier.hashCode());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveEditableSizeAndTransform(double d10, double d11, final double[] dArr) {
        final boolean z10;
        final double[] dArr2 = new double[4];
        if (dArr[3] == 0.0d && dArr[7] == 0.0d && dArr[15] == 1.0d) {
            z10 = true;
        } else {
            z10 = false;
        }
        double d12 = dArr[12];
        double d13 = dArr[15];
        double d14 = d12 / d13;
        dArr2[1] = d14;
        dArr2[0] = d14;
        double d15 = dArr[13] / d13;
        dArr2[3] = d15;
        dArr2[2] = d15;
        MinMax minMax = new MinMax() { // from class: io.flutter.plugin.editing.TextInputPlugin.2
            @Override // io.flutter.plugin.editing.TextInputPlugin.MinMax
            public void inspect(double d16, double d17) {
                double d18 = 1.0d;
                if (!z10) {
                    double[] dArr3 = dArr;
                    d18 = 1.0d / (((dArr3[3] * d16) + (dArr3[7] * d17)) + dArr3[15]);
                }
                double[] dArr4 = dArr;
                double d19 = ((dArr4[0] * d16) + (dArr4[4] * d17) + dArr4[12]) * d18;
                double d20 = ((dArr4[1] * d16) + (dArr4[5] * d17) + dArr4[13]) * d18;
                double[] dArr5 = dArr2;
                if (d19 < dArr5[0]) {
                    dArr5[0] = d19;
                } else if (d19 > dArr5[1]) {
                    dArr5[1] = d19;
                }
                if (d20 < dArr5[2]) {
                    dArr5[2] = d20;
                } else if (d20 > dArr5[3]) {
                    dArr5[3] = d20;
                }
            }
        };
        minMax.inspect(d10, 0.0d);
        minMax.inspect(d10, d11);
        minMax.inspect(0.0d, d11);
        Float valueOf = Float.valueOf(this.mView.getContext().getResources().getDisplayMetrics().density);
        this.lastClientRect = new Rect((int) (dArr2[0] * valueOf.floatValue()), (int) (dArr2[2] * valueOf.floatValue()), (int) Math.ceil(dArr2[1] * valueOf.floatValue()), (int) Math.ceil(dArr2[3] * valueOf.floatValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlatformViewTextInputClient(int i10, boolean z10) {
        if (z10) {
            this.mView.requestFocus();
            this.inputTarget = new InputTarget(InputTarget.Type.VIRTUAL_DISPLAY_PLATFORM_VIEW, i10);
            this.mImm.restartInput(this.mView);
            this.mRestartInputPending = false;
            return;
        }
        this.inputTarget = new InputTarget(InputTarget.Type.PHYSICAL_DISPLAY_PLATFORM_VIEW, i10);
        this.lastInputConnection = null;
    }

    private void updateAutofillConfigurationIfNeeded(TextInputChannel.Configuration configuration) {
        AutofillValue forText;
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        if (configuration != null && configuration.autofill != null) {
            TextInputChannel.Configuration[] configurationArr = configuration.fields;
            SparseArray<TextInputChannel.Configuration> sparseArray = new SparseArray<>();
            this.autofillConfiguration = sparseArray;
            if (configurationArr == null) {
                sparseArray.put(configuration.autofill.uniqueIdentifier.hashCode(), configuration);
                return;
            }
            for (TextInputChannel.Configuration configuration2 : configurationArr) {
                TextInputChannel.Configuration.Autofill autofill = configuration2.autofill;
                if (autofill != null) {
                    this.autofillConfiguration.put(autofill.uniqueIdentifier.hashCode(), configuration2);
                    AutofillManager autofillManager = this.afm;
                    View view = this.mView;
                    int hashCode = autofill.uniqueIdentifier.hashCode();
                    forText = AutofillValue.forText(autofill.editState.text);
                    autofillManager.notifyValueChanged(view, hashCode, forText);
                }
            }
            return;
        }
        this.autofillConfiguration = null;
    }

    public void autofill(SparseArray<AutofillValue> sparseArray) {
        TextInputChannel.Configuration configuration;
        TextInputChannel.Configuration.Autofill autofill;
        TextInputChannel.Configuration.Autofill autofill2;
        CharSequence textValue;
        if (Build.VERSION.SDK_INT >= 26 && (configuration = this.configuration) != null && this.autofillConfiguration != null && (autofill = configuration.autofill) != null) {
            HashMap<String, TextInputChannel.TextEditState> hashMap = new HashMap<>();
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                TextInputChannel.Configuration configuration2 = this.autofillConfiguration.get(sparseArray.keyAt(i10));
                if (configuration2 != null && (autofill2 = configuration2.autofill) != null) {
                    textValue = o.a(sparseArray.valueAt(i10)).getTextValue();
                    String charSequence = textValue.toString();
                    TextInputChannel.TextEditState textEditState = new TextInputChannel.TextEditState(charSequence, charSequence.length(), charSequence.length(), -1, -1);
                    if (autofill2.uniqueIdentifier.equals(autofill.uniqueIdentifier)) {
                        this.mEditable.setEditingState(textEditState);
                    } else {
                        hashMap.put(autofill2.uniqueIdentifier, textEditState);
                    }
                }
            }
            this.textInputChannel.updateEditingStateWithTag(this.inputTarget.f21534id, hashMap);
        }
    }

    public void clearPlatformViewClient(int i10) {
        InputTarget inputTarget = this.inputTarget;
        InputTarget.Type type = inputTarget.type;
        if ((type == InputTarget.Type.VIRTUAL_DISPLAY_PLATFORM_VIEW || type == InputTarget.Type.PHYSICAL_DISPLAY_PLATFORM_VIEW) && inputTarget.f21534id == i10) {
            this.inputTarget = new InputTarget(InputTarget.Type.NO_TARGET, 0);
            notifyViewExited();
            this.mImm.hideSoftInputFromWindow(this.mView.getApplicationWindowToken(), 0);
            this.mImm.restartInput(this.mView);
            this.mRestartInputPending = false;
        }
    }

    void clearTextInputClient() {
        if (this.inputTarget.type == InputTarget.Type.VIRTUAL_DISPLAY_PLATFORM_VIEW) {
            return;
        }
        this.mEditable.removeEditingStateListener(this);
        notifyViewExited();
        this.configuration = null;
        updateAutofillConfigurationIfNeeded(null);
        this.inputTarget = new InputTarget(InputTarget.Type.NO_TARGET, 0);
        unlockPlatformViewInputConnection();
        this.lastClientRect = null;
    }

    public InputConnection createInputConnection(View view, KeyboardManager keyboardManager, EditorInfo editorInfo) {
        int intValue;
        InputTarget inputTarget = this.inputTarget;
        InputTarget.Type type = inputTarget.type;
        if (type == InputTarget.Type.NO_TARGET) {
            this.lastInputConnection = null;
            return null;
        } else if (type == InputTarget.Type.PHYSICAL_DISPLAY_PLATFORM_VIEW) {
            return null;
        } else {
            if (type == InputTarget.Type.VIRTUAL_DISPLAY_PLATFORM_VIEW) {
                if (this.isInputConnectionLocked) {
                    return this.lastInputConnection;
                }
                InputConnection onCreateInputConnection = this.platformViewsController.getPlatformViewById(inputTarget.f21534id).onCreateInputConnection(editorInfo);
                this.lastInputConnection = onCreateInputConnection;
                return onCreateInputConnection;
            }
            TextInputChannel.Configuration configuration = this.configuration;
            int inputTypeFromTextInputType = inputTypeFromTextInputType(configuration.inputType, configuration.obscureText, configuration.autocorrect, configuration.enableSuggestions, configuration.enableIMEPersonalizedLearning, configuration.textCapitalization);
            editorInfo.inputType = inputTypeFromTextInputType;
            editorInfo.imeOptions = 33554432;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 26 && !this.configuration.enableIMEPersonalizedLearning) {
                editorInfo.imeOptions = 33554432 | 16777216;
            }
            Integer num = this.configuration.inputAction;
            if (num == null) {
                if ((inputTypeFromTextInputType & 131072) != 0) {
                    intValue = 1;
                } else {
                    intValue = 6;
                }
            } else {
                intValue = num.intValue();
            }
            TextInputChannel.Configuration configuration2 = this.configuration;
            String str = configuration2.actionLabel;
            if (str != null) {
                editorInfo.actionLabel = str;
                editorInfo.actionId = intValue;
            }
            editorInfo.imeOptions = intValue | editorInfo.imeOptions;
            String[] strArr = configuration2.contentCommitMimeTypes;
            if (strArr != null) {
                f0.c.d(editorInfo, strArr);
            }
            if (i10 >= 34) {
                f0.c.g(editorInfo, true);
            }
            InputConnectionAdaptor inputConnectionAdaptor = new InputConnectionAdaptor(view, this.inputTarget.f21534id, this.textInputChannel, this.scribeChannel, keyboardManager, this.mEditable, editorInfo);
            editorInfo.initialSelStart = this.mEditable.getSelectionStart();
            editorInfo.initialSelEnd = this.mEditable.getSelectionEnd();
            this.lastInputConnection = inputConnectionAdaptor;
            return inputConnectionAdaptor;
        }
    }

    @SuppressLint({"NewApi"})
    public void destroy() {
        this.platformViewsController.detachTextInputPlugin();
        this.platformViewsController2.detachTextInputPlugin();
        this.textInputChannel.setTextInputMethodHandler(null);
        notifyViewExited();
        this.mEditable.removeEditingStateListener(this);
        ImeSyncDeferringInsetsCallback imeSyncDeferringInsetsCallback = this.imeSyncCallback;
        if (imeSyncDeferringInsetsCallback != null) {
            imeSyncDeferringInsetsCallback.remove();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
        if (r7 == r1.composingEnd) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ac  */
    @Override // io.flutter.plugin.editing.ListenableEditingState.EditingStateWatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void didChangeEditingState(boolean r9, boolean r10, boolean r11) {
        /*
            r8 = this;
            if (r9 == 0) goto Lb
            io.flutter.plugin.editing.ListenableEditingState r9 = r8.mEditable
            java.lang.String r9 = r9.toString()
            r8.notifyValueChanged(r9)
        Lb:
            io.flutter.plugin.editing.ListenableEditingState r9 = r8.mEditable
            int r9 = r9.getSelectionStart()
            io.flutter.plugin.editing.ListenableEditingState r10 = r8.mEditable
            int r10 = r10.getSelectionEnd()
            io.flutter.plugin.editing.ListenableEditingState r11 = r8.mEditable
            int r11 = r11.getComposingStart()
            io.flutter.plugin.editing.ListenableEditingState r0 = r8.mEditable
            int r7 = r0.getComposingEnd()
            io.flutter.plugin.editing.ListenableEditingState r0 = r8.mEditable
            java.util.ArrayList r0 = r0.extractBatchTextEditingDeltas()
            io.flutter.embedding.engine.systemchannels.TextInputChannel$TextEditState r1 = r8.mLastKnownFrameworkTextEditingState
            if (r1 == 0) goto L52
            io.flutter.plugin.editing.ListenableEditingState r1 = r8.mEditable
            java.lang.String r1 = r1.toString()
            io.flutter.embedding.engine.systemchannels.TextInputChannel$TextEditState r2 = r8.mLastKnownFrameworkTextEditingState
            java.lang.String r2 = r2.text
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L50
            io.flutter.embedding.engine.systemchannels.TextInputChannel$TextEditState r1 = r8.mLastKnownFrameworkTextEditingState
            int r2 = r1.selectionStart
            if (r9 != r2) goto L50
            int r2 = r1.selectionEnd
            if (r10 != r2) goto L50
            int r2 = r1.composingStart
            if (r11 != r2) goto L50
            int r1 = r1.composingEnd
            if (r7 != r1) goto L50
            goto L52
        L50:
            r1 = 0
            goto L53
        L52:
            r1 = 1
        L53:
            if (r1 != 0) goto Lac
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "send EditingState to flutter: "
            r1.append(r2)
            io.flutter.plugin.editing.ListenableEditingState r2 = r8.mEditable
            java.lang.String r2 = r2.toString()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "TextInputPlugin"
            io.flutter.Log.v(r2, r1)
            io.flutter.embedding.engine.systemchannels.TextInputChannel$Configuration r1 = r8.configuration
            boolean r1 = r1.enableDeltaModel
            if (r1 == 0) goto L86
            io.flutter.embedding.engine.systemchannels.TextInputChannel r1 = r8.textInputChannel
            io.flutter.plugin.editing.TextInputPlugin$InputTarget r2 = r8.inputTarget
            int r2 = r2.f21534id
            r1.updateEditingStateWithDeltas(r2, r0)
            io.flutter.plugin.editing.ListenableEditingState r0 = r8.mEditable
            r0.clearBatchDeltas()
            goto L99
        L86:
            io.flutter.embedding.engine.systemchannels.TextInputChannel r0 = r8.textInputChannel
            io.flutter.plugin.editing.TextInputPlugin$InputTarget r1 = r8.inputTarget
            int r1 = r1.f21534id
            io.flutter.plugin.editing.ListenableEditingState r2 = r8.mEditable
            java.lang.String r2 = r2.toString()
            r3 = r9
            r4 = r10
            r5 = r11
            r6 = r7
            r0.updateEditingState(r1, r2, r3, r4, r5, r6)
        L99:
            io.flutter.embedding.engine.systemchannels.TextInputChannel$TextEditState r6 = new io.flutter.embedding.engine.systemchannels.TextInputChannel$TextEditState
            io.flutter.plugin.editing.ListenableEditingState r0 = r8.mEditable
            java.lang.String r1 = r0.toString()
            r0 = r6
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r7
            r0.<init>(r1, r2, r3, r4, r5)
            r8.mLastKnownFrameworkTextEditingState = r6
            goto Lb1
        Lac:
            io.flutter.plugin.editing.ListenableEditingState r9 = r8.mEditable
            r9.clearBatchDeltas()
        Lb1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugin.editing.TextInputPlugin.didChangeEditingState(boolean, boolean, boolean):void");
    }

    Editable getEditable() {
        return this.mEditable;
    }

    ImeSyncDeferringInsetsCallback getImeSyncCallback() {
        return this.imeSyncCallback;
    }

    public InputMethodManager getInputMethodManager() {
        return this.mImm;
    }

    public InputConnection getLastInputConnection() {
        return this.lastInputConnection;
    }

    public boolean handleKeyEvent(KeyEvent keyEvent) {
        InputConnection inputConnection;
        if (getInputMethodManager().isAcceptingText() && (inputConnection = this.lastInputConnection) != null) {
            if (inputConnection instanceof InputConnectionAdaptor) {
                return ((InputConnectionAdaptor) inputConnection).handleKeyEvent(keyEvent);
            }
            return inputConnection.sendKeyEvent(keyEvent);
        }
        return false;
    }

    public void lockPlatformViewInputConnection() {
        if (this.inputTarget.type == InputTarget.Type.VIRTUAL_DISPLAY_PLATFORM_VIEW) {
            this.isInputConnectionLocked = true;
        }
    }

    public void onProvideAutofillVirtualStructure(ViewStructure viewStructure, int i10) {
        AutofillId autofillId;
        AutofillValue forText;
        Rect rect;
        AutofillValue forText2;
        if (Build.VERSION.SDK_INT >= 26 && needsAutofill()) {
            String str = this.configuration.autofill.uniqueIdentifier;
            autofillId = viewStructure.getAutofillId();
            for (int i11 = 0; i11 < this.autofillConfiguration.size(); i11++) {
                int keyAt = this.autofillConfiguration.keyAt(i11);
                TextInputChannel.Configuration.Autofill autofill = this.autofillConfiguration.valueAt(i11).autofill;
                if (autofill != null) {
                    viewStructure.addChildCount(1);
                    ViewStructure newChild = viewStructure.newChild(i11);
                    newChild.setAutofillId(autofillId, keyAt);
                    String[] strArr = autofill.hints;
                    if (strArr.length > 0) {
                        newChild.setAutofillHints(strArr);
                    }
                    newChild.setAutofillType(1);
                    newChild.setVisibility(0);
                    String str2 = autofill.hintText;
                    if (str2 != null) {
                        newChild.setHint(str2);
                    }
                    if (str.hashCode() == keyAt && (rect = this.lastClientRect) != null) {
                        newChild.setDimens(rect.left, rect.top, 0, 0, rect.width(), this.lastClientRect.height());
                        forText2 = AutofillValue.forText(this.mEditable);
                        newChild.setAutofillValue(forText2);
                    } else {
                        newChild.setDimens(0, 0, 0, 0, 1, 1);
                        forText = AutofillValue.forText(autofill.editState.text);
                        newChild.setAutofillValue(forText);
                    }
                }
            }
        }
    }

    public void sendTextInputAppPrivateCommand(String str, Bundle bundle) {
        this.mImm.sendAppPrivateCommand(this.mView, str, bundle);
    }

    void setTextInputClient(int i10, TextInputChannel.Configuration configuration) {
        TextInputChannel.TextEditState textEditState;
        notifyViewExited();
        this.configuration = configuration;
        this.inputTarget = new InputTarget(InputTarget.Type.FRAMEWORK_CLIENT, i10);
        this.mEditable.removeEditingStateListener(this);
        TextInputChannel.Configuration.Autofill autofill = configuration.autofill;
        if (autofill != null) {
            textEditState = autofill.editState;
        } else {
            textEditState = null;
        }
        this.mEditable = new ListenableEditingState(textEditState, this.mView);
        updateAutofillConfigurationIfNeeded(configuration);
        this.mRestartInputPending = true;
        unlockPlatformViewInputConnection();
        this.lastClientRect = null;
        this.mEditable.addEditingStateListener(this);
    }

    void setTextInputEditingState(View view, TextInputChannel.TextEditState textEditState) {
        TextInputChannel.TextEditState textEditState2;
        if (!this.mRestartInputPending && (textEditState2 = this.mLastKnownFrameworkTextEditingState) != null && textEditState2.hasComposing()) {
            boolean composingChanged = composingChanged(this.mLastKnownFrameworkTextEditingState, textEditState);
            this.mRestartInputPending = composingChanged;
            if (composingChanged) {
                Log.i(TAG, "Composing region changed by the framework. Restarting the input method.");
            }
        }
        this.mLastKnownFrameworkTextEditingState = textEditState;
        this.mEditable.setEditingState(textEditState);
        if (this.mRestartInputPending) {
            this.mImm.restartInput(view);
            this.mRestartInputPending = false;
        }
    }

    void showTextInput(View view) {
        TextInputChannel.InputType inputType;
        TextInputChannel.Configuration configuration = this.configuration;
        if (configuration != null && (inputType = configuration.inputType) != null && inputType.type == TextInputChannel.TextInputType.NONE) {
            hideTextInput(view);
            return;
        }
        view.requestFocus();
        this.mImm.showSoftInput(view, 0);
    }

    public void unlockPlatformViewInputConnection() {
        if (this.inputTarget.type == InputTarget.Type.VIRTUAL_DISPLAY_PLATFORM_VIEW) {
            this.isInputConnectionLocked = false;
        }
    }
}
